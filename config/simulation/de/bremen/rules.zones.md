# Restricted and regulated sea zones – Bremen / Bremerhaven

**Location:** `de/bremen`  
**Compiled:** 2026-10-05, from the web sources listed below. Check current Notices to Mariners and national charts before relying on positions or rules.

## Zones and rules found

| Zone | Kind | Rule |
|---|---|---|
| Lower Saxony Wadden Sea National Park | National park | New rules replace the old Zone I (quiet zone) and Zone II with "General" and "Special Protection Areas". From 15 April to 1 October, Special Protection Areas may be entered only along designated fairways. |
| Jade–Weser shipping lane and TSS | Exclusion from the World Heritage site | The main lane of the Jade–Weser approach and the TSS are excluded from the Wadden Sea World Heritage site. |

**Gaps:** No military firing ranges were found.

## Zones in the map (`config/map/de/bremen/sea.s3db`)

- map.source.zones: Marine Regions (VLIZ) eez_internal_waters, eez_12nm, eez_24nm, eez for DEU, belts minus inner belts, each map cell to the nearest belt of any country (outlines carry no coastline), CC-BY 4.0
- map.source.fairway: OpenStreetMap seamark:type=fairway (closed ways and relations), ODbL
- map.source.harbour: OpenStreetMap seamark harbour/harbour_basin +100 m and landuse=port|harbour +500 m, clipped to water, ODbL
- map.source.restricted: OpenStreetMap seamark restricted_area (every restriction and category; recreation areas left out), military_area, anchorage, precautionary_area, ODbL; classified by mapgen zones.py

Zone shapes other than the TSS (see `rules.tss.md`), in map cells, with the settings the local rules read:

| Zone | Type | x | y | Settings |
|---|---|---|---|---|
| `Germany.InternalWaters.1` | Internal waters (204000) | 0–1000 | 0–1000 |  |
| `Bremen.Harbour.1` | Harbour (301000) | 69–81 | 116–124 |  |
| `Bremen.Harbour.2` | Harbour (301000) | 67–69 | 121–123 |  |
| `Bremen.Harbour.3` | Harbour (301000) | 849–852 | 226–230 |  |
| `Bremen.Harbour.4` | Harbour (301000) | 846–849 | 230–231 |  |
| `Bremen.Harbour.5` | Harbour (301000) | 870–960 | 348–491 |  |
| `Bremen.Harbour.6` | Harbour (301000) | 275–292 | 348–400 |  |
| `Bremen.Harbour.7` | Harbour (301000) | 268–286 | 400–408 |  |
| `Bremen.Harbour.8` | Harbour (301000) | 261–274 | 350–355 |  |
| `Bremen.Harbour.9` | Harbour (301000) | 292–294 | 557–560 |  |
| `Bremen.Harbour.10` | Harbour (301000) | 288–291 | 556–559 |  |
| `Bremen.Harbour.11` | Harbour (301000) | 957–971 | 450–475 |  |
| `Bremen.Harbour.12` | Harbour (301000) | 970–978 | 498–512 |  |
| `Bremen.Harbour.13` | Harbour (301000) | 977–981 | 513–518 |  |
| `Bremen.PrecautionaryArea.1.1` | Precautionary / restricted area (310000) | 681–759 | 141–190 | restriction=no_anchoring,no_fishing |
| `Bremen.AreaToAvoid.1.1` | Area to avoid (311000) | 980–987 | 535–541 | restriction=no_entry |
| `Bremen.Anchorage.1.1` | Anchorage (312000) | 436–508 | 1–50 |  |
| `Bremen.Anchorage.VoslappReedeMitte.1` | Anchorage (312000) | 297–329 | 322–369 |  |
| `Bremen.Anchorage.VoslappReedeNord.1` | Anchorage (312000) | 288–319 | 284–327 |  |
| `Bremen.Anchorage.VoslappReedeSud.1` | Anchorage (312000) | 307–334 | 364–412 |  |
| `Bremen.Anchorage.5.1` | Anchorage (312000) | 137–175 | 94–163 |  |
| `Bremen.Anchorage.6.1` | Anchorage (312000) | 132–158 | 67–97 |  |
| `Bremen.Anchorage.7.1` | Anchorage (312000) | 151–178 | 0–63 |  |
| `Bremen.Anchorage.8.1` | Anchorage (312000) | 123–150 | 22–72 |  |
| `Bremen.Anchorage.9.1` | Anchorage (312000) | 325–342 | 507–550 |  |
| `Bremen.Anchorage.BlexenReede.1` | Anchorage (312000) | 922–977 | 564–607 |  |
| `Bremen.Anchorage.NordenhamReede.1` | Anchorage (312000) | 835–845 | 691–721 | category=deep_water |
| `Bremen.NatureReserve.1.1` | Nature reserve (314000) | 392–430 | 434–553 | restriction=no_entry category=nature_reserve |
| `Bremen.NatureReserve.2.1` | Nature reserve (314000) | 589–692 | 9–142 | restriction=no_entry category=nature_reserve |
| `Bremen.NatureReserve.3.1` | Nature reserve (314000) | 335–411 | 711–783 | restriction=no_entry category=nature_reserve |
| `Bremen.NatureReserve.4.1` | Nature reserve (314000) | 610–693 | 126–238 | restriction=no_entry category=nature_reserve |
| `Bremen.NatureReserve.9.1` | Nature reserve (314000) | 808–874 | 0–231 | restriction=no_entry category=nature_reserve |
| `Bremen.NatureReserve.11.1` | Nature reserve (314000) | 75–120 | 129–216 | restriction=no_entry category=nature_reserve |
| `Bremen.NatureReserve.12.1` | Nature reserve (314000) | 0–76 | 6–46 | restriction=no_entry category=nature_reserve |
| `Bremen.NatureReserve.14.1` | Nature reserve (314000) | 671–886 | 412–499 | restriction=no_entry category=nature_reserve |
| `Bremen.NatureReserve.14.2` | Nature reserve (314000) | 884–938 | 477–532 | restriction=no_entry category=nature_reserve |
| `Bremen.NatureReserve.15.1` | Nature reserve (314000) | 466–612 | 289–348 | restriction=no_entry category=nature_reserve |
| `Bremen.NatureReserve.16.1` | Nature reserve (314000) | 261–520 | 748–919 | restriction=no_entry category=nature_reserve |
| `Bremen.NatureReserve.17.1` | Nature reserve (314000) | 129–207 | 615–785 | restriction=no_entry category=nature_reserve |
| `Bremen.NatureReserve.18.1` | Nature reserve (314000) | 500–554 | 565–796 | restriction=no_entry category=nature_reserve |
| `Bremen.NatureReserve.RuhezoneI31.1` | Nature reserve (314000) | 0–32 | 0–38 | restriction=restricted_entry category=nature_reserve |
| `Bremen.NatureReserve.RuhezoneI35.1` | Nature reserve (314000) | 150–185 | 176–229 | restriction=restricted_entry category=nature_reserve |
| `Bremen.NatureReserve.RuhezoneI3523.1` | Nature reserve (314000) | 79–149 | 127–201 | restriction=restricted_entry category=nature_reserve |
| `Bremen.NatureReserve.RuhezoneI36.1` | Nature reserve (314000) | 129–269 | 614–785 | restriction=restricted_entry category=nature_reserve |
| `Bremen.NatureReserve.RuhezoneI38.1` | Nature reserve (314000) | 499–553 | 600–796 | restriction=restricted_entry category=nature_reserve |
| `Bremen.NatureReserve.RuhezoneI3626.1` | Nature reserve (314000) | 552–552 | 684–687 | restriction=restricted_entry category=nature_reserve |
| `Bremen.NatureReserve.RuhezoneI3626.2` | Nature reserve (314000) | 242–554 | 565–920 | restriction=restricted_entry category=nature_reserve |
| `Bremen.NatureReserve.RuhezoneI3626.3` | Nature reserve (314000) | 529–537 | 783–789 | restriction=restricted_entry category=nature_reserve |
| `Bremen.NatureReserve.RuhezoneI3626.4` | Nature reserve (314000) | 549–550 | 752–755 | restriction=restricted_entry category=nature_reserve |
| `Bremen.NatureReserve.RuhezoneI3626.5` | Nature reserve (314000) | 552–553 | 710–713 | restriction=restricted_entry category=nature_reserve |
| `Bremen.NatureReserve.RuhezoneI3626.6` | Nature reserve (314000) | 374–375 | 932–934 | restriction=restricted_entry category=nature_reserve |
| `Bremen.NatureReserve.RuhezoneI3626.7` | Nature reserve (314000) | 374–375 | 928–932 | restriction=restricted_entry category=nature_reserve |
| `Bremen.NatureReserve.RuhezoneI3626.8` | Nature reserve (314000) | 362–363 | 918–919 | restriction=restricted_entry category=nature_reserve |
| `Bremen.NatureReserve.RuhezoneI3626.9` | Nature reserve (314000) | 350–351 | 891–895 | restriction=restricted_entry category=nature_reserve |
| `Bremen.NatureReserve.RuhezoneI3626.10` | Nature reserve (314000) | 350–350 | 895–899 | restriction=restricted_entry category=nature_reserve |
| `Bremen.NatureReserve.RuhezoneI3626.11` | Nature reserve (314000) | 351–352 | 901–904 | restriction=restricted_entry category=nature_reserve |
| `Bremen.NatureReserve.RuhezoneI3626.12` | Nature reserve (314000) | 352–353 | 904–908 | restriction=restricted_entry category=nature_reserve |
| `Bremen.NatureReserve.RuhezoneI3626.13` | Nature reserve (314000) | 342–350 | 880–883 | restriction=restricted_entry category=nature_reserve |
| `Bremen.NatureReserve.RuhezoneI3627.1` | Nature reserve (314000) | 368–370 | 936–937 | restriction=restricted_entry category=nature_reserve |
| `Bremen.NatureReserve.RuhezoneI37.1` | Nature reserve (314000) | 301–361 | 593–682 | restriction=restricted_entry category=nature_reserve |
| `Bremen.NatureReserve.RuhezoneI45.1` | Nature reserve (314000) | 854–871 | 12–52 | restriction=restricted_entry category=nature_reserve |
| `Bremen.NatureReserve.RuhezoneI45.2` | Nature reserve (314000) | 871–872 | 7–11 | restriction=restricted_entry category=nature_reserve |
| `Bremen.NatureReserve.RuhezoneI45.3` | Nature reserve (314000) | 873–874 | 0–3 | restriction=restricted_entry category=nature_reserve |
| `Bremen.NatureReserve.RuhezoneI44.1` | Nature reserve (314000) | 734–843 | 101–236 | restriction=restricted_entry category=nature_reserve |
| `Bremen.NatureReserve.RuhezoneI46.1` | Nature reserve (314000) | 589–692 | 9–142 | restriction=restricted_entry category=nature_reserve |
| `Bremen.NatureReserve.RuhezoneI43.1` | Nature reserve (314000) | 805–889 | 477–501 | restriction=restricted_entry category=nature_reserve |
| `Bremen.NatureReserve.RuhezoneI43.2` | Nature reserve (314000) | 883–938 | 478–531 | restriction=restricted_entry category=nature_reserve |
| `Bremen.NatureReserve.RuhezoneI40.1` | Nature reserve (314000) | 626–792 | 180–384 | restriction=restricted_entry category=nature_reserve |
| `Bremen.NatureReserve.RuhezoneI41.1` | Nature reserve (314000) | 634–686 | 303–394 | restriction=restricted_entry category=nature_reserve |
| `Bremen.NatureReserve.RuhezoneI47.1` | Nature reserve (314000) | 665–810 | 0–53 | restriction=restricted_entry category=nature_reserve |
| `Bremen.NatureReserve.RuhezoneI42.1` | Nature reserve (314000) | 666–762 | 402–446 | restriction=restricted_entry category=nature_reserve |
| `Bremen.NatureReserve.40.1` | Nature reserve (314000) | 193–521 | 0–361 | restriction=no_entry category=nature_reserve |
| `Bremen.NatureReserve.42.1` | Nature reserve (314000) | 193–629 | 0–379 | restriction=restricted_entry category=nature_reserve |

## Local rules (Legata)

Generated from the zones above by `.claude/skills/mapgen/legata_site.py` (MAPGEN §4.3); regenerate, do not edit.

- `rule/zones.legata`: 16 clauses
- `rule/score.yaml`: scorecard (placeholder penalties)
- `rules.yaml`: `maritime.regulation.internal.ZoneRule` modules

## Sources

- [Yacht.de – New North Sea navigation rules for Wadden Sea sailors](https://www.yacht.de/en/law/new-navigation-rules-in-the-north-sea-what-wadden-sea-sailors-need-to-know/)
- [Yacht.de – North Sea 2: Jade and Weser](https://www.yacht.de/en/travel-and-charter/germany/at-the-start-of-the-season-north-sea-2-jade-and-weser/)
- [UNESCO – Wadden Sea](https://whc.unesco.org/en/list/1314/)
- [UNESCO – Wadden Sea extension](https://whc.unesco.org/document/152339)
