# Restricted and regulated sea zones – Barcelona

**Location:** `es/barcelona`  
**Compiled:** 2026-10-05, from the web sources listed below. Check current Notices to Mariners and national charts before relying on positions or rules.

## Zones and rules found

| Zone | Kind | Rule |
|---|---|---|
| East and South anchorage zones | Anchorage | Two anchorage zones outside the port, part of the traffic organisation system with the access channels and precautionary areas (BOE-A-2023-6719). |
| Zone I (inner port waters), anchorages, TSS incl. separation zone, both precautionary areas | No fishing | All extractive fishing from vessels, including laying gear, is prohibited. |
| Approach channels and anchorages | Advisory | Vessels not entering the port or anchoring are advised not to cross the access channels or anchorage zones, and to keep east of the approach buoys. |
| Coast from the Llobregat to Port Olímpic | No anchoring | Anchoring is prohibited (harbour master criteria). |

**Gaps:** The East and South anchorages and both precautionary areas are drawn from the ordinance coordinates; the arc bounding the East anchorage is drawn by its chords.

## Zones in the map (`config/map/es/barcelona/sea.s3db`)

- map.source.zones: Marine Regions (VLIZ) eez_internal_waters, eez_12nm, eez_24nm, eez for ESP, belts minus inner belts, each map cell to the nearest belt of any country (outlines carry no coastline), CC-BY 4.0
- map.source.fairway: OpenStreetMap seamark:type=fairway (closed ways and relations), ODbL
- map.source.harbour: OpenStreetMap seamark harbour/harbour_basin +100 m and landuse=port|harbour +500 m, clipped to water, ODbL
- map.source.restricted: OpenStreetMap seamark restricted_area (every restriction and category; recreation areas left out), military_area, anchorage, precautionary_area, ODbL; classified by mapgen zones.py; hand-sourced zones: BOE-A-2023-6719 Barcelona port maritime traffic ordinance

Zone shapes other than the TSS (see `rules.tss.md`), in map cells, with the settings the local rules read:

| Zone | Type | x | y | Settings |
|---|---|---|---|---|
| `Spain.ContiguousZone.1` | Contiguous zone (202000) | 633–1000 | 608–1000 |  |
| `Spain.TerritorialSea.1` | Territorial sea (203000) | 0–1000 | 0–1000 |  |
| `Spain.InternalWaters.1` | Internal waters (204000) | 50–572 | 0–338 |  |
| `Barcelona.Harbour.1` | Harbour (301000) | 301–327 | 46–72 | speed_limit=6 restriction=no_fishing |
| `Barcelona.Harbour.2` | Harbour (301000) | 225–242 | 146–165 | speed_limit=6 restriction=no_fishing |
| `Barcelona.Harbour.3` | Harbour (301000) | 234–236 | 144–145 | speed_limit=6 restriction=no_fishing |
| `Barcelona.Harbour.4` | Harbour (301000) | 90–230 | 174–320 | speed_limit=6 restriction=no_fishing |
| `Barcelona.Harbour.5` | Harbour (301000) | 0–190 | 318–512 | speed_limit=6 restriction=no_fishing |
| `Barcelona.Harbour.6` | Harbour (301000) | 74–107 | 318–360 | speed_limit=6 restriction=no_fishing |
| `Barcelona.Harbour.7` | Harbour (301000) | 60–68 | 448–454 | speed_limit=6 restriction=no_fishing |
| `Barcelona.PrecautionaryArea.North.1` | Precautionary / restricted area (310000) | 179–209 | 258–305 | restriction=no_fishing |
| `Barcelona.PrecautionaryArea.South.1` | Precautionary / restricted area (310000) | 137–171 | 409–472 | restriction=no_fishing |
| `Barcelona.Anchorage.East.1` | Anchorage (312000) | 172–268 | 305–534 | restriction=no_fishing |
| `Barcelona.Anchorage.South.1` | Anchorage (312000) | 93–160 | 456–544 | restriction=no_fishing |
| `Barcelona.Anchorage.South.2` | Anchorage (312000) | 93–121 | 445–486 | restriction=no_fishing |

## Local rules (Legata)

Generated from the zones above by `.claude/skills/mapgen/legata_site.py` (MAPGEN §4.3); regenerate, do not edit.

- `rule/tss.legata`: 8 clauses
- `rule/zones.legata`: 6 clauses
- `rule/score.yaml`: scorecard (placeholder penalties)
- `rules.yaml`: `maritime.regulation.internal.ZoneRule` modules

## Sources

- [BOE-A-2023-6719 – Barcelona port maritime traffic ordinance](https://www.boe.es/diario_boe/txt.php?id=BOE-A-2023-6719)
- [Port de Barcelona – access procedure](https://contentv5.portdebarcelona.cat/cntmng/guestDownload/direct/workspace/SpacesStore/f5160208-37bd-45c0-996e-15abf26b93e7/07_PO_ACCESSOS_ES.pdf)
- [AES Neptuno – Barcelona harbour master anchoring criteria](https://aesneptuno.org/2019/08/19/criterios-fondeo-embarcaciones-capitania-barcelona/)
