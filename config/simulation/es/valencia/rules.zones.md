# Restricted and regulated sea zones – Valencia

**Location:** `es/valencia`  
**Compiled:** 2026-10-05, from the web sources listed below. Check current Notices to Mariners and national charts before relying on positions or rules.

## Zones and rules found

| Zone | Kind | Rule |
|---|---|---|
| Zone I (inner port waters) | Port waters | Movement of vessels in Zone I is governed by a port instruction. Zones I and II were delimited by ministerial order of 23 December 1966. |
| Zone II (outer port waters) | Port waters | Contains two anchorage areas, a traffic organisation system and the pilot embarkation point. |
| North anchorage | Anchorage | 6 anchorage points, swing radii up to 500 m. |
| South anchorage | Anchorage | 12 anchorage points, swing radii up to 400 m. |
| Port service area | Port limits | Spaces and port uses delimited by Order FOM/1973/2014 (DEUP). |
| L'Albufera Natural Park | Ramsar wetland / ZEPA | About 10 km south of Valencia, 21,120 ha including the adjacent coastal zone. Its inland waters are closed to navigation. |

**Gaps:** Two anchorages are drawn from OpenStreetMap; check them against the 6-point North and 12-point South anchorages of the port regulation.

## Zones in the map (`config/map/es/valencia/sea.s3db`)

- map.source.zones: Marine Regions (VLIZ) eez_internal_waters, eez_12nm, eez_24nm, eez for ESP, belts minus inner belts, each map cell to the nearest belt of any country (outlines carry no coastline), CC-BY 4.0
- map.source.fairway: OpenStreetMap seamark:type=fairway (closed ways and relations), ODbL
- map.source.harbour: OpenStreetMap seamark harbour/harbour_basin +100 m and landuse=port|harbour +500 m, clipped to water, ODbL
- map.source.restricted: OpenStreetMap seamark restricted_area (every restriction and category; recreation areas left out), military_area, anchorage, precautionary_area, ODbL; classified by mapgen zones.py

Zone shapes other than the TSS (see `rules.tss.md`), in map cells, with the settings the local rules read:

| Zone | Type | x | y | Settings |
|---|---|---|---|---|
| `Spain.TerritorialSea.1` | Territorial sea (203000) | 635–1000 | 0–1000 |  |
| `Spain.InternalWaters.1` | Internal waters (204000) | 0–652 | 0–1000 |  |
| `Valencia.Harbour.1` | Harbour (301000) | 417–432 | 140–168 |  |
| `Valencia.Harbour.2` | Harbour (301000) | 270–444 | 503–693 |  |
| `Valencia.Fairway.1.1` | Waterway / fairway (302000) | 351–507 | 622–697 |  |
| `Valencia.Fairway.2.1` | Waterway / fairway (302000) | 392–506 | 587–676 |  |
| `Valencia.Anchorage.1.1` | Anchorage (312000) | 439–648 | 725–812 |  |
| `Valencia.Anchorage.2.1` | Anchorage (312000) | 540–642 | 543–613 |  |

## Local rules (Legata)

Generated from the zones above by `.claude/skills/mapgen/legata_site.py` (MAPGEN §4.3); regenerate, do not edit.

No zone in this map carries an enforceable restriction, so no rule file is generated.

## Sources

- [Valenciaport – Service and Police Regulation (2022)](https://www.valenciaport.com/wp-content/uploads/Reglamento-de-Servicio-y-Policia-actualizado-en-2022-Julio.pdf)
- [Valenciaport – Regulations](https://www.valenciaport.com/en/business/normativa/)
- [BOE-A-2014-11046 – Order FOM/1973/2014](https://www.boe.es/diario_boe/txt.php?id=BOE-A-2014-11046)
- [Wikipedia – Albufera Natural Park](https://en.wikipedia.org/wiki/Albufera_Natural_Park)
