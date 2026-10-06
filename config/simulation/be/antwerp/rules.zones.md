# Restricted and regulated sea zones – Antwerp

**Location:** `be/antwerp`  
**Compiled:** 2026-10-05, from the web sources listed below. Check current Notices to Mariners and national charts before relying on positions or rules.

## Zones and rules found

| Zone | Kind | Rule |
|---|---|---|
| Westerschelde & Saeftinghe (Natura 2000) | Nature reserve | Parts closed all year to protect resting and breeding birds. Anchoring is banned in the southern part. Drones are prohibited. |
| Port of Antwerp-Bruges | Port rule | Fishing from vessels is prohibited in every area of the port; fishing only from the quay. Some areas are marked no-anchoring and no-fishing. |
| Scheldt speed limits (secondary guide) | Speed limit | 12–14 kn in the Western Scheldt, 10–12 kn in the Lower Scheldt, 8–10 kn on the port approach, 4–6 kn near the locks. Not confirmed against the official regulation. |
| Scheldt in fog | Conditional closure | Large ships are barred from entering the Scheldt towards Antwerp in fog. |

**Gaps:** No military zones were found.

## Zones in the map (`config/map/be/antwerp/sea.s3db`)

- map.source.zones: Marine Regions (VLIZ) eez_internal_waters, eez_12nm, eez_24nm, eez for BEL, NLD, belts minus inner belts, each map cell to the nearest belt of any country (outlines carry no coastline), CC-BY 4.0
- map.source.fairway: OpenStreetMap seamark:type=fairway (closed ways and relations), ODbL
- map.source.harbour: OpenStreetMap seamark harbour/harbour_basin +100 m and landuse=port|harbour +500 m, clipped to water, ODbL
- map.source.restricted: OpenStreetMap seamark restricted_area (every restriction and category; recreation areas left out), military_area, anchorage, precautionary_area, ODbL; classified by mapgen zones.py

Zone shapes other than the TSS (see `rules.tss.md`), in map cells, with the settings the local rules read:

| Zone | Type | x | y | Settings |
|---|---|---|---|---|
| `Belgium.InternalWaters.1` | Internal waters (204000) | 55–1000 | 168–1000 |  |
| `Netherlands.InternalWaters.1` | Internal waters (204000) | 0–1000 | 0–1000 |  |
| `Antwerp.Harbour.1` | Harbour (301000) | 518–524 | 502–514 | restriction=no_fishing |
| `Antwerp.Harbour.2` | Harbour (301000) | 565–571 | 534–538 | restriction=no_fishing |
| `Antwerp.Harbour.3` | Harbour (301000) | 662–681 | 966–1000 | restriction=no_fishing |
| `Antwerp.Harbour.4` | Harbour (301000) | 705–767 | 624–666 | restriction=no_fishing |
| `Antwerp.Harbour.5` | Harbour (301000) | 686–794 | 652–729 | restriction=no_fishing |
| `Antwerp.Harbour.6` | Harbour (301000) | 866–873 | 774–792 | restriction=no_fishing |
| `Antwerp.Harbour.7` | Harbour (301000) | 816–820 | 792–803 | restriction=no_fishing |
| `Antwerp.Harbour.8` | Harbour (301000) | 818–826 | 786–813 | restriction=no_fishing |
| `Antwerp.Harbour.9` | Harbour (301000) | 849–851 | 798–799 | restriction=no_fishing |
| `Antwerp.Harbour.10` | Harbour (301000) | 843–846 | 801–803 | restriction=no_fishing |
| `Antwerp.Harbour.11` | Harbour (301000) | 847–860 | 799–807 | restriction=no_fishing |
| `Antwerp.Fairway.1.1` | Waterway / fairway (302000) | 0–143 | 119–289 |  |
| `Antwerp.Fairway.3.1` | Waterway / fairway (302000) | 0–462 | 176–354 |  |
| `Antwerp.Anchorage.1.1` | Anchorage (312000) | 263–289 | 240–269 |  |
| `Antwerp.Anchorage.2.1` | Anchorage (312000) | 819–827 | 802–811 |  |
| `Antwerp.Anchorage.3.1` | Anchorage (312000) | 816–824 | 811–820 |  |
| `Antwerp.Anchorage.4.1` | Anchorage (312000) | 796–815 | 771–775 |  |
| `Antwerp.Anchorage.5.1` | Anchorage (312000) | 737–794 | 771–777 |  |
| `Antwerp.Anchorage.6.1` | Anchorage (312000) | 606–646 | 632–670 |  |
| `Antwerp.Anchorage.7.1` | Anchorage (312000) | 574–583 | 563–568 |  |
| `Antwerp.Anchorage.8.1` | Anchorage (312000) | 582–624 | 564–587 |  |
| `Antwerp.Anchorage.SchaarVanOudenDoel.1` | Anchorage (312000) | 418–475 | 333–365 |  |
| `Antwerp.SpeedZone.1.1` | Speed zone (313000) | 720–724 | 697–702 | restriction=restricted_entry,restricted_speed,no_berthing,no_making_fast category=safety |

## Local rules (Legata)

Generated from the zones above by `.claude/skills/mapgen/legata_site.py` (MAPGEN §4.3); regenerate, do not edit.

- `rule/zones.legata`: 1 clauses
- `rule/score.yaml`: scorecard (placeholder penalties)
- `rules.yaml`: `maritime.regulation.internal.ZoneRule` modules

## Sources

- [RWS – Rules and regulations, enjoying the nature of the Western Scheldt](https://www.rwsnatura2000.nl/gebieden/project+westerschelde/documenten-westerschelde/documenten+-+westerschelde/handlerdownloadfiles.ashx?idnv=3043766)
- [Natura2000.nl – Westerschelde & Saeftinghe](https://www.natura2000.nl/gebieden/zeeland/westerschelde-saeftinghe)
- [Port of Antwerp-Bruges – Fishing](https://www.portofantwerpbruges.com/en/our-port/visit/port-or-without-guide/fishing)
- [Flows – Large ships not allowed to enter Scheldt due to fog](https://en.flows.be/ports/2024/11/large-ships-not-allowed-to-enter-scheldt-towards-antwerp-due-to-fog/)
- [PortServiceFinder – Antwerp port guide 2026](https://www.portservicefinder.com/blog/antwerp-port-complete-guide-2026)
