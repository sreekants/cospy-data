# Restricted and regulated sea zones – Kavak-Kandilli (Strait of Istanbul, Arnavutköy-Kandilli reach)

**Location:** `tk/kavak-kandilli`  
**Compiled:** 2026-10-06, from the web sources listed below. Check current Notices to Mariners and national charts before relying on positions or rules.

## Zones and rules found

| Zone | Kind | Rule |
|---|---|---|
| Strait of Istanbul TSS lanes | Speed limit | 10 kn over ground through the strait. |
| Vaniköy-Kanlıca reach | Overtaking | Overtaking barred outright by Turkish regulation (config/examiner/zones.yaml, named zone IstanbulStrait.Vanikoy.Kanlica); the reach starts at the north-east of this frame. Not drawn. |
| Strait of Istanbul | Anchoring | Prohibited outside designated anchorages (Rule 10(g) clause in the lanes). |
| Turkish Straits VTS, Kandilli sector | Reporting | Traffic control and reporting; not modelled. |
| Turkish territorial sea | Jurisdiction | Marine Regions 12 nm belt. |

**Gaps:** The legacy map (Kavak-Kandilli) was a tracing of this reach at about 6.1 m per legacy unit, rotated 1.3-1.8 deg from north; tk/kandilli, tk/kavak and tk/kavak-kandilli therefore share one regenerated frame. No local rules existed before.

## Zones in the map (`config/map/tk/kavak-kandilli/sea.s3db`)

- map.source.zones: Marine Regions (VLIZ) eez_internal_waters, eez_12nm, eez_24nm, eez for TUR, belts minus inner belts, each map cell to the nearest belt of any country (outlines carry no coastline), CC-BY 4.0
- map.source.fairway: OpenStreetMap seamark:type=fairway (closed ways and relations), ODbL
- map.source.harbour: OpenStreetMap seamark harbour/harbour_basin +100 m and landuse=port|harbour +500 m, clipped to water, ODbL
- map.source.restricted: OpenStreetMap seamark restricted_area (every restriction and category; recreation areas left out), military_area, anchorage, precautionary_area, ODbL; classified by mapgen zones.py

Zone shapes other than the TSS (see `rules.tss.md`), in map cells, with the settings the local rules read:

| Zone | Type | x | y | Settings |
|---|---|---|---|---|
| `Turkey.TerritorialSea.1` | Territorial sea (203000) | 0–1200 | 0–800 |  |

## Local rules (Legata)

Generated from the zones above by `.claude/skills/mapgen/legata_site.py` (MAPGEN §4.3); regenerate, do not edit.

- `rule/tss.legata`: 6 clauses
- `rule/score.yaml`: scorecard (placeholder penalties)
- `rules.yaml`: `maritime.regulation.internal.ZoneRule` modules

## Sources

- [UN DOALOS – Maritime Traffic Regulations for the Turkish Straits and the Marmara Region (1994)](https://www.un.org/depts/los/LEGISLATIONANDTREATIES/PDFFILES/TUR_1994_Regulations.pdf)
- [VDA – Maritime Traffic Regulations for the Turkish Straits (2019, English)](https://www.vda.org.tr/upload/duyuru/T%C3%9CRK%20BO%C4%9EAZLARI%20DEN%C4%B0Z%20TRAF%C4%B0K%20D%C3%9CZEN%C4%B0%20Y%C3%96NETMEL%C4%B0%C4%9E%C4%B0%20%C4%B0NG%C4%B0L%C4%B0ZCE%202019.pdf)
- [Kıyı Emniyeti – User's Guide of Turkish Straits VTS](https://kiyiemniyeti.gov.tr/Data/1/Files/Document/Documents/9S/6R/yY/wu/TSVTS_User_Guide_21.05.20.pdf)
- [SAFETY4SEA – Revised traffic regulations for Turkish Straits](https://safety4sea.com/revised-traffic-regulations-for-turkish-straits-come-into-force/)
- [OpenStreetMap seamarks: separation lanes, boundaries, separation line and zone (ways 1034443802-1034443809), anchorage (way 1110599069)](https://www.openstreetmap.org/way/1034443809)
