# Restricted and regulated sea zones – Istanbul (Strait of Istanbul, Black Sea entrance; same frame as tk/turkeli)

**Location:** `tk/istanbul`  
**Compiled:** 2026-10-06, from the web sources listed below. Check current Notices to Mariners and national charts before relying on positions or rules.

## Zones and rules found

| Zone | Kind | Rule |
|---|---|---|
| Strait of Istanbul TSS lanes | Speed limit | 10 kn over ground through the strait (applied to both lanes, including their approach parts). |
| Strait of Istanbul | Overtaking | No overtaking unless absolutely necessary, with TSVTS permission (not modelled as a clause: no overtaking symbol in Legata yet). |
| Northern entrance anchorage | Anchorage | Designated anchorage for the TSS (OpenStreetMap, deep water). Anchoring elsewhere in the scheme is prohibited (Rule 10(g) clause). |
| Turkish Straits VTS, Türkeli sector | Reporting | Vessels report to TSVTS before entering; not modelled. |
| Turkish territorial sea | Jurisdiction | Marine Regions 12 nm belt; Turkey publishes no internal waters in Marine Regions. |

**Gaps:** The legacy Istanbul land was the legacy Türkeli sketch, so the regenerated map has the same frame as tk/turkeli. Legacy hand-written modules (rule/turkeli, marmara, bosphorus.legata) are kept with their own rule/score.yaml; they do not load, because that scorecard names concerns ("berthing risk", "hazardous transport") that config/examiner/zones.yaml does not map; they did not load before the regeneration either. The generated rules use rule/tss.score.yaml.

## Zones in the map (`config/map/tk/istanbul/sea.s3db`)

- map.source.zones: Marine Regions (VLIZ) eez_internal_waters, eez_12nm, eez_24nm, eez for TUR, belts minus inner belts, each map cell to the nearest belt of any country (outlines carry no coastline), CC-BY 4.0
- map.source.fairway: OpenStreetMap seamark:type=fairway (closed ways and relations), ODbL
- map.source.harbour: OpenStreetMap seamark harbour/harbour_basin +100 m and landuse=port|harbour +500 m, clipped to water, ODbL
- map.source.restricted: OpenStreetMap seamark restricted_area (every restriction and category; recreation areas left out), military_area, anchorage, precautionary_area, ODbL; classified by mapgen zones.py

Zone shapes other than the TSS (see `rules.tss.md`), in map cells, with the settings the local rules read:

| Zone | Type | x | y | Settings |
|---|---|---|---|---|
| `Turkey.TerritorialSea.1` | Territorial sea (203000) | 0–1200 | 0–800 |  |
| `Istanbul.Anchorage.1.1` | Anchorage (312000) | 0–83 | 103–242 | category=deep_water |

## Local rules (Legata)

Generated from the zones above by `.claude/skills/mapgen/legata_site.py` (MAPGEN §4.3); regenerate, do not edit.

- `rule/bosphorus.legata`: 2 clauses
- `rule/marmara.legata`: 2 clauses
- `rule/tss.legata`: 7 clauses
- `rule/turkeli.legata`: 2 clauses
- `rule/score.yaml`: scorecard (placeholder penalties)
- `rules.yaml`: `maritime.regulation.internal.ZoneRule` modules

## Sources

- [UN DOALOS – Maritime Traffic Regulations for the Turkish Straits and the Marmara Region (1994)](https://www.un.org/depts/los/LEGISLATIONANDTREATIES/PDFFILES/TUR_1994_Regulations.pdf)
- [VDA – Maritime Traffic Regulations for the Turkish Straits (2019, English)](https://www.vda.org.tr/upload/duyuru/T%C3%9CRK%20BO%C4%9EAZLARI%20DEN%C4%B0Z%20TRAF%C4%B0K%20D%C3%9CZEN%C4%B0%20Y%C3%96NETMEL%C4%B0%C4%9E%C4%B0%20%C4%B0NG%C4%B0L%C4%B0ZCE%202019.pdf)
- [Kıyı Emniyeti – User's Guide of Turkish Straits VTS](https://kiyiemniyeti.gov.tr/Data/1/Files/Document/Documents/9S/6R/yY/wu/TSVTS_User_Guide_21.05.20.pdf)
- [SAFETY4SEA – Revised traffic regulations for Turkish Straits](https://safety4sea.com/revised-traffic-regulations-for-turkish-straits-come-into-force/)
- [OpenStreetMap seamarks: separation lanes, boundaries, separation line and zone (ways 1034443802-1034443809), anchorage (way 1110599069)](https://www.openstreetmap.org/way/1034443809)
