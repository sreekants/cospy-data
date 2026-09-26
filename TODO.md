# Data updates — TODO

Outstanding changes to maps, vessels, trips, weather, risk and schema data. Each item names the
ticket that owns it in `cospy/bugs/`, where there is one. Items marked **untracked** were found
while working on another ticket and have no ticket of their own.

Measured 2026-09-26 against this tree (`90d211a` plus working changes) and the `cospy` checkout.

---

## 1. Vessels

- [ ] **Vessels spawning on land** (untracked; found by the COS.012 spawn check). Point-in-polygon
      against each site's `land.s3db`, fleet controllers excluded:

      | Site | On land | Vessels |
      |---|---|---|
      | `fi/helsinki` | 24 | TRUE NORTH, ORANGE PHOENIX, X100–X109, X200–X203, FLEET100–FLEET107 |
      | `no/alesund` | 7 | BERGE DAISEN, X200–X203, FLEET103, FLEET104 |
      | `po/gdansk` | 6 | X200–X203, FLEET103, FLEET104 |
      | `no/trondheim` | 2 | MSC NICOLA MASTRO, BERGE DAISEN |
      | `no/bergen` | 1 | MSC NICOLA MASTRO |
      | `no/oslo` | 1 | MSC NICOLA MASTRO |
      | `sg/singapore` | 1 | ORANGE PHOENIX |
      | `tk/kandilli` | 1 | BERGE ZUGSPITZE |
      | `tk/kavak-kandilli` | 1 | BERGE ZUGSPITZE |

      Most still carry their Türkeli coordinates. Place each on water in its own site's map.
- [ ] **Brownian `zone=` rectangles** — [COS.030](../cospy/bugs/COS.030.md). Both rectangles leave
      `map.bounds` in every location, Türkeli included, and are mostly land in several. Re-fit
      them per location from that location's main water body (COS-030-03).
- [ ] **Traffic levels** — [COS.010](../cospy/bugs/COS.010.md). Author a distinct
      traffic-tagged vessel set per `TRAFFIC` level for each in-scope location, Istanbul first if
      it is the P3 case study. Decide whether `ctz`, `vdta` and `seasonal` stay as levels, and
      whether `fleet` is swept.
- [ ] **Vessel identity** — [COS.029](../cospy/bugs/COS.029.md). Confirm every location still
      has a unique, checksum-valid IMO, MMSI and guid per vessel after the edits above.

## 2. Trips

- [ ] **Speeds in knots** — [REQ.033](../cospy/bugs/REQ.033.md). Migrate every trip file:
      waypoint `sog`, velocity-schedule `dx,dy`, and the `fishing(…|sog)` argument (REQ-033-07).
- [ ] **Trips borrowed from another site** (untracked). Vessels whose `pathfile=` points into a
      different site's `trip/` folder, so their route belongs to another map:

      | Site | Vessels | Site | Vessels |
      |---|---|---|---|
      | `fi/helsinki` | 8 | `om/hormuz` | 8 |
      | `global/atlantic` | 8 | `po/gdansk` | 8 |
      | `no/alesund` | 7 | `sg/singapore` | 4 |
      | `no/bergen` | 2 | `tk/istanbul` | 8 |
      | `no/oslo` | 2 | `tk/kandilli` | 2 |
      | `no/trondheim` | 2 | `tk/kavak` | 7 |
      | `tk/kavak-kandilli` | 2 | | |

      Give each site its own trips, drawn on its own water.

## 3. Weather

- [ ] **Weather levels** — [COS.010](../cospy/bugs/COS.010.md). Author distinct weather
      databases per `WEATHER` level, or drop the levels that have none.

## 4. Sites and maps

- [ ] **`se/stockholm` has a map but no simulation** (untracked). Add
      `config/simulation/se/stockholm/` (`cos.ini`, `rules.yaml`, `risk.yaml`, `vessel.s3db`,
      `trip/`) and its nine weather databases, or record that it is map-only.
- [ ] **`dk/copenhagen` and `tk/canakkale` `risk.yaml` lack a `weights:` block** (untracked).
      `ConcernWeights` needs one per territory; `test_ConcernWeights` fails on both.

## 5. Examiner configuration

- [ ] **Zone rules** — [COS.013](../cospy/bugs/COS.013.md). Record a source for every value in
      `config/examiner/zones.yaml`, and move the Istanbul-specific rules out of the generic
      file so other sites do not apply them.

## 6. Schema (`config/data`)

- [ ] **Two schemas** — [COS.028](../cospy/bugs/COS.028.md). This tree's `maritime.xml` does not
      declare `fact_rw` or `fact_rb`. Reconcile it with `cospy`'s and decide which tree is
      authoritative.
- [ ] **`imo` columns missing in `cospy`** — [COS.029](../cospy/bugs/COS.029.md). `cospy`'s
      `maritime.xml` and `maritime.s3db` lack `imo` on `fact_concern`, `fact_rb`, `fact_rw` and
      `fact_risk_assessment`, so every risk row is rejected. Merge from the `G:` tree, keeping
      `individual_risk` (REQ.020), which the `G:` tree lacks.
- [ ] **Stale sweep schema** — [COS.031](../cospy/bugs/COS.031.md). `scenarios/config/data`
      carries a pre-PLAN-E1 schema; a sweep from it drops `Rw`, `Rb`, `fact_under_test` and
      `individual_risk`.

## 7. Risk model

- [ ] **ASV risk network CPTs** — [REQ.001](../cospy/bugs/REQ.001.md). The placeholder CPT gives
      P(fatality) = 0.001 even when nobody is exposed.
- [ ] **Capsize network CPTs** — [REQ.002](../cospy/bugs/REQ.002.md).
