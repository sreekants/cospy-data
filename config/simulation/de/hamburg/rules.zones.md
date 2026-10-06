# Restricted and regulated sea zones – Hamburg

**Location:** `de/hamburg`  
**Compiled:** 2026-10-05, from the web sources listed below. Check current Notices to Mariners and national charts before relying on positions or rules.

## Zones and rules found

| Zone | Kind | Rule |
|---|---|---|
| Elbe and Köhlbrand outside the channel buoyage | No anchoring | Anchoring is prohibited outside the line of the channel buoyage unless the Hamburg Port Authority permits it, or it is needed to avoid danger. |
| Elbe tunnels | No anchoring | Using an anchor near the Elbe tunnels is prohibited. |
| Port of Hamburg | Speed limit | 10 kn for commercial traffic in the port area. Pleasure craft: 12 kn (22 km/h) in the harbour, 8 km/h in side waters such as the Speicherstadt or Doveelbe. |
| Tanker harbours | Closed to pleasure craft | The marked tanker harbours are off-limits to pleasure craft. |
| Schwarztonnensand | Nature reserve | The island is a nature reserve and may not be entered. |

## Zones in the map (`config/map/de/hamburg/sea.s3db`)

- map.source.zones: Marine Regions (VLIZ) eez_internal_waters, eez_12nm, eez_24nm, eez for DEU, belts minus inner belts, each map cell to the nearest belt of any country (outlines carry no coastline), CC-BY 4.0
- map.source.fairway: OpenStreetMap seamark:type=fairway (closed ways and relations), ODbL
- map.source.harbour: OpenStreetMap seamark harbour/harbour_basin +100 m and landuse=port|harbour +500 m, clipped to water, ODbL
- map.source.restricted: OpenStreetMap seamark restricted_area (every restriction and category; recreation areas left out), military_area, anchorage, precautionary_area, ODbL; classified by mapgen zones.py

Zone shapes other than the TSS (see `rules.tss.md`), in map cells, with the settings the local rules read:

| Zone | Type | x | y | Settings |
|---|---|---|---|---|
| `Germany.InternalWaters.1` | Internal waters (204000) | 0–1000 | 0–1000 |  |
| `Hamburg.Harbour.1` | Harbour (301000) | 32–35 | 136–141 | speed_limit=10 restriction=no_anchoring |
| `Hamburg.Harbour.2` | Harbour (301000) | 35–40 | 138–140 | speed_limit=10 restriction=no_anchoring |
| `Hamburg.Harbour.3` | Harbour (301000) | 401–404 | 451–453 | speed_limit=10 restriction=no_anchoring |
| `Hamburg.Harbour.4` | Harbour (301000) | 395–397 | 453–454 | speed_limit=10 restriction=no_anchoring |
| `Hamburg.Harbour.5` | Harbour (301000) | 401–402 | 454–456 | speed_limit=10 restriction=no_anchoring |
| `Hamburg.Harbour.6` | Harbour (301000) | 398–401 | 452–455 | speed_limit=10 restriction=no_anchoring |
| `Hamburg.Harbour.7` | Harbour (301000) | 61–64 | 463–467 | speed_limit=10 restriction=no_anchoring |
| `Hamburg.Harbour.8` | Harbour (301000) | 143–149 | 520–526 | speed_limit=10 restriction=no_anchoring |
| `Hamburg.Harbour.9` | Harbour (301000) | 305–306 | 527–529 | speed_limit=10 restriction=no_anchoring |
| `Hamburg.Harbour.10` | Harbour (301000) | 304–306 | 529–531 | speed_limit=10 restriction=no_anchoring |
| `Hamburg.Harbour.11` | Harbour (301000) | 402–405 | 651–652 | speed_limit=10 restriction=no_anchoring |
| `Hamburg.Harbour.12` | Harbour (301000) | 399–402 | 652–654 | speed_limit=10 restriction=no_anchoring |
| `Hamburg.Harbour.13` | Harbour (301000) | 403–410 | 653–656 | speed_limit=10 restriction=no_anchoring |
| `Hamburg.Harbour.14` | Harbour (301000) | 339–344 | 661–665 | speed_limit=10 restriction=no_anchoring |
| `Hamburg.Harbour.15` | Harbour (301000) | 173–197 | 701–737 | speed_limit=10 restriction=no_anchoring |
| `Hamburg.Harbour.16` | Harbour (301000) | 168–178 | 812–826 | speed_limit=10 restriction=no_anchoring |
| `Hamburg.Harbour.17` | Harbour (301000) | 169–174 | 816–818 | speed_limit=10 restriction=no_anchoring |
| `Hamburg.Harbour.18` | Harbour (301000) | 331–337 | 858–863 | speed_limit=10 restriction=no_anchoring |
| `Hamburg.Harbour.19` | Harbour (301000) | 133–137 | 857–866 | speed_limit=10 restriction=no_anchoring |
| `Hamburg.Harbour.20` | Harbour (301000) | 135–136 | 866–867 | speed_limit=10 restriction=no_anchoring |
| `Hamburg.Harbour.21` | Harbour (301000) | 454–464 | 935–950 | speed_limit=10 restriction=no_anchoring |
| `Hamburg.Harbour.22` | Harbour (301000) | 462–473 | 936–952 | speed_limit=10 restriction=no_anchoring |
| `Hamburg.Harbour.23` | Harbour (301000) | 682–691 | 989–993 | speed_limit=10 restriction=no_anchoring |
| `Hamburg.Harbour.24` | Harbour (301000) | 698–713 | 993–999 | speed_limit=10 restriction=no_anchoring |
| `Hamburg.PrecautionaryArea.FischschonbezirkStor.1` | Precautionary / restricted area (310000) | 0–4 | 241–247 | restriction=restricted_fishing |
| `Hamburg.PrecautionaryArea.FischschonbezirkPinnauSperrwerk.1` | Precautionary / restricted area (310000) | 225–249 | 641–666 | restriction=restricted_fishing |
| `Hamburg.PrecautionaryArea.8.1` | Precautionary / restricted area (310000) | 299–309 | 884–894 | restriction=no_anchoring |
| `Hamburg.PrecautionaryArea.9.1` | Precautionary / restricted area (310000) | 280–293 | 865–879 | restriction=no_anchoring |
| `Hamburg.PrecautionaryArea.10.1` | Precautionary / restricted area (310000) | 286–345 | 838–887 | restriction=no_anchoring category=* |
| `Hamburg.PrecautionaryArea.FischschonbezirkKruckau.1` | Precautionary / restricted area (310000) | 174–199 | 542–565 | restriction=restricted_fishing |

## Local rules (Legata)

Generated from the zones above by `.claude/skills/mapgen/legata_site.py` (MAPGEN §4.3); regenerate, do not edit.

- `rule/zones.legata`: 8 clauses
- `rule/score.yaml`: scorecard (placeholder penalties)
- `rules.yaml`: `maritime.regulation.internal.ZoneRule` modules

## Sources

- [Hamburg Port Authority – Port Information Guide 2022](https://www.hamburg-port-authority.de/fileadmin/user_upload/1_HPA_PIG_2022.pdf)
- [Boote – By motorboat on the Elbe in Hamburg](https://www.boote-magazin.de/en/travel-and-charter/territories/by-motorboat-on-the-elbe-in-hamburg-special-hamburg-and-the-lower-elbe/)
