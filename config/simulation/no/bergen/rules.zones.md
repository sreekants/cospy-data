# Restricted and regulated sea zones – Bergen

**Location:** `no/bergen`  
**Compiled:** 2026-10-06, from the web sources listed below. Check current Notices to Mariners and national charts before relying on positions or rules.

## Zones and rules found

| Zone | Kind | Rule |
|---|---|---|
| Haakonsvern m/Knappen | Military area | Main naval base (Mathopen, 15 km SW of the centre). Forbidden to unauthorised traffic; pleasure craft moored inside may transit by the shortest route, keeping at least 100 m from military installations. |
| Laksevåg, Herdla, Korsnes, Heggerneset | Military areas | Further military restricted areas at sea in the frame (Forsvarsbygg). |
| Bergen Havn | Speed limit | Municipal speed regulations for the port's maritime area (Harbour and Fairways Act §8), published by Bergen Havn. |
| Military restricted areas at sea (forbudsområder) | Military area | Forskrift om forbudsområder i sjø (2024): unauthorised entry, anchoring, diving, sea surveys, fishing and trawling or bottom gear are prohibited. Drawn from Forsvarsbygg's dataset where one lies in the frame. |
| State and municipal speed limits at sea | Speed limit | Set under the Harbour and Fairways Act (§7 state, §8 municipal); Kystverket publishes them (layer 762, commercial vessels). Typical: 5 kn in harbour inlets, narrow sounds and near beaches. |
| Anchorage and caution areas | Anchorage / caution | Kystverket ankringsområder (layer 151) and aktsomhetsområder under Sjøtrafikkforskriften §150-151 (layer 102). |
| Protected areas (naturvernområder) | Nature reserve | Marine protected areas, nature reserves and bird sanctuaries from Miljødirektoratet; each area's own regulation (verneforskrift) sets traffic, anchoring and seasonal rules, and only those researched are turned into rules. |

**Gaps:** Zones are written to both sea.s3db and the high-definition sea-hifi2.s3db (kept to swap in for complex scenarios); the rules cover the zones of both. sea.s3db has the land table layout ([height] in the depth position) and holds Bergen.Land.* polygons; SeaBuilder reads the depth by position, so it loads. sea-hifi2.s3db keeps its own Kystverket speed limits; sea.s3db gets them as speed zones.

## Zones in the map (`config/map/no/bergen/sea.s3db`)

- map.source.internal_waters: Marine Regions (VLIZ) eez_internal_waters, Norway, CC-BY 4.0
- map.source.fairway: Kystverket WFS layer_554 Farledsareal, NLOD
- map.source.speed_limit: Kystverket WFS layer_762 fartsgrenser for naeringsfartoy, made disjoint (strictest wins), NLOD
- map.source.harbour: OSM landuse=harbour|port (2 ways, extended 300 m seaward), ODbL + 31 Kystverket ISPS facilities in Bergen Havn, each +500 m (layer_420, NLOD)
- map.source.restricted: OpenStreetMap seamark restricted_area (every restriction and category; recreation areas left out), military_area, anchorage, precautionary_area, ODbL; classified by mapgen zones.py; Kystverket WFS layer_151 ankringsområder, layer_102 aktsomhetsområder, layer_762 fartsgrenser næringsfartøy, layer_1108, layer_522/523 (NLOD); Forsvarsbygg militære forbudsområder i sjø (forskrift 2024-06-24-1311); Miljødirektoratet naturvernområder; Fiskeridirektoratet korallrev forbudsområder (forskrift 2016-01-08-8)

Zone shapes other than the TSS (see `rules.tss.md`), in map cells, with the settings the local rules read:

| Zone | Type | x | y | Settings |
|---|---|---|---|---|
| `Bergen.Anchorage.Sandvikflaket.1` | Anchorage (312000) | 725–741 | 443–458 |  |
| `Bergen.SpeedZone.Bergen8Kn.1` | Speed zone (313000) | 702–747 | 506–538 | speed_limit=8 |
| `Bergen.SpeedZone.Bergen5Kn.1` | Speed zone (313000) | 718–749 | 478–495 | speed_limit=5 |
| `Bergen.SpeedZone.Oygarden5Kn.1` | Speed zone (313000) | 536–562 | 905–936 | speed_limit=5 |
| `Bergen.SpeedZone.Oygarden5Kn.2` | Speed zone (313000) | 253–276 | 298–362 | speed_limit=5 |
| `Bergen.SpeedZone.Oygarden5Kn.3` | Speed zone (313000) | 188–203 | 111–124 | speed_limit=5 |
| `Bergen.NatureReserve.Hisdalen.1` | Nature reserve (314000) | 708–713 | 979–986 | restriction=restricted_entry category=Naturreservat |
| `Bergen.NatureReserve.Hisdalen.2` | Nature reserve (314000) | 729–736 | 967–973 | restriction=restricted_entry category=Naturreservat |
| `Bergen.NatureReserve.Hisdalen.3` | Nature reserve (314000) | 724–728 | 975–979 | restriction=restricted_entry category=Naturreservat |
| `Bergen.NatureReserve.Hisdalen.4` | Nature reserve (314000) | 722–724 | 979–981 | restriction=restricted_entry category=Naturreservat |
| `Bergen.NatureReserve.Hisdalen.5` | Nature reserve (314000) | 720–722 | 980–981 | restriction=restricted_entry category=Naturreservat |
| `Bergen.NatureReserve.Seloyskjera.1` | Nature reserve (314000) | 594–598 | 908–913 | restriction=restricted_entry category=Naturreservat |
| `Bergen.NatureReserve.Ertenoya.1` | Nature reserve (314000) | 358–377 | 199–221 | restriction=restricted_entry category=Naturreservat |
| `Bergen.NatureReserve.Lonoy.1` | Nature reserve (314000) | 144–163 | 649–668 | restriction=restricted_entry category=Naturreservat |
| `Bergen.NatureReserve.Ullebroten.1` | Nature reserve (314000) | 112–118 | 149–154 | restriction=restricted_entry category=Naturreservat |
| `Bergen.NatureReserve.Hanoyklubben.1` | Nature reserve (314000) | 408–422 | 316–328 | restriction=restricted_entry category=Naturreservat |
| `Bergen.NatureReserve.Ringaskjer.1` | Nature reserve (314000) | 549–553 | 680–683 | restriction=restricted_entry category=Naturreservat |
| `Bergen.NatureReserve.Laksholmen.1` | Nature reserve (314000) | 502–507 | 353–357 | restriction=restricted_entry category=Naturreservat |
| `Bergen.NatureReserve.Greipingen.1` | Nature reserve (314000) | 83–91 | 190–198 | restriction=restricted_entry category=Naturreservat |
| `Bergen.NatureReserve.LitleGasoySkarvoyOgStoreLambholm.1` | Nature reserve (314000) | 226–233 | 884–891 | restriction=restricted_entry category=Naturreservat |
| `Bergen.NatureReserve.LitleGasoySkarvoyOgStoreLambholm.2` | Nature reserve (314000) | 208–218 | 879–885 | restriction=restricted_entry category=Naturreservat |
| `Bergen.NatureReserve.LitleGasoySkarvoyOgStoreLambholm.3` | Nature reserve (314000) | 199–207 | 866–873 | restriction=restricted_entry category=Naturreservat |
| `Bergen.NatureReserve.Krossfjorden.1` | Nature reserve (314000) | 256–259 | 911–912 | restriction=restricted_entry category=MarintVerneomraade |
| `Bergen.NatureReserve.Krossfjorden.2` | Nature reserve (314000) | 45–310 | 850–1000 | restriction=restricted_entry category=MarintVerneomraade |
| `Bergen.NatureReserve.Krossfjorden.3` | Nature reserve (314000) | 501–568 | 968–1000 | restriction=restricted_entry category=MarintVerneomraade |
| `Bergen.MilitaryArea.Korsnes.1` | Military area (315000) | 612–619 | 996–1000 | restriction=no_entry,no_anchoring,no_fishing category=military |
| `Bergen.MilitaryArea.Laksevag.1` | Military area (315000) | 693–696 | 502–504 | restriction=no_entry,no_anchoring,no_fishing category=military |
| `Bergen.MilitaryArea.Heggerneset.1` | Military area (315000) | 393–534 | 70–161 | restriction=no_entry,no_anchoring,no_fishing category=military |
| `Bergen.MilitaryArea.Heggerneset.2` | Military area (315000) | 455–458 | 123–125 | restriction=no_entry,no_anchoring,no_fishing category=military |
| `Bergen.MilitaryArea.Herdla.1` | Military area (315000) | 220–253 | 0–22 | restriction=no_entry,no_anchoring,no_fishing category=military |
| `Bergen.MilitaryArea.HaakonsvernMKnappen.1` | Military area (315000) | 580–641 | 621–697 | restriction=no_entry,no_anchoring,no_fishing category=military |

## Local rules (Legata)

Generated from the zones above by `.claude/skills/mapgen/legata_site.py` (MAPGEN §4.3); regenerate, do not edit.

- `rule/zones.legata`: 21 clauses
- `rule/score.yaml`: scorecard (placeholder penalties)
- `rules.yaml`: `maritime.regulation.internal.ZoneRule` modules

## Sources

- [Bergen Havn – Marine speed limits](https://www.bergenhavn.no/en/marine-speed-limits)
- [Forsvaret – Ferdsel i forbudsområdet rundt Haakonsvern](https://www.forsvaret.no/om-forsvaret/tjenestesteder/haakonsvern)
- [Wikipedia – Haakonsvern Naval Base](https://en.wikipedia.org/wiki/Haakonsvern_Naval_Base)
- [Kystverket – Regulations relating to use of VTS areas and fairways (Sjøtrafikkforskriften, English)](https://www.kystverket.no/globalassets/navigasjon-og-overvakning/engelsk/vts/engelsk-oversettelse-av-sjotrafikkforskriften-gjeldende-fra-1.november-2022.pdf/download)
- [Kystverket WFS (layers 151 anchorages, 102 caution areas, 706 TSS, 762 speed limits)](https://services.kystverket.no/wfs.ashx?service=WFS&request=GetCapabilities)
- [Lovdata – Forskrift om forbudsområder i sjø (2024-06-24-1311)](https://lovdata.no/dokument/SF/forskrift/2024-06-24-1311)
- [Geonorge – Forbudsområder i sjø WFS (Forsvarsbygg)](http://wfs.geonorge.no/skwms1/wfs.militereforbudsomradersjo?service=WFS&request=GetCapabilities)
- [Miljødirektoratet – Naturvernområder (vern/MapServer)](https://kart.miljodirektoratet.no/arcgis/rest/services/vern/MapServer)
- [Lovdata – Forskrift om statlige fartsgrenser på sjøen (2021-12-16-3622)](https://lovdata.no/dokument/SF/forskrift/2021-12-16-3622)
