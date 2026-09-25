# cospy-data

Reusable simulation assets for the **Co-Simulation Operating System** ([cospy](../cospy)).

Maps, weather, traffic and scenario definitions live here so that the engine repository
stays free of binaries. Every asset is addressed by a site path — `<country>/<location>` —
and nothing in this repository imports or depends on engine code, so a scenario can be
re-pointed at a new build without change.

Counts below are measured from the tree, not aspirational.

| | |
|---|---|
| Sites | 15 simulated, 16 mapped |
| Countries | 8 |
| Map databases | 51 (land · sea · sky per site) |
| Weather databases | 135 (9 types × 15 sites) |
| Vessels | 34 per site |
| Trip files | 99 |
| Regulation automata | 48 |
| Repository size | 14 MB |

---

## Layout

```
config/
  map/<cc>/<loc>/            land.s3db · sea.s3db · sky.s3db
  weather/<cc>/<loc>/<type>/ environment.s3db
  weather/profiles.yaml      generator profiles, climate zones, field layout
  simulation/<cc>/<loc>/     cos.ini · rules.yaml · risk.yaml · vessel.s3db · trip/*.csv
  vehicle/ship/              six ship models
  maritime/regulation/       Legata automata
  risk/                      Bayesian networks and their bindings
  examiner/                  zone rules and penalty scorecard
  data/                      OLAP schema — facts, dimensions, cube
```

## Countries and sites

| Country | Sites |
|---|---|
| `no` Norway | Ålesund · Bergen · Oslo · Tautra · Trondheim |
| `tk` Türkiye | Istanbul · Kandilli · Kavak · Kavak–Kandilli · Türkeli |
| `fi` Finland | Helsinki |
| `om` Oman | Hormuz |
| `po` Poland | Gdańsk |
| `sg` Singapore | Singapore |
| `se` Sweden | Stockholm — **map only**, no scenario or weather |
| `global` | Atlantic — open-ocean reference site |

The five Turkish sites are the Istanbul Strait at four scales: the whole strait, the
Kavak–Kandilli reach, and each of Kavak and Kandilli alone. They share a coordinate frame,
so a vessel's track is comparable across them.

## Weather

Nine conditions per site, each a generated force field stored as `environment.s3db`.

| Type | Wind m/s | Waves Hs m | Visibility nm | Capsize band |
|---|---|---|---|---|
| `clearsky` | calm | — | 10–20 | calm |
| `cloudy` | — | — | 5–10 | calm |
| `foggy` | — | — | 0.03–0.5 | calm |
| `lightrain` | 3–8 | 0.5–1.2 | 2–5 | calm |
| `heavyrain` | 8–14 | 1.3–2.4 | 0.5–1.5 | moderate |
| `snow` | — | — | 0.2–2 | calm |
| `wind` | 14–20 | 2.5–4 | 5+ | severe |
| `highsea` | 17–24 | 4–6 | 2–5 | severe |
| `hurricane` | ≥ 33 | 9–14 | < 0.5 | severe |

Units are physical throughout — wind and current in m/s, waves as significant height Hs in
metres, visibility in nautical miles, precipitation in mm/h water-equivalent.

Each field carries three elements: **sea current**, **wind current** and **sea wave**,
sampled on an 8 × 6 grid with land removed, with the current setting 20° to the right of
the prevailing wind and a 15° per-sample jitter.

**Capsize band** ties each condition to the wave-height bands in
`config/risk/capsize.model.yaml`, so weather selection and the capsize network cannot drift
apart.

### Climate zones

Air temperature depends on the site, not only the condition. Four zones:

| Zone | Sites | Notes |
|---|---|---|
| `nordic` | 5 Norwegian, Helsinki, Gdańsk | hurricane-force winter storms |
| `straits` | 5 Turkish | poyraz and lodos gales |
| `tropical` | Hormuz, Singapore | shamal; snow not viable |
| `atlantic` | Atlantic | tropical-track hurricanes |

Profiles, ranges and the generator settings are in
[`config/weather/profiles.yaml`](config/weather/profiles.yaml).

## Traffic

34 vessels per site, defined in `simulation/<cc>/<loc>/vessel.s3db` with name, IMO, MMSI,
dimensions, start position, weight, behaviour and settings.

Traffic is composed from two things: a **behaviour class** that decides how a vessel moves,
and a **trip file** that gives it a route. 99 trip files across the sites; a trip is a CSV
of waypoints with speeds and actions, and may loop.

| Behaviour | Typical use |
|---|---|
| `ContainerShip` | planned transit on a trip file |
| `Ferry` | scheduled crossing, often with delay offsets |
| `FishingVessel` | working pattern, restricted ability to manoeuvre |
| `NavalFleet` | fleet formation |
| `Motorboat`, `Yacht`, `SailingVessel` | small craft |
| `RestrictedAbilityManeuver` | constrained-by-draught and similar states |
| `BrownianMotionBehavior` | unplanned background traffic |

A typical site mixes a dozen planned vessels with background traffic.

## Vehicles

Six ship models in [`config/vehicle/ship/`](config/vehicle/ship), referenced from a
vessel's `ship.model=` setting.

| Model | Type | Relative size |
|---|---|---|
| `container.yaml` | container | large |
| `ferry.yaml` | ferry | medium |
| `yacht.yaml` | yacht | medium |
| `motorboat.yaml` | motorboat | small |
| `simple.yaml` | yacht | small |
| `fishingvessel.yaml` | fishing | tiny |

Each model declares five blocks:

- **`hydrodynamics`** — initial north/east, yaw and yaw reference, speed and speed
  reference, yaw rate, integration step `dt`.
- **`physics`** — mass, linear damping coefficient, length, width, draft, momentum,
  relative size.
- **`maneuverability`** — maximum yaw rate and speed per timestep.
- **`behavior`** — separation and tolerance thresholds for traffic separation schemes,
  overtaking and crossing; observation, ample-time and safety ranges; whether the vessel
  stops for traffic.
- **`cargo`** — a declaration keyed to the regulatory instruments that govern it: SOLAS,
  MARPOL, the IMDG Code and the IMSBC Code. Flags cover flammable, refrigerated,
  livestock, biohazard, heavy lift, hazardous, bulk solid, bulk liquid, liquid gas,
  containerised and general cargo, plus `humans_present`.

`cargo` is what the concern examiners read for restricted-payload checks, and
`humans_present` feeds the exposure node of the risk network.

### Equipment profiles

Devices are attached per model under `devices:`, each naming a driver and its arguments:

```yaml
devices:
     - name: Radar
       driver: maritime.device.communication.Radar
       args: sample.frequency=1
```

All six models currently carry **Radar** only. The engine provides six drivers —
`AIS`, `GPS`, `GyroCompass`, `MagneticCompass`, `Radar`, `SingleBeamEchosounder` — so
the remaining five are available to any model that declares them.

### Physics models

Selected per vessel through its `behavior` column. The engine provides:

| Model | Character |
|---|---|
| `BasicHydrodynamicBehavior` | hydrodynamic, uses the `hydrodynamics` and `physics` blocks |
| `LinearMotionBehavior` | constant-velocity |
| `PathFollowingMotionBehavior` | tracks a trip file |
| `PathMotionBehavior` | waypoint-to-waypoint |
| `BrownianMotionBehavior` | random walk, for background traffic |

`HydrodynamicModel` and `VesselModel` carry the shared state these build on.

### Swarm behaviours

For fleet and multi-agent scenarios: `Boid`, `Swarm`, `Predator` and `Prey`, with
`FleetBehavior`, `PredatorBehavior` and `PreyBehavior` as the motion-side counterparts.
`NavalFleet` is the vessel-level behaviour that uses them.

## Regulations

48 Legata automata in [`config/maritime/regulation/colreg/`](config/maritime/regulation/colreg):

- **41 COLREG rules**, `Rule1.legata` … `Rule41.legata`.
- **Three practice sets** — `practice.navigation`, `practice.sailing`, `practice.steering`
  — for good-seamanship expectations that are not numbered rules.
- **Three situation sets** — `situation.traffic`, `situation.visibility`,
  `situation.weather` — which classify the circumstances a rule is read against.
- `test.legata` for the parser test suite.

Loaded through four manifests: `rules.colreg.yaml` (42 modules), `rules.examiner.yaml`
(17 concern examiners), `rules.risk.yaml`, and `rules.mass.yaml`.

Jurisdictional overrides are per site: every one of the 15 sites carries its own
`rules.yaml` for local rules and `risk.yaml` for its loss matrix. Zone-local limits —
speed, overtaking, restricted cargo, under-keel margins — and the penalty scorecard are in
[`config/examiner/zones.yaml`](config/examiner/zones.yaml).

### Risk models

[`config/risk/`](config/risk) carries the Bayesian networks and their bindings:

- `risk.model.xdsl` — the ASV consequence network, 30 nodes and 33 arcs, after
  Kristensen et al. (2025) Fig. 2. `risk.model.yaml` binds simulation terms to its input
  nodes in situation-gated groups; `risk.model.md` is the generated documentation and
  `risk.model.labels.json` the node captions.
- `capsize.model.xdsl` — a 6-node capsize network over sea state, visibility, payload and
  hull size, with state boundaries in `capsize.model.yaml`.
- `asv.model.yaml` — ASV parameters.

## Maps

Three databases per site. `sea.s3db` holds depth contours and jurisdictional and traffic
zones as polygons; `land.s3db` the coastline; `sky.s3db` the overhead layer.

3 358 sea polygons across all sites, by zone type:

| Type | Count | | Type | Count |
|---|---|---|---|---|
| `FJORD` | 3 141 | | `TRAFFIC_SEPARATION_SCHEME` | 16 |
| `WATERWAY` | 70 | | `STRANDFLAT` | 14 |
| `INTERNAL_WATERS` | 56 | | `TERRITORIAL_SEA` | 13 |
| `HARBOUR` | 39 | | `CONTIGUOUS_ZONE` | 4 |
| `SEPARATION_ZONE` | 2 | | `EXCLUSIVE_ECONOMIC_ZONE` | 1 |
| `PRECAUTIONARY_AREA` | 1 | | `AREA_TO_AVOID` | 1 |

Plus 164 land polygons.

Coverage is uneven by design — Bergen carries 1 442 polygons and Helsinki, Gdańsk and
Stockholm none yet, so those three are frames without bathymetry. The engine's grounding
and berthing examiners read `Sea.nominal_depth` from these polygons, so a site with no sea
shapes cannot produce a depth-based finding.

## Data schema

[`config/data/`](config/data) holds the OLAP definitions the simulation writes into:
`maritime.xml` (the authoritative fact and dimension schema, parsed at startup to build
the write partitions), `facts.csv`, `dimensions.csv`, `cube.csv` and `enumeration.csv`,
with `maritime.sql` and the seed databases.

`maritime.xml` is what the engine reads. The CSVs are the generator's inputs; editing them
alone has no runtime effect.

## Using a site

A scenario is addressed by country, location, weather and traffic. The engine's
`ScenarioGenerator` sweeps those dimensions and the templates resolve
`$(MAP)`, `$(SIMULATION)`, `$(WEATHER)` and `$(TRAFFIC)` against the paths above, so
adding a site is a matter of creating the three directories and their databases.

Map and weather generation procedures are documented in the engine repository under
`tools/mapping/`.
