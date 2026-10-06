# Restricted and regulated sea zones – Trondheim

**Location:** `no/trondheim`  
**Compiled:** 2026-10-06, from the web sources listed below. Check current Notices to Mariners and national charts before relying on positions or rules.

## Zones and rules found

| Zone | Kind | Rule |
|---|---|---|
| Trondheim havn | Speed limit | Strict limits in the inner harbour and the channel by Munkholmen (typically 3-5 kn). |
| Trondheim havn international terminals | Port security | ISPS areas with special security rules. |
| Anchorages Trondheim havn 1, 2, 4 and Strindfjorden | Anchorage | Kystverket layer 151. |
| Tautra reserves and Tauterryggen MPA | Nature reserve | In the north-east of the frame; same rules as in no/tautra. |
| Military restricted areas at sea (forbudsområder) | Military area | Forskrift om forbudsområder i sjø (2024): unauthorised entry, anchoring, diving, sea surveys, fishing and trawling or bottom gear are prohibited. Drawn from Forsvarsbygg's dataset where one lies in the frame. |
| State and municipal speed limits at sea | Speed limit | Set under the Harbour and Fairways Act (§7 state, §8 municipal); Kystverket publishes them (layer 762, commercial vessels). Typical: 5 kn in harbour inlets, narrow sounds and near beaches. |
| Anchorage and caution areas | Anchorage / caution | Kystverket ankringsområder (layer 151) and aktsomhetsområder under Sjøtrafikkforskriften §150-151 (layer 102). |
| Protected areas (naturvernområder) | Nature reserve | Marine protected areas, nature reserves and bird sanctuaries from Miljødirektoratet; each area's own regulation (verneforskrift) sets traffic, anchoring and seasonal rules, and only those researched are turned into rules. |

**Gaps:** The Munkholmen channel limit has no published polygon and is not drawn.

## Zones in the map (`config/map/no/trondheim/sea.s3db`)

- map.source.internal_waters: Marine Regions (VLIZ) eez_internal_waters, Norway, CC-BY 4.0
- map.source.fairway: Kystverket WFS layer_554 Farledsareal, NLOD
- map.source.speed_limit: Kystverket WFS layer_762 fartsgrenser for naeringsfartoy, NLOD
- map.source.harbour: derived: convex hull of 7 Kystverket ISPS facilities in Trondheim byhavn (+500 m) and 4 'Trondheim havn' anchorages (+200 m); Kystverket WFS layer_420/151, NLOD
- map.source.restricted: OpenStreetMap seamark restricted_area (every restriction and category; recreation areas left out), military_area, anchorage, precautionary_area, ODbL; classified by mapgen zones.py; Kystverket WFS layer_151 ankringsområder, layer_102 aktsomhetsområder, layer_762 fartsgrenser næringsfartøy, layer_1108, layer_522/523 (NLOD); Forsvarsbygg militære forbudsområder i sjø (forskrift 2024-06-24-1311); Miljødirektoratet naturvernområder; Fiskeridirektoratet korallrev forbudsområder (forskrift 2016-01-08-8)

Zone shapes other than the TSS (see `rules.tss.md`), in map cells, with the settings the local rules read:

| Zone | Type | x | y | Settings |
|---|---|---|---|---|
| `Trondheim.InternalWaters.1` | Internal waters (204000) | 0–281 | 664–1000 |  |
| `Trondheim.InternalWaters.2` | Internal waters (204000) | 281–470 | 599–995 |  |
| `Trondheim.InternalWaters.3` | Internal waters (204000) | 470–484 | 604–995 |  |
| `Trondheim.InternalWaters.4` | Internal waters (204000) | 484–488 | 604–993 |  |
| `Trondheim.InternalWaters.5` | Internal waters (204000) | 488–760 | 334–996 |  |
| `Trondheim.InternalWaters.6` | Internal waters (204000) | 760–762 | 331–565 |  |
| `Trondheim.InternalWaters.7` | Internal waters (204000) | 760–762 | 604–960 |  |
| `Trondheim.InternalWaters.8` | Internal waters (204000) | 762–870 | 261–975 |  |
| `Trondheim.InternalWaters.9` | Internal waters (204000) | 870–1000 | 568–1000 |  |
| `Trondheim.InternalWaters.10` | Internal waters (204000) | 870–1000 | 203–530 |  |
| `Trondheim.InternalWaters.11` | Internal waters (204000) | 760–776 | 568–584 |  |
| `Trondheim.InternalWaters.12` | Internal waters (204000) | 0–48 | 72–220 |  |
| `Trondheim.InternalWaters.13` | Internal waters (204000) | 48–69 | 146–209 |  |
| `Trondheim.InternalWaters.14` | Internal waters (204000) | 69–79 | 141–183 |  |
| `Trondheim.InternalWaters.15` | Internal waters (204000) | 79–142 | 113–171 |  |
| `Trondheim.InternalWaters.16` | Internal waters (204000) | 48–139 | 25–99 |  |
| `Trondheim.Harbour.1` | Harbour (301000) | 429–470 | 935–996 |  |
| `Trondheim.Harbour.2` | Harbour (301000) | 470–484 | 928–998 |  |
| `Trondheim.Harbour.3` | Harbour (301000) | 484–489 | 994–997 |  |
| `Trondheim.Harbour.4` | Harbour (301000) | 484–489 | 926–993 |  |
| `Trondheim.Harbour.5` | Harbour (301000) | 489–511 | 922–995 |  |
| `Trondheim.Harbour.6.a` | Harbour (301000) | 511–537 | 924–987 |  |
| `Trondheim.Harbour.6.b` | Harbour (301000) | 511–514 | 985–987 |  |
| `Trondheim.Fairway.1` | Waterway / fairway (302000) | 0–74 | 61–127 |  |
| `Trondheim.Fairway.2` | Waterway / fairway (302000) | 0–486 | 638–1000 |  |
| `Trondheim.Fairway.3` | Waterway / fairway (302000) | 486–1000 | 254–976 |  |
| `Trondheim.SpeedLimit.Frosta.10kn.1` | Waterway / fairway (302000) | 714–783 | 591–640 | speed_limit=10 |
| `Trondheim.SpeedLimit.Frosta.10kn.2` | Waterway / fairway (302000) | 751–767 | 557–573 | speed_limit=10 |
| `Trondheim.SpeedLimit.Frosta.5kn.1` | Waterway / fairway (302000) | 740–842 | 565–669 | speed_limit=5 |
| `Trondheim.Anchorage.TrondheimHavn1.1` | Anchorage (312000) | 451–461 | 975–985 |  |
| `Trondheim.Anchorage.TrondheimHavn2.1` | Anchorage (312000) | 472–481 | 972–984 |  |
| `Trondheim.Anchorage.TrondheimHavn4.1` | Anchorage (312000) | 498–506 | 951–962 |  |
| `Trondheim.Anchorage.TrondheimHavn44.1` | Anchorage (312000) | 497–507 | 927–939 |  |
| `Trondheim.Anchorage.StrindfjordenTrondheimsfjorden.1` | Anchorage (312000) | 522–639 | 716–799 |  |
| `Trondheim.NatureReserve.VinnanOgVelvangen.1` | Nature reserve (314000) | 947–1000 | 804–874 | restriction=restricted_entry category=Dyrefredningsomrade |
| `Trondheim.NatureReserve.Tauterryggen.1` | Nature reserve (314000) | 569–874 | 497–680 | restriction=no_anchoring category=MarintVerneomraade |
| `Trondheim.NatureReserve.Tautra.1` | Nature reserve (314000) | 714–783 | 591–640 | restriction=no_entry category=Naturreservat exemption=fishing speed_limit=10 |
| `Trondheim.NatureReserve.Tautra.2` | Nature reserve (314000) | 751–767 | 557–573 | restriction=no_entry category=Naturreservat exemption=fishing speed_limit=10 |
| `Trondheim.NatureReserve.Raudkamlia.1` | Nature reserve (314000) | 975–978 | 212–213 | restriction=restricted_entry category=Naturreservat |
| `Trondheim.NatureReserve.Rodberget.1` | Nature reserve (314000) | 0–66 | 830–919 | restriction=restricted_entry category=MarintVerneomraade |
| `Trondheim.NatureReserve.Oksningen.1` | Nature reserve (314000) | 759–765 | 670–674 | restriction=restricted_entry category=Naturreservat |
| `Trondheim.NatureReserve.Svaet25.1` | Nature reserve (314000) | 732–777 | 567–600 | restriction=restricted_entry category=Dyrelivsfredning |
| `Trondheim.NatureReserve.Svaet25.2` | Nature reserve (314000) | 728–842 | 548–677 | restriction=restricted_entry category=Dyrelivsfredning |
| `Trondheim.NatureReserve.Berga.1` | Nature reserve (314000) | 64–67 | 840–841 | restriction=restricted_entry category=Naturreservat |

## Local rules (Legata)

Generated from the zones above by `.claude/skills/mapgen/legata_site.py` (MAPGEN §4.3); regenerate, do not edit.

- `rule/zones.legata`: 5 clauses
- `rule/score.yaml`: scorecard (placeholder penalties)
- `rules.yaml`: `maritime.regulation.internal.ZoneRule` modules

## Sources

- [Trondheim Havn – International terminals (ISPS)](https://trondheimhavn.no/en/tjeneste/access-to-isps-area/)
- [Ship O'Hoi – Speed limits at sea in Norway](https://www.ship-ohoi.com/en/articles/speed-limits-at-sea-norway)
- [Lovdata – Tauterryggen marine verneområde (2013-06-21-693)](https://lovdata.no/dokument/LF/forskrift/2013-06-21-693)
- [Lovdata – Tautra naturreservat (2003-12-19-1717)](https://lovdata.no/dokument/LF/forskrift/2003-12-19-1717)
- [Kystverket – Regulations relating to use of VTS areas and fairways (Sjøtrafikkforskriften, English)](https://www.kystverket.no/globalassets/navigasjon-og-overvakning/engelsk/vts/engelsk-oversettelse-av-sjotrafikkforskriften-gjeldende-fra-1.november-2022.pdf/download)
- [Kystverket WFS (layers 151 anchorages, 102 caution areas, 706 TSS, 762 speed limits)](https://services.kystverket.no/wfs.ashx?service=WFS&request=GetCapabilities)
- [Lovdata – Forskrift om forbudsområder i sjø (2024-06-24-1311)](https://lovdata.no/dokument/SF/forskrift/2024-06-24-1311)
- [Geonorge – Forbudsområder i sjø WFS (Forsvarsbygg)](http://wfs.geonorge.no/skwms1/wfs.militereforbudsomradersjo?service=WFS&request=GetCapabilities)
- [Miljødirektoratet – Naturvernområder (vern/MapServer)](https://kart.miljodirektoratet.no/arcgis/rest/services/vern/MapServer)
- [Lovdata – Forskrift om statlige fartsgrenser på sjøen (2021-12-16-3622)](https://lovdata.no/dokument/SF/forskrift/2021-12-16-3622)
