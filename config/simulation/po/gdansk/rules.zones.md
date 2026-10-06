# Restricted and regulated sea zones – Gdańsk

**Location:** `po/gdansk`  
**Compiled:** 2026-10-05, from the web sources listed below. Check current Notices to Mariners and national charts before relying on positions or rules.

## Zones and rules found

| Zone | Kind | Rule |
|---|---|---|
| Zone "15", north of Gdynia | Permanent military exercise zone | Permanently closed to shipping; strictly enforced. |
| Zone "1a", by Kąty Rybackie | Periodic military exercise zone | Closed during exercises. Status is broadcast on VHF 10, 71, 24, 25 and 26. |
| Natura 2000 PLB220005 (40,576 ha) and PLH220032 (21,479 ha) | Bird and habitat protection | Cover the Puck Lagoon, the adjacent Outer Puck Bay and the coastal strip along the southern shore of the Hel Peninsula. |
| Western Gulf of Gdańsk maritime spatial plan | Excluded from common use | Fairways, roadsteads and anchorages (5,317 ha), dumping areas (592 ha) and sand-extraction areas. |
| Gdańsk Bay | Unexploded ordnance | Clearance operations carried out under government security-centre (RCB) warnings. |

**Gaps:** The exercise zones are drawn from OpenStreetMap as military areas (zones 1a, 1b, 2, 3, 4, 5, 11, 14, 15); zones 3 and 14 are closed to fishing only, and the activation of periodic zones is not modelled (always closed).

## Zones in the map (`config/map/po/gdansk/sea.s3db`)

- map.source.zones: Marine Regions (VLIZ) eez_internal_waters, eez_12nm, eez_24nm, eez for POL, belts minus inner belts, each map cell to the nearest belt of any country (outlines carry no coastline), CC-BY 4.0
- map.source.fairway: OpenStreetMap seamark:type=fairway (closed ways and relations), ODbL
- map.source.harbour: OpenStreetMap seamark harbour/harbour_basin +100 m and landuse=port|harbour +500 m, clipped to water, ODbL
- map.source.restricted: OpenStreetMap seamark restricted_area (every restriction and category; recreation areas left out), military_area, anchorage, precautionary_area, ODbL; classified by mapgen zones.py

Zone shapes other than the TSS (see `rules.tss.md`), in map cells, with the settings the local rules read:

| Zone | Type | x | y | Settings |
|---|---|---|---|---|
| `Poland.ContiguousZone.1` | Contiguous zone (202000) | 898–1000 | 0–92 |  |
| `Poland.TerritorialSea.1` | Territorial sea (203000) | 230–1000 | 0–684 |  |
| `Poland.InternalWaters.1` | Internal waters (204000) | 0–1000 | 0–1000 |  |
| `Gdansk.Harbour.1` | Harbour (301000) | 31–38 | 156–160 |  |
| `Gdansk.Harbour.2` | Harbour (301000) | 37–44 | 203–214 |  |
| `Gdansk.Harbour.3` | Harbour (301000) | 81–84 | 294–304 |  |
| `Gdansk.Harbour.4` | Harbour (301000) | 84–87 | 324–329 |  |
| `Gdansk.Harbour.5` | Harbour (301000) | 35–50 | 360–369 |  |
| `Gdansk.Harbour.6` | Harbour (301000) | 81–95 | 361–372 |  |
| `Gdansk.Harbour.7` | Harbour (301000) | 56–73 | 367–377 |  |
| `Gdansk.Harbour.8` | Harbour (301000) | 47–74 | 379–394 |  |
| `Gdansk.Harbour.9` | Harbour (301000) | 77–93 | 384–395 |  |
| `Gdansk.Harbour.10` | Harbour (301000) | 79–87 | 418–423 |  |
| `Gdansk.Harbour.11` | Harbour (301000) | 76–93 | 396–418 |  |
| `Gdansk.Harbour.12` | Harbour (301000) | 105–112 | 572–579 |  |
| `Gdansk.Harbour.13` | Harbour (301000) | 248–258 | 25–37 |  |
| `Gdansk.Harbour.14` | Harbour (301000) | 216–222 | 664–667 |  |
| `Gdansk.Harbour.15` | Harbour (301000) | 214–242 | 667–689 |  |
| `Gdansk.Harbour.16` | Harbour (301000) | 226–250 | 662–680 |  |
| `Gdansk.Harbour.17` | Harbour (301000) | 273–308 | 703–734 |  |
| `Gdansk.Harbour.18` | Harbour (301000) | 353–354 | 761–762 |  |
| `Gdansk.Harbour.19` | Harbour (301000) | 354–356 | 762–764 |  |
| `Gdansk.Harbour.20` | Harbour (301000) | 360–369 | 759–767 |  |
| `Gdansk.Harbour.21` | Harbour (301000) | 356–360 | 763–764 |  |
| `Gdansk.Harbour.22` | Harbour (301000) | 206–210 | 766–771 |  |
| `Gdansk.Harbour.23` | Harbour (301000) | 365–370 | 778–791 |  |
| `Gdansk.Harbour.24` | Harbour (301000) | 275–282 | 782–786 |  |
| `Gdansk.Harbour.25` | Harbour (301000) | 212–216 | 785–788 |  |
| `Gdansk.Harbour.26` | Harbour (301000) | 212–215 | 788–790 |  |
| `Gdansk.Harbour.27` | Harbour (301000) | 205–208 | 794–802 |  |
| `Gdansk.Harbour.28` | Harbour (301000) | 378–397 | 207–231 |  |
| `Gdansk.Harbour.29` | Harbour (301000) | 395–404 | 216–233 |  |
| `Gdansk.Harbour.30` | Harbour (301000) | 404–415 | 233–253 |  |
| `Gdansk.Harbour.31` | Harbour (301000) | 365–373 | 798–806 |  |
| `Gdansk.Harbour.32` | Harbour (301000) | 938–943 | 806–808 |  |
| `Gdansk.Harbour.33` | Harbour (301000) | 955–963 | 837–843 |  |
| `Gdansk.Harbour.34` | Harbour (301000) | 940–943 | 850–856 |  |
| `Gdansk.PrecautionaryArea.1.1` | Precautionary / restricted area (310000) | 612–623 | 383–395 | restriction=no_diving,no_fishing |
| `Gdansk.AreaToAvoid.1.1` | Area to avoid (311000) | 159–196 | 322–359 | restriction=no_entry |
| `Gdansk.AreaToAvoid.2.1` | Area to avoid (311000) | 71–114 | 0–61 | restriction=no_entry |
| `Gdansk.AreaToAvoid.3.1` | Area to avoid (311000) | 252–334 | 666–737 | restriction=no_entry,no_anchoring,no_fishing,no_diving |
| `Gdansk.AreaToAvoid.3.2` | Area to avoid (311000) | 266–275 | 678–682 | restriction=no_entry,no_anchoring,no_fishing,no_diving |
| `Gdansk.AreaToAvoid.4.1` | Area to avoid (311000) | 216–222 | 664–667 | restriction=no_entry |
| `Gdansk.AreaToAvoid.5.1` | Area to avoid (311000) | 212–233 | 649–666 | restriction=no_entry |
| `Gdansk.AreaToAvoid.6.1` | Area to avoid (311000) | 77–96 | 361–378 | restriction=no_entry |
| `Gdansk.AreaToAvoid.7.1` | Area to avoid (311000) | 66–77 | 369–377 | restriction=no_entry |
| `Gdansk.AreaToAvoid.8.1` | Area to avoid (311000) | 39–48 | 361–363 | restriction=no_entry |
| `Gdansk.Anchorage.1.1` | Anchorage (312000) | 256–293 | 542–571 |  |
| `Gdansk.Anchorage.2.1` | Anchorage (312000) | 194–267 | 540–578 |  |
| `Gdansk.MilitaryArea.Strefa11.1` | Military area (315000) | 249–554 | 0–139 | category=military |
| `Gdansk.MilitaryArea.Strefa14ZamknietaDlaRybolowstwa.1` | Military area (315000) | 329–400 | 216–274 | category=military restriction=no_fishing |
| `Gdansk.MilitaryArea.Strefa15ZamknietaDlaZeglugiIRybo.1` | Military area (315000) | 93–116 | 343–355 | category=military restriction=no_entry,no_fishing activity=permanent |
| `Gdansk.MilitaryArea.Strefa1aOkresowoZamykanaDlaZeglu.1` | Military area (315000) | 688–1000 | 556–711 | category=military restriction=no_entry activity=periodic |
| `Gdansk.MilitaryArea.Strefa1bOkresowoZamykanaDlaZeglu.1` | Military area (315000) | 718–1000 | 372–563 | restriction=no_entry category=firing activity=periodic |
| `Gdansk.MilitaryArea.Strefa2OkresowoZamykanaDlaZeglug.1` | Military area (315000) | 97–164 | 189–351 | category=military restriction=no_entry activity=periodic |
| `Gdansk.MilitaryArea.Strefa3ZamknietaDlaRybolowstwa.1` | Military area (315000) | 94–130 | 355–375 | category=military restriction=no_fishing |
| `Gdansk.MilitaryArea.Strefa4.1` | Military area (315000) | 274–360 | 83–181 | category=military |
| `Gdansk.MilitaryArea.Strefa5OkresowoZamykanaDlaZeglug.1` | Military area (315000) | 258–360 | 93–240 | category=military restriction=no_entry activity=periodic |
| `Gdansk.MilitaryArea.AkwenZabronionyDlaKapieliPlywani.1` | Military area (315000) | 307–338 | 90–131 | category=military |

## Local rules (Legata)

Generated from the zones above by `.claude/skills/mapgen/legata_site.py` (MAPGEN §4.3); regenerate, do not edit.

- `rule/tss.legata`: 26 clauses
- `rule/zones.legata`: 22 clauses
- `rule/score.yaml`: scorecard (placeholder penalties)
- `rules.yaml`: `maritime.regulation.internal.ZoneRule` modules

## Sources

- [Sailing Latvia – Useful information for pleasure craft in Poland](https://www.sailinglatvia.lv/wp-content/uploads/2019/01/Useful-Information-Poland-2019.pdf)
- [EU MSP Platform – Zoning in the western Gulf of Gdańsk](https://maritime-spatial-planning.ec.europa.eu/practices/zoning-polish-detailed-msp-covering-west-part-gulf-gdansk)
- [Poland at Sea – Neutralisation of unexploded ordnance in Gdańsk Bay](https://www.polandatsea.com/neutralisation-of-unexploded-ordnance-in-gdansk-bay-rcb-warning/)
- [Maritime Office Gdynia – VTS Zatoka Gdańska](https://www.umgdy.gov.pl/en/marine-safety/vts-zatoka-gdanska-en/)
