# Restricted and regulated sea zones – Tautra

**Location:** `no/tautra`  
**Compiled:** 2026-10-06, from the web sources listed below. Check current Notices to Mariners and national charts before relying on positions or rules.

## Zones and rules found

| Zone | Kind | Rule |
|---|---|---|
| Tauterryggen marine verneområde (2013) | Marine protected area | Shallowest known cold-water coral reef (39 m). §3: anchoring is prohibited, as are other activities that affect the seabed (anchoring towards land is allowed, §4). Harvesting under the Marine Resources Act is exempt, so fishing is not banned. |
| Tautra naturreservat | Nature reserve (Ramsar 1985) | §3: motorised traffic on water is prohibited, and all passage from 1 April to 15 July. §6: licensed commercial fishing is allowed, motor boats at most 10 kn. |
| Svaet fugle-/dyrefredningsområde | Bird sanctuary | Seasonal protection of sea birds (forskrift 2003-12-19-1717). |
| Speed limits, Frosta | Speed limit | 5 and 10 kn (Kystverket layer 762), already drawn in the map. |
| Military restricted areas at sea (forbudsområder) | Military area | Forskrift om forbudsområder i sjø (2024): unauthorised entry, anchoring, diving, sea surveys, fishing and trawling or bottom gear are prohibited. Drawn from Forsvarsbygg's dataset where one lies in the frame. |
| State and municipal speed limits at sea | Speed limit | Set under the Harbour and Fairways Act (§7 state, §8 municipal); Kystverket publishes them (layer 762, commercial vessels). Typical: 5 kn in harbour inlets, narrow sounds and near beaches. |
| Anchorage and caution areas | Anchorage / caution | Kystverket ankringsområder (layer 151) and aktsomhetsområder under Sjøtrafikkforskriften §150-151 (layer 102). |
| Protected areas (naturvernområder) | Nature reserve | Marine protected areas, nature reserves and bird sanctuaries from Miljødirektoratet; each area's own regulation (verneforskrift) sets traffic, anchoring and seasonal rules, and only those researched are turned into rules. |

**Gaps:** Svaet's exact traffic rules are not modelled (restricted entry). The Tautra reserve's 1 Apr - 15 Jul ban for all passage is covered by the year-round ban on motorised traffic.

## Zones in the map (`config/map/no/tautra/sea.s3db`)

- map.source.internal_waters: Marine Regions (VLIZ) eez_internal_waters, Norway, CC-BY 4.0
- map.source.fairway: Kystverket WFS layer_554 Farledsareal, NLOD
- map.source.speed_limit: Kystverket WFS layer_762 fartsgrenser for naeringsfartoy, NLOD
- map.source.harbour: derived: convex hull of 7 Kystverket ISPS facilities in Trondheim byhavn (+500 m) and 4 'Trondheim havn' anchorages (+200 m); Kystverket WFS layer_420/151, NLOD
- map.source.restricted: OpenStreetMap seamark restricted_area (every restriction and category; recreation areas left out), military_area, anchorage, precautionary_area, ODbL; classified by mapgen zones.py; Kystverket WFS layer_151 ankringsområder, layer_102 aktsomhetsområder, layer_762 fartsgrenser næringsfartøy, layer_1108, layer_522/523 (NLOD); Forsvarsbygg militære forbudsområder i sjø (forskrift 2024-06-24-1311); Miljødirektoratet naturvernområder; Fiskeridirektoratet korallrev forbudsområder (forskrift 2016-01-08-8)

Zone shapes other than the TSS (see `rules.tss.md`), in map cells, with the settings the local rules read:

| Zone | Type | x | y | Settings |
|---|---|---|---|---|
| `Tautra.InternalWaters.5` | Internal waters (204000) | 0–251 | 17–500 |  |
| `Tautra.InternalWaters.6` | Internal waters (204000) | 251–253 | 14–248 |  |
| `Tautra.InternalWaters.7` | Internal waters (204000) | 251–253 | 287–500 |  |
| `Tautra.InternalWaters.8` | Internal waters (204000) | 253–361 | 0–500 |  |
| `Tautra.InternalWaters.9` | Internal waters (204000) | 361–491 | 251–500 |  |
| `Tautra.InternalWaters.10` | Internal waters (204000) | 361–491 | 0–213 |  |
| `Tautra.InternalWaters.11` | Internal waters (204000) | 251–267 | 251–267 |  |
| `Tautra.Fairway.3` | Waterway / fairway (302000) | 0–491 | 0–500 |  |
| `Tautra.SpeedLimit.Frosta.10kn.1` | Waterway / fairway (302000) | 205–274 | 274–323 | speed_limit=10 |
| `Tautra.SpeedLimit.Frosta.10kn.2` | Waterway / fairway (302000) | 242–258 | 240–256 | speed_limit=10 |
| `Tautra.SpeedLimit.Frosta.5kn.1` | Waterway / fairway (302000) | 231–333 | 248–352 | speed_limit=5 |
| `Tautra.Anchorage.StrindfjordenTrondheimsfjorden.1` | Anchorage (312000) | 13–130 | 399–482 |  |
| `Tautra.NatureReserve.Tautra.1` | Nature reserve (314000) | 205–274 | 274–323 | restriction=no_entry category=Naturreservat exemption=fishing speed_limit=10 |
| `Tautra.NatureReserve.Tautra.2` | Nature reserve (314000) | 242–258 | 240–256 | restriction=no_entry category=Naturreservat exemption=fishing speed_limit=10 |
| `Tautra.NatureReserve.Oksningen.1` | Nature reserve (314000) | 250–256 | 353–357 | restriction=restricted_entry category=Naturreservat |
| `Tautra.NatureReserve.Svaet4.1` | Nature reserve (314000) | 222–268 | 250–283 | restriction=restricted_entry category=Dyrelivsfredning |
| `Tautra.NatureReserve.Svaet4.2` | Nature reserve (314000) | 219–333 | 231–360 | restriction=restricted_entry category=Dyrelivsfredning |
| `Tautra.NatureReserve.VinnanOgVelvangen.1` | Nature reserve (314000) | 438–462 | 487–500 | restriction=restricted_entry category=Dyrefredningsomrade |
| `Tautra.NatureReserve.Tauterryggen.1` | Nature reserve (314000) | 60–365 | 179–363 | restriction=no_anchoring category=MarintVerneomraade |

## Local rules (Legata)

Generated from the zones above by `.claude/skills/mapgen/legata_site.py` (MAPGEN §4.3); regenerate, do not edit.

- `rule/zones.legata`: 5 clauses
- `rule/score.yaml`: scorecard (placeholder penalties)
- `rules.yaml`: `maritime.regulation.internal.ZoneRule` modules

## Sources

- [Lovdata – Tauterryggen marine verneområde (2013-06-21-693)](https://lovdata.no/dokument/LF/forskrift/2013-06-21-693)
- [Lovdata – Tautra naturreservat and Svaet (2003-12-19-1717)](https://lovdata.no/dokument/LF/forskrift/2003-12-19-1717)
- [NINA – Fishing gear entangle protected cold-water corals](https://www.nina.no/en/news/all-articles-and-news/fishing-gear-entangle-norways-protected-cold-water-corals)
- [Wikipedia – Tautra](https://en.wikipedia.org/wiki/Tautra)
- [Kystverket – Regulations relating to use of VTS areas and fairways (Sjøtrafikkforskriften, English)](https://www.kystverket.no/globalassets/navigasjon-og-overvakning/engelsk/vts/engelsk-oversettelse-av-sjotrafikkforskriften-gjeldende-fra-1.november-2022.pdf/download)
- [Kystverket WFS (layers 151 anchorages, 102 caution areas, 706 TSS, 762 speed limits)](https://services.kystverket.no/wfs.ashx?service=WFS&request=GetCapabilities)
- [Lovdata – Forskrift om forbudsområder i sjø (2024-06-24-1311)](https://lovdata.no/dokument/SF/forskrift/2024-06-24-1311)
- [Geonorge – Forbudsområder i sjø WFS (Forsvarsbygg)](http://wfs.geonorge.no/skwms1/wfs.militereforbudsomradersjo?service=WFS&request=GetCapabilities)
- [Miljødirektoratet – Naturvernområder (vern/MapServer)](https://kart.miljodirektoratet.no/arcgis/rest/services/vern/MapServer)
- [Lovdata – Forskrift om statlige fartsgrenser på sjøen (2021-12-16-3622)](https://lovdata.no/dokument/SF/forskrift/2021-12-16-3622)
