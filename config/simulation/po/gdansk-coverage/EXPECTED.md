# Gdansk coverage run — expected findings

Local test only; not for check-in. Run with `sim.sh gdansk-coverage` (from `cos-data`).
Case A: `WEATHER=foggy` (as committed here). Case B: set `WEATHER=clearsky` in `cos.ini` and rerun.
Run at least 2,300 simulated seconds (True North's lap is 2,178 s). Map cells are 50 m; the
passing distance (100 m) is 2 cells; an encounter needs DCPA < 500 m (10 cells) inside 4 km.

## Setup

| Item | Value |
|---|---|
| Map and weather | `po/gdansk` (`LOCATION` stays `gdansk`) |
| Local rules | `po/gdansk/rule/tss.legata`, `zones.legata` (unchanged) |
| Vessels under test | True North (IMO 2389929), BERGE ODEL (IMO 3240845) |
| Targets (not judged) | ORANGE PHOENIX, ARIADNE, MSC NICOLA MASTRO, BERGE ZUGSPITZE, TRUE NORTH, BERGE DAISEN |
| Disabled (`enabled=0`) | Every other vessel: walkers X100–X203, fleet AUVs, patrols, ferries not scripted |
| True North route | `trip/container.coverage.csv`: copy of `container.csv` with two fixes (waypoint 49 joins Northbound.6 at 310° instead of 320°; the NortheastBound.7 → SouthwestBound.8 turn goes round the lane ends). The original breaches Rule 10(b)(i) three times |

## Encounters with True North (COLREG)

Times are True North's planned times from start; targets wait at their first waypoint until `delay`.

| # | Target | Where, True North time | Geometry (planned) | Case B (clear) | Case A (fog) adds |
|---|---|---|---|---|---|
| E3a | ORANGE PHOENIX | SouthwestBound.3, t ≈ 116 | Crossing from True North's starboard; True North crosses ahead, CPA 5.7 cells (285 m) | `COLREG.Rule15/CrossAstern` ×1 | `COLREG.Rule19.e` ×1 (0.47 nm cell) |
| E3b | ARIADNE | NortheastBound.4, t ≈ 333 | Crossing from starboard; target crosses first, True North passes astern, CPA 5.0 cells | none | `Rule19.e` ×1 |
| E1a | MSC NICOLA MASTRO | Northbound.6, t ≈ 734 | True North overtakes a 0.5-speed target, CPA 1.0 cell (50 m) | `COLREG.Rule13.a` ×1 | `Rule19.e` ×1 (0.03 nm cell) |
| E1b | BERGE ZUGSPITZE | Southbound.5, t ≈ 1253 | Overtakes, CPA 3.8 cells (190 m) | none | `Rule19.e` ×1 |
| E2a | TRUE NORTH | NortheastBound.7, t ≈ 1740 | Head-on, reciprocal, passes starboard to starboard at 2 cells | `COLREG.Rule14.a` ×1 | `Rule19.e` ×1 |
| E2b | BERGE DAISEN | SouthwestBound.8, t ≈ 1900 | Head-on, passes port to port at 2 cells | none | none (nearest weather cell is 6.95 nm) |

Rule 19(e) fires only if True North does not slow after onset; its proximity slow-down can make it
compliant. Rule 19(b) cannot fire (no ship model has a service speed).

## BERGE ODEL (local rules, zones, cargo)

| Leg | Expected |
|---|---|
| Starts in the contiguous zone (960, 30), into the territorial sea | Risk rows move high seas → territorial waters |
| Crosses Northbound.6 heading 180° | none (right-angle crossing) |
| Enters SeparationZone.1 (786, 150) | `Gdansk.TSS.SeparationZone.1.Entry` |
| Crosses into Southbound.5, then heads north | `Gdansk.TSS.Southbound.5.Direction` |
| Anchors 60 s in Southbound.5 (740, 130) | `Gdansk.TSS.Southbound.5.NoAnchoring` |
| North of the lanes, then west at y ≈ 65–70 | `Gdansk.MilitaryArea.Strefa11.NoEntry` |
| South between Strefa14 and SouthwestBound.8, anchors 120 s in Anchorage.1 (278, 556) | none (anchoring allowed); risk rows internal waters |
| Through AreaToAvoid.3 (around 307, 681) | `Gdansk.AreaToAvoid.3.NoEntry`; `cargo.restricted` ×1 (carries `explosive`) |
| Slow approach, berths in Harbour.20 (367, 763) | `cargo.restricted` ×1 on harbour entry; risk rows port; observe any `berthing.*` |

## Both vessels

| Check | Case A (fog) | Case B (clear) |
|---|---|---|
| `COLREG.Rule35.a` | Recurs for both while under way in fog (no fog signal can be sounded, and findings re-score: COS.044); count episodes, not rows | none |
| Rules 12, 18 | none (no sailing vessel; no fishing, NUC or RAM state) | none |
| Rules 16, 17 | not judged | not judged |
| Findings on any vessel not under test | none | none |
| Grounding, speed, collision-cost findings | observe and list | observe and list |

## Tolerance

Overtaking and head-on encounters keep their passing distance whatever the timing. The two
crossings depend on True North reaching the meeting point on time (about ±6 s for E3a, ±5 s for
E3b). If a crossing misses, read True North's time at that point from the run and shift the
target's `delay` by the difference.
