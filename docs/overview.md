# cospy-data

Reusable simulation assets for the **Co-Simulation Operating System** ([cospy](https://github.com/sreekants/cospy)).

Maps, weather, traffic and scenario definitions live here so that the engine repository
stays free of binaries. Every asset is addressed by a site path — `<country>/<location>` —
and nothing in this repository imports or depends on engine code, so a scenario can be
re-pointed at a new build without change.

Counts below are measured from the tree, not aspirational.

| | |
|---|---|
| Sites | 23 simulated, 24 mapped |
| Countries | 12 simulated, 13 mapped |
| Map databases | 72 (land · sea · sky per site) |
| Weather databases | 207 (9 types × 23 sites; 18 of them empty placeholders, see [Weather](#weather)) |
| Vessels | 34 per site |
| Trip files | 249, plus 46 formation files |
| Regulation automata | 48 COLREG, plus local rules for Istanbul |
| Asset size | 28 MB (working files excluded, see [Layout](#layout)) |

Measured 2026-09-27.

---

## Layout

```
config/
  map/<cc>/<loc>/            land.s3db · sea.s3db · sky.s3db
  weather/<cc>/<loc>/<type>/ environment.s3db
  weather/profiles.yaml      generator profiles, climate zones, field layout
  simulation/<cc>/<loc>/     cos.ini · location.yaml · rules.yaml · risk.yaml · vessel.s3db
                             trip/*.csv · formation/*.csv
  vehicle/ship/              six ship models
  maritime/regulation/       Legata automata
  risk/                      Bayesian networks and their bindings
  examiner/                  zone rules and penalty scorecard
  data/                      OLAP schema — facts, dimensions, cube
.claude/skills/              generators: mapgen · shipgen · shiprepair · weathergen
```

`location.yaml` names the site and its fallback seabed depth; without it the examiners do not
load and the simulation never ticks. `formation/` holds the fleet membership files.

Working files are not assets and are not committed: `config/.mapgen/` (map-build inputs and
renders), `config/.shipgen/` (traffic-repair runs, state, log and backups),
`config/data/maritime.workingset.s3db` (the database a run writes) and `build/`.

## Countries and sites

Pictures of each site are in the [location gallery](gallery.md).

| Country | Sites |
|---|---|
| `no` Norway | Ålesund · Bergen · Oslo · Tautra · Trondheim |
| `tk` Türkiye | Istanbul · Kandilli · Kavak · Kavak–Kandilli · Türkeli · Çanakkale |
| `be` Belgium | Antwerp |
| `nl` Netherlands | Rotterdam |
| `de` Germany | Bremen (referenced on Bremerhaven) · Hamburg |
| `dk` Denmark | Copenhagen |
| `es` Spain | Barcelona · Valencia |
| `fi` Finland | Helsinki |
| `om` Oman | Hormuz |
| `po` Poland | Gdańsk |
| `sg` Singapore | Singapore |
| `se` Sweden | Stockholm — **map only**, no scenario or weather |
| `global` | Atlantic — open-ocean reference site |

Five of the Turkish sites (all but Çanakkale, on the Dardanelles) are the Istanbul Strait at
four scales: the whole strait, the Kavak–Kandilli reach, and each of Kavak and Kandilli alone. They share a coordinate frame,
so a vessel's track is comparable across them.

## Weather

Nine conditions per site, each a generated force field stored as `environment.s3db`.
Copenhagen and Çanakkale have the nine files but no rows yet: neither is in a climate zone, so
their weather has not been generated.

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

Air temperature depends on the site, not only the condition. Six zones:

| Zone | Sites | Notes |
|---|---|---|
| `nordic` | 5 Norwegian, Helsinki, Gdańsk | hurricane-force winter storms |
| `straits` | Istanbul, Kandilli, Kavak, Kavak–Kandilli, Türkeli | poyraz and lodos gales |
| `tropical` | Hormuz, Singapore | shamal; snow not viable |
| `atlantic` | Atlantic | tropical-track hurricanes |
| `northsea` | Antwerp, Rotterdam, Bremen, Hamburg | winter storms; temperatures proposed |
| `mediterranean` | Barcelona, Valencia | tramontana, DANA, medicanes; temperatures proposed |

Profiles, ranges and the generator settings are in
[`config/weather/profiles.yaml`](../config/weather/profiles.yaml).

## Traffic

34 vessels per site, defined in `simulation/<cc>/<loc>/vessel.s3db` with name, IMO, MMSI,
dimensions, start position, weight, behaviour and settings.

Traffic is composed from two things: a **behaviour class** that decides how a vessel moves,
and a **trip file** that gives it a route. 249 trip files across the sites; a trip is a CSV
of waypoints with speeds and actions, and may loop.

Every site currently carries the same 34-vessel set, first authored for Türkeli. Each site has
its own copy of the trips and formations, repaired for its map by the `shiprepair` skill so
that starts, waypoints and fleet members lie on water. Vessel identity is the IMO: a unique,
checksum-valid 7-digit integer, fleet controllers included.

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

Six ship models in [`config/vehicle/ship/`](../config/vehicle/ship), referenced from a
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

48 Legata automata in [`config/maritime/regulation/colreg/`](../config/maritime/regulation/colreg):

- **41 COLREG rules**, `Rule1.legata` … `Rule41.legata`.
- **Three practice sets** — `practice.navigation`, `practice.sailing`, `practice.steering`
  — for good-seamanship expectations that are not numbered rules.
- **Three situation sets** — `situation.traffic`, `situation.visibility`,
  `situation.weather` — which classify the circumstances a rule is read against.
- `test.legata` for the parser test suite.

Loaded through four manifests: `rules.colreg.yaml` (42 modules), `rules.examiner.yaml`
(17 concern examiners), `rules.risk.yaml`, and `rules.mass.yaml`.

Jurisdictional overrides are per site: every one of the 23 sites carries its own
`rules.yaml` for local rules and `risk.yaml` for its loss matrix. The eight sites whose
`risk.yaml` had no concern `weights` (the six added on 2026-09-27, Copenhagen and Çanakkale)
now use Trondheim's, with equal weights pending expert values. Zone-local limits —
speed, overtaking, restricted cargo, under-keel margins — and the penalty scorecard are in
[`config/examiner/zones.yaml`](../config/examiner/zones.yaml).

### Risk models

[`config/risk/`](../config/risk) carries the Bayesian networks and their bindings:

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

15 088 sea polygons across all sites, by zone type:

| Type | Count | | Type | Count |
|---|---|---|---|---|
| `SHELF_PLAIN` (depth bands) | 10 094 | | `TRAFFIC_SEPARATION_SCHEME` | 36 |
| `FJORD` (depth bands) | 4 414 | | `TERRITORIAL_SEA` | 23 |
| `HARBOUR` | 287 | | `STRANDFLAT` | 12 |
| `WATERWAY` | 94 | | `CONTIGUOUS_ZONE` | 6 |
| `INTERNAL_WATERS` | 70 | | `SEPARATION_ZONE` | 6 |
| `AREA_TO_AVOID` | 38 | | `EXCLUSIVE_ECONOMIC_ZONE` | 4 |
| | | | `PRECAUTIONARY_AREA` | 4 |

Plus 1 115 land polygons.

Two kinds of map:

- **Built from open data** by the `mapgen` skill: OpenStreetMap coastline, seamarks and inland
  water, GMRT bathymetry and Marine Regions zones, in UTM at a real scale (10–100 m per map
  unit, recorded in `land.s3db`). Every site except the five Istanbul Strait sites and the
  Atlantic. The maps built since 2026-09-25 (Antwerp, Bremen, Hamburg, Copenhagen, Barcelona,
  Valencia, Helsinki, Rotterdam, Ålesund, Gdańsk, Stockholm, Çanakkale) have a site file in
  `.claude/skills/mapgen/sites/`, so they can be rebuilt; the older ones do not.
- **Hand-drawn** at 1 m per unit: the Istanbul Strait sites carry only a few shapes, and the
  Atlantic none.

The engine's grounding and berthing examiners read depth from these polygons; where no shape
reports one, `location.yaml`'s `depth.nominal` applies.

## Data schema

[`config/data/`](../config/data) holds the OLAP definitions the simulation writes into:
`maritime.xml` (the generated fact and dimension schema, parsed at startup to build
the write partitions), `facts.csv`, `dimensions.csv`, `cube.csv` and `enumeration.csv`,
with `maritime.sql` and the seed databases.

`maritime.xml` is what the engine reads. The CSVs are the only source of the schema: `maritime.xml`,
`maritime.sql` and `maritime.s3db` are generated from them with `cubegen` (the `cubegen` skill) and
are never edited by hand. Editing a CSV has no runtime effect until the schema is regenerated.

## Using a site

A scenario is addressed by country, location, weather and traffic. The engine's
`ScenarioGenerator` sweeps those dimensions and the templates resolve
`$(MAP)`, `$(SIMULATION)`, `$(WEATHER)` and `$(TRAFFIC)` against the paths above, so
adding a site is a matter of creating the three directories and their databases.

## Generators

The procedures that build and repair the assets live in this repository as Claude Code skills,
one folder each under [`.claude/skills/`](../.claude/skills). They moved here from the engine's
`tools/mapping/`, which was a temporary staging area.

| Skill | Builds | Scripts |
|---|---|---|
| `mapgen` | `map/<cc>/<loc>/` from open data, then validates and renders it | `build_site.py`, `sites/*.json` |
| `shipgen` | a site's traffic: vessels, trips, formations, traffic levels | `fix_identity.py` |
| `shiprepair` | repairs traffic copied from another site until every vessel moves in a headless run | `phase.py` |
| `weathergen` | `weather/<cc>/<loc>/<type>/`, then validates and checks it headless | `weathergen.py`, `validate_weather.py`, `check_weather.py` |
| `cubegen` | `data/maritime.xml`, `.sql` and `.s3db` from the schema CSVs, checked in a scratch folder and installed into both `config/data` copies | `schemagen.py` |

The scripts need the engine checkout for its Python environment; set `COSPY` to its path.

## Additions of 2026-09-27

- **Six sites**: Antwerp, Rotterdam, Bremen, Hamburg, Barcelona, Valencia. Each has a map
  built from open data, the 34-vessel traffic repaired for its map, all nine weather types,
  a `location.yaml` and a `risk.yaml` with concern weights. Rotterdam and Antwerp include
  river and dock water from OpenStreetMap; Hamburg is river only, so its depth is a nominal
  15 m set in its site file.
- **Two climate zones**, `northsea` and `mediterranean`, with proposed temperatures.
- **`location.yaml` and trip and formation copies** for every site, and `risk.yaml` weights
  for the eight sites that lacked them.
- **Generators moved** into `.claude/skills/`.

Open:

- **Rotterdam traffic**: FLEET102–109 do not move. Their fleets were spread across
  disconnected water, so the swarm cannot form; the members need placing together in the
  main water body.
- **Copenhagen and Çanakkale weather**: empty until each is assigned a climate zone.
- **None of the above is committed yet.**
