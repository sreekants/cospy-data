# Restricted and regulated sea zones – Ålesund

**Location:** `no/alesund`  
**Compiled:** 2026-10-06, from the web sources listed below. Check current Notices to Mariners and national charts before relying on positions or rules.

## Zones and rules found

| Zone | Kind | Rule |
|---|---|---|
| Ålesund harbour and sounds | Speed limit | Local limits under the Harbour and Fairways Act; 5 kn is usual in harbour inlets and narrow sounds such as Brosundet. Kystverket's published limits in the frame are drawn as speed zones. |
| Breisundet | Escort requirement | Vessels pushing a tow through Breisundet must be assisted by an escort vessel east of Hogsteinen lighthouse. |
| Military restricted areas at sea (forbudsområder) | Military area | Forskrift om forbudsområder i sjø (2024): unauthorised entry, anchoring, diving, sea surveys, fishing and trawling or bottom gear are prohibited. Drawn from Forsvarsbygg's dataset where one lies in the frame. |
| State and municipal speed limits at sea | Speed limit | Set under the Harbour and Fairways Act (§7 state, §8 municipal); Kystverket publishes them (layer 762, commercial vessels). Typical: 5 kn in harbour inlets, narrow sounds and near beaches. |
| Anchorage and caution areas | Anchorage / caution | Kystverket ankringsområder (layer 151) and aktsomhetsområder under Sjøtrafikkforskriften §150-151 (layer 102). |
| Protected areas (naturvernområder) | Nature reserve | Marine protected areas, nature reserves and bird sanctuaries from Miljødirektoratet; each area's own regulation (verneforskrift) sets traffic, anchoring and seasonal rules, and only those researched are turned into rules. |

**Gaps:** No VTS covers Ålesund. Military areas or coral closures are drawn only if the official datasets have one in the frame.

## Zones in the map (`config/map/no/alesund/sea.s3db`)

- map.source.zones: Marine Regions (VLIZ) eez_internal_waters, eez_12nm, eez_24nm, eez for NOR, belts minus inner belts, each map cell to the nearest belt of any country (outlines carry no coastline), CC-BY 4.0
- map.source.fairway: OpenStreetMap seamark:type=fairway (closed ways and relations), ODbL
- map.source.harbour: OpenStreetMap seamark harbour/harbour_basin +100 m and landuse=port|harbour +500 m, clipped to water, ODbL
- map.source.restricted: OpenStreetMap seamark restricted_area (every restriction and category; recreation areas left out), military_area, anchorage, precautionary_area, ODbL; classified by mapgen zones.py; Kystverket WFS layer_151 ankringsområder, layer_102 aktsomhetsområder, layer_762 fartsgrenser næringsfartøy, layer_1108, layer_522/523 (NLOD); Forsvarsbygg militære forbudsområder i sjø (forskrift 2024-06-24-1311); Miljødirektoratet naturvernområder; Fiskeridirektoratet korallrev forbudsområder (forskrift 2016-01-08-8)

Zone shapes other than the TSS (see `rules.tss.md`), in map cells, with the settings the local rules read:

| Zone | Type | x | y | Settings |
|---|---|---|---|---|
| `Norway.InternalWaters.1` | Internal waters (204000) | 0–1000 | 0–1000 |  |
| `Alesund.Harbour.1` | Harbour (301000) | 327–363 | 121–148 |  |
| `Alesund.Harbour.2` | Harbour (301000) | 479–503 | 770–809 |  |
| `Alesund.Anchorage.Valderhaugfjorden2.1` | Anchorage (312000) | 43–215 | 560–665 |  |
| `Alesund.Anchorage.Valderhaugfjorden1.1` | Anchorage (312000) | 234–593 | 549–735 |  |
| `Alesund.NatureReserve.Gjosundholmen.1` | Nature reserve (314000) | 648–795 | 0–73 | restriction=restricted_entry category=Naturreservat |
| `Alesund.NatureReserve.Giske.1` | Nature reserve (314000) | 0–127 | 226–482 | restriction=restricted_entry category=Dyrelivsfredning |
| `Alesund.NatureReserve.Blindheimsvik.1` | Nature reserve (314000) | 274–291 | 0–9 | restriction=restricted_entry category=Dyrefredningsomrade |

## Local rules (Legata)

Generated from the zones above by `.claude/skills/mapgen/legata_site.py` (MAPGEN §4.3); regenerate, do not edit.

No zone in this map carries an enforceable restriction, so no rule file is generated.

## Sources

- [Lovdata – Forskrift om fartsbegrensninger i sjø](https://lovdata.no/dokument/SFO/forskrift/2020-06-26-1407)
- [Kystverket – Kommunale fartsgrenser (§8)](https://www.kystverket.no/regelverk/havne--og-farvannsloven/kommunale-forskrifter-etter-havne--og-farvannsloven-2025/kommunale-fartsgrenser----8/)
- [Kystverket – Regulations relating to use of VTS areas and fairways (Sjøtrafikkforskriften, English)](https://www.kystverket.no/globalassets/navigasjon-og-overvakning/engelsk/vts/engelsk-oversettelse-av-sjotrafikkforskriften-gjeldende-fra-1.november-2022.pdf/download)
- [Kystverket WFS (layers 151 anchorages, 102 caution areas, 706 TSS, 762 speed limits)](https://services.kystverket.no/wfs.ashx?service=WFS&request=GetCapabilities)
- [Lovdata – Forskrift om forbudsområder i sjø (2024-06-24-1311)](https://lovdata.no/dokument/SF/forskrift/2024-06-24-1311)
- [Geonorge – Forbudsområder i sjø WFS (Forsvarsbygg)](http://wfs.geonorge.no/skwms1/wfs.militereforbudsomradersjo?service=WFS&request=GetCapabilities)
- [Miljødirektoratet – Naturvernområder (vern/MapServer)](https://kart.miljodirektoratet.no/arcgis/rest/services/vern/MapServer)
- [Lovdata – Forskrift om statlige fartsgrenser på sjøen (2021-12-16-3622)](https://lovdata.no/dokument/SF/forskrift/2021-12-16-3622)
