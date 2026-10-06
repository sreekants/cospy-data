# Restricted and regulated sea zones – Oslo

**Location:** `no/oslo`  
**Compiled:** 2026-10-06, from the web sources listed below. Check current Notices to Mariners and national charts before relying on positions or rules.

## Zones and rules found

| Zone | Kind | Rule |
|---|---|---|
| Oslofjord TSS caution area (aktsomhetsområde) | Caution area | Part of the Oslofjord TSS (Kystverket layer 706). |
| Asker protected area | Area to avoid, 0 kn | Kystverket speed limit of 0 kn: no motorised traffic. |
| Speed limits (Oslo, Frogn, Asker, Nesodden ...) | Speed limit | Kystverket layer 762 for commercial vessels, already drawn in the map as speed-limited fairways (made disjoint, strictest wins). |
| Oslo Havn ISPS facilities | Port security | International terminals under the ISPS Code, drawn as harbour zones. |
| Military restricted areas at sea (forbudsområder) | Military area | Forskrift om forbudsområder i sjø (2024): unauthorised entry, anchoring, diving, sea surveys, fishing and trawling or bottom gear are prohibited. Drawn from Forsvarsbygg's dataset where one lies in the frame. |
| State and municipal speed limits at sea | Speed limit | Set under the Harbour and Fairways Act (§7 state, §8 municipal); Kystverket publishes them (layer 762, commercial vessels). Typical: 5 kn in harbour inlets, narrow sounds and near beaches. |
| Anchorage and caution areas | Anchorage / caution | Kystverket ankringsområder (layer 151) and aktsomhetsområder under Sjøtrafikkforskriften §150-151 (layer 102). |
| Protected areas (naturvernområder) | Nature reserve | Marine protected areas, nature reserves and bird sanctuaries from Miljødirektoratet; each area's own regulation (verneforskrift) sets traffic, anchoring and seasonal rules, and only those researched are turned into rules. |

**Gaps:** The nearest military restricted area, Horten, lies south of the frame.

## Zones in the map (`config/map/no/oslo/sea.s3db`)

- map.source.internal_waters: Marine Regions (VLIZ) eez_internal_waters, Norway, CC-BY 4.0
- map.source.fairway: Kystverket WFS layer_554 Farledsareal, NLOD
- map.source.speed_limit: Kystverket WFS layer_762 fartsgrenser for naeringsfartoy, made disjoint (strictest wins), NLOD
- map.source.harbour: OSM landuse=harbour (1 ways, extended 300 m seaward), ODbL + 14 Kystverket ISPS facilities in Oslo Havn, each +500 m (layer_420, NLOD)
- map.source.restricted: OpenStreetMap seamark restricted_area (every restriction and category; recreation areas left out), military_area, anchorage, precautionary_area, ODbL; classified by mapgen zones.py; Kystverket WFS layer_151 ankringsområder, layer_102 aktsomhetsområder, layer_762 fartsgrenser næringsfartøy, layer_1108, layer_522/523 (NLOD); Forsvarsbygg militære forbudsområder i sjø (forskrift 2024-06-24-1311); Miljødirektoratet naturvernområder; Fiskeridirektoratet korallrev forbudsområder (forskrift 2016-01-08-8)

Zone shapes other than the TSS (see `rules.tss.md`), in map cells, with the settings the local rules read:

| Zone | Type | x | y | Settings |
|---|---|---|---|---|
| `Oslo.InternalWaters.1` | Internal waters (204000) | 0–102 | 562–750 |  |
| `Oslo.InternalWaters.2` | Internal waters (204000) | 477–512 | 374–544 |  |
| `Oslo.InternalWaters.3` | Internal waters (204000) | 181–385 | 374–750 |  |
| `Oslo.InternalWaters.4` | Internal waters (204000) | 355–573 | 0–376 |  |
| `Oslo.InternalWaters.5` | Internal waters (204000) | 334–357 | 76–93 |  |
| `Oslo.InternalWaters.6` | Internal waters (204000) | 139–357 | 28–376 |  |
| `Oslo.Harbour.1` | Harbour (301000) | 299–315 | 656–672 |  |
| `Oslo.Harbour.2` | Harbour (301000) | 520–548 | 67–94 |  |
| `Oslo.Harbour.3` | Harbour (301000) | 494–535 | 8–71 |  |
| `Oslo.Harbour.4` | Harbour (301000) | 453–486 | 1–27 |  |
| `Oslo.Fairway.1` | Waterway / fairway (302000) | 0–72 | 612–750 |  |
| `Oslo.Fairway.2` | Waterway / fairway (302000) | 172–521 | 17–750 |  |
| `Oslo.SpeedLimit.Frogn.5kn.1` | Waterway / fairway (302000) | 342–351 | 685–695 | speed_limit=5 |
| `Oslo.SpeedLimit.Frogn.5kn.2` | Waterway / fairway (302000) | 303–390 | 510–750 | speed_limit=5 |
| `Oslo.SpeedLimit.Frogn.5kn.3` | Waterway / fairway (302000) | 249–346 | 532–676 | speed_limit=5 |
| `Oslo.SpeedLimit.Frogn.5kn.4` | Waterway / fairway (302000) | 307–320 | 582–601 | speed_limit=5 |
| `Oslo.SpeedLimit.Frogn.5kn.5` | Waterway / fairway (302000) | 270–299 | 486–538 | speed_limit=5 |
| `Oslo.SpeedLimit.Frogn.5kn.6` | Waterway / fairway (302000) | 472–506 | 376–545 | speed_limit=5 |
| `Oslo.SpeedLimit.Frogn.5kn.7` | Waterway / fairway (302000) | 265–281 | 422–464 | speed_limit=5 |
| `Oslo.SpeedLimit.Nesodden.5kn.1` | Waterway / fairway (302000) | 291–482 | 112–510 | speed_limit=5 |
| `Oslo.SpeedLimit.Nesodden.5kn.2` | Waterway / fairway (302000) | 487–507 | 154–173 | speed_limit=5 |
| `Oslo.SpeedLimit.Nesodden.5kn.3` | Waterway / fairway (302000) | 482–497 | 146–160 | speed_limit=5 |
| `Oslo.SpeedLimit.Nesodden.5kn.4` | Waterway / fairway (302000) | 471–490 | 129–147 | speed_limit=5 |
| `Oslo.SpeedLimit.Nesodden.5kn.5` | Waterway / fairway (302000) | 469–500 | 99–128 | speed_limit=5 |
| `Oslo.SpeedLimit.Asker-Bærum.8kn.1` | Waterway / fairway (302000) | 294–304 | 201–212 | speed_limit=8 |
| `Oslo.SpeedLimit.Asker-Bærum.8kn.2` | Waterway / fairway (302000) | 0–103 | 557–750 | speed_limit=8 |
| `Oslo.SpeedLimit.Asker-Bærum.8kn.3` | Waterway / fairway (302000) | 228–240 | 519–538 | speed_limit=8 |
| `Oslo.SpeedLimit.Asker-Bærum.8kn.4` | Waterway / fairway (302000) | 220–232 | 501–514 | speed_limit=8 |
| `Oslo.SpeedLimit.Asker-Bærum.8kn.5` | Waterway / fairway (302000) | 242–262 | 576–641 | speed_limit=8 |
| `Oslo.SpeedLimit.Asker-Bærum.8kn.6` | Waterway / fairway (302000) | 242–349 | 633–750 | speed_limit=8 |
| `Oslo.SpeedLimit.Asker-Bærum.8kn.7` | Waterway / fairway (302000) | 242–380 | 5–186 | speed_limit=8 |
| `Oslo.SpeedLimit.Asker-Bærum.8kn.8` | Waterway / fairway (302000) | 178–244 | 357–659 | speed_limit=8 |
| `Oslo.SpeedLimit.Asker-Bærum.8kn.9` | Waterway / fairway (302000) | 136–244 | 58–359 | speed_limit=8 |
| `Oslo.SpeedLimit.Asker-Bærum.8kn.10` | Waterway / fairway (302000) | 178–191 | 253–266 | speed_limit=8 |
| `Oslo.SpeedLimit.Asker-Bærum.8kn.11` | Waterway / fairway (302000) | 223–241 | 201–218 | speed_limit=8 |
| `Oslo.SpeedLimit.Oslo.8kn.1` | Waterway / fairway (302000) | 509–575 | 113–229 | speed_limit=8 |
| `Oslo.SpeedLimit.Oslo.8kn.2` | Waterway / fairway (302000) | 373–569 | 0–115 | speed_limit=8 |
| `Oslo.SpeedLimit.Nesodden.25kn.1` | Waterway / fairway (302000) | 299–335 | 274–401 | speed_limit=25 |
| `Oslo.SpeedLimit.Nesodden.25kn.2` | Waterway / fairway (302000) | 493–520 | 97–232 | speed_limit=25 |
| `Oslo.SpeedLimit.Nesodden.25kn.3` | Waterway / fairway (302000) | 410–495 | 110–375 | speed_limit=25 |
| `Oslo.SpeedLimit.Nesodden.25kn.4` | Waterway / fairway (302000) | 319–364 | 187–258 | speed_limit=25 |
| `Oslo.SpeedLimit.Nesodden.25kn.5` | Waterway / fairway (302000) | 356–386 | 128–187 | speed_limit=25 |
| `Oslo.SpeedLimit.Oslo.25kn.1` | Waterway / fairway (302000) | 456–460 | 52–59 | speed_limit=25 |
| `Oslo.SpeedLimit.Oslo.25kn.2` | Waterway / fairway (302000) | 443–526 | 13–53 | speed_limit=25 |
| `Oslo.SpeedLimit.Oslo.25kn.3` | Waterway / fairway (302000) | 488–497 | 62–69 | speed_limit=25 |
| `Oslo.SpeedLimit.Oslo.25kn.4` | Waterway / fairway (302000) | 484–569 | 71–223 | speed_limit=25 |
| `Oslo.SpeedLimit.Oslo.25kn.5` | Waterway / fairway (302000) | 380–475 | 5–102 | speed_limit=25 |
| `Oslo.TSS.CautionArea.1` | Precautionary / restricted area (310000) | 250–383 | 115–750 |  |
| `Oslo.PrecautionaryArea.1.1` | Precautionary / restricted area (310000) | 57–73 | 656–672 |  |
| `Oslo.Protected.Asker.0kn.1` | Area to avoid (311000) | 238–247 | 149–162 | speed_limit=0 |
| `Oslo.NatureReserve.Spannslokket.1` | Nature reserve (314000) | 211–212 | 181–183 | restriction=restricted_entry category=Naturreservat |
| `Oslo.NatureReserve.Galteskjaer.1` | Nature reserve (314000) | 460–465 | 48–52 | restriction=restricted_entry category=BiotopvernVilt |
| `Oslo.NatureReserve.Storskjaer.1` | Nature reserve (314000) | 372–376 | 590–593 | restriction=restricted_entry category=Dyrefredningsomrade |
| `Oslo.NatureReserve.Ulvungene.1` | Nature reserve (314000) | 231–235 | 105–109 | restriction=restricted_entry category=Naturreservat |
| `Oslo.NatureReserve.Bjerkas.1` | Nature reserve (314000) | 182–184 | 336–337 | restriction=restricted_entry category=Naturreservat |
| `Oslo.NatureReserve.OstreHovedoya.1` | Nature reserve (314000) | 507–509 | 42–43 | restriction=restricted_entry category=Naturreservat |
| `Oslo.NatureReserve.OstreHovedoya.2` | Nature reserve (314000) | 498–500 | 56–57 | restriction=restricted_entry category=Naturreservat |
| `Oslo.NatureReserve.NordreSkjaelholmen.1` | Nature reserve (314000) | 487–491 | 152–156 | restriction=restricted_entry category=Naturreservat |
| `Oslo.NatureReserve.Hjelpskjaera.1` | Nature reserve (314000) | 233–238 | 620–624 | restriction=restricted_entry category=BiotopvernVilt |
| `Oslo.NatureReserve.LilleBjerkoyskjaer.1` | Nature reserve (314000) | 195–198 | 249–253 | restriction=restricted_entry category=Naturreservat |
| `Oslo.NatureReserve.MalmoyaOgMalmoykalven.1` | Nature reserve (314000) | 512–547 | 123–142 | restriction=restricted_entry category=Naturreservat |
| `Oslo.NatureReserve.Smaskjaer.1` | Nature reserve (314000) | 345–349 | 688–693 | restriction=restricted_entry category=Dyrefredningsomrade |
| `Oslo.NatureReserve.SlemmestadasenMorberg.1` | Nature reserve (314000) | 185–186 | 385–392 | restriction=restricted_entry category=Naturreservat |
| `Oslo.NatureReserve.Spirodden.1` | Nature reserve (314000) | 168–176 | 229–238 | restriction=restricted_entry category=Naturreservat |
| `Oslo.NatureReserve.Boroya.1` | Nature reserve (314000) | 240–264 | 90–108 | restriction=restricted_entry category=Naturreservat |
| `Oslo.NatureReserve.Boroya.2` | Nature reserve (314000) | 253–260 | 87–92 | restriction=restricted_entry category=Naturreservat |
| `Oslo.NatureReserve.Boroya.3` | Nature reserve (314000) | 260–261 | 87–88 | restriction=restricted_entry category=Naturreservat |
| `Oslo.NatureReserve.Boroya.4` | Nature reserve (314000) | 257–258 | 92–93 | restriction=restricted_entry category=Naturreservat |
| `Oslo.NatureReserve.Boroya.5` | Nature reserve (314000) | 251–252 | 93–94 | restriction=restricted_entry category=Naturreservat |
| `Oslo.NatureReserve.Boroya.6` | Nature reserve (314000) | 246–247 | 108–109 | restriction=restricted_entry category=Naturreservat |
| `Oslo.NatureReserve.Boroya.7` | Nature reserve (314000) | 244–246 | 109–110 | restriction=restricted_entry category=Naturreservat |
| `Oslo.NatureReserve.Koksabukta.1` | Nature reserve (314000) | 308–334 | 63–77 | restriction=restricted_entry category=Naturreservat |
| `Oslo.NatureReserve.Stakaskjaer.1` | Nature reserve (314000) | 364–366 | 610–613 | restriction=restricted_entry category=BiotopvernVilt |
| `Oslo.NatureReserve.Padda.1` | Nature reserve (314000) | 551–556 | 98–102 | restriction=restricted_entry category=Plantefredningsomraade |
| `Oslo.NatureReserve.Kaffeskjaer.1` | Nature reserve (314000) | 398–402 | 10–16 | restriction=restricted_entry category=Dyrefredningsomrade |
| `Oslo.NatureReserve.NaturreservatSorForFuruholmen.1` | Nature reserve (314000) | 244–247 | 110–113 | restriction=restricted_entry category=Naturreservat |
| `Oslo.NatureReserve.Hovikskjaera.1` | Nature reserve (314000) | 224–232 | 498–510 | restriction=restricted_entry category=Dyrefredningsomrade |
| `Oslo.NatureReserve.Mokkalassene.1` | Nature reserve (314000) | 346–350 | 96–100 | restriction=restricted_entry category=Naturreservat |
| `Oslo.NatureReserve.Bleikoya.1` | Nature reserve (314000) | 511–524 | 55–63 | restriction=restricted_entry category=Naturreservat |
| `Oslo.NatureReserve.Sorbyskogen.1` | Nature reserve (314000) | 458–459 | 260–266 | restriction=restricted_entry category=Naturreservat |
| `Oslo.NatureReserve.Langskjaer.1` | Nature reserve (314000) | 295–299 | 68–73 | restriction=restricted_entry category=Naturreservat |
| `Oslo.NatureReserve.Storskjaer46.1` | Nature reserve (314000) | 341–346 | 706–712 | restriction=restricted_entry category=Naturreservat |
| `Oslo.NatureReserve.Nakholmen.1` | Nature reserve (314000) | 446–447 | 63–65 | restriction=restricted_entry category=Naturreservat |
| `Oslo.NatureReserve.Nakholmen.2` | Nature reserve (314000) | 446–447 | 66–67 | restriction=restricted_entry category=Naturreservat |
| `Oslo.NatureReserve.Nakholmen.3` | Nature reserve (314000) | 447–450 | 67–73 | restriction=restricted_entry category=Naturreservat |
| `Oslo.NatureReserve.Nakholmen.4` | Nature reserve (314000) | 450–452 | 70–72 | restriction=restricted_entry category=Naturreservat |
| `Oslo.NatureReserve.Nakholmen.5` | Nature reserve (314000) | 449–452 | 68–70 | restriction=restricted_entry category=Naturreservat |
| `Oslo.NatureReserve.Nakholmen.6` | Nature reserve (314000) | 448–450 | 57–58 | restriction=restricted_entry category=Naturreservat |
| `Oslo.NatureReserve.Nakholmen.7` | Nature reserve (314000) | 443–444 | 58–59 | restriction=restricted_entry category=Naturreservat |
| `Oslo.NatureReserve.Nakholmen.8` | Nature reserve (314000) | 444–446 | 59–60 | restriction=restricted_entry category=Naturreservat |
| `Oslo.NatureReserve.Nakholmen.9` | Nature reserve (314000) | 441–444 | 65–68 | restriction=restricted_entry category=Naturreservat |
| `Oslo.NatureReserve.Selskjaer.1` | Nature reserve (314000) | 286–290 | 79–84 | restriction=restricted_entry category=Dyrefredningsomrade |
| `Oslo.NatureReserve.Kaninoya.1` | Nature reserve (314000) | 540–544 | 109–115 | restriction=restricted_entry category=Naturreservat |
| `Oslo.NatureReserve.Gasoya.1` | Nature reserve (314000) | 300–301 | 162–163 | restriction=restricted_entry category=Naturreservat |
| `Oslo.NatureReserve.Gasoya.2` | Nature reserve (314000) | 299–300 | 163–164 | restriction=restricted_entry category=Naturreservat |
| `Oslo.NatureReserve.Gasoya.3` | Nature reserve (314000) | 288–291 | 170–172 | restriction=restricted_entry category=Naturreservat |
| `Oslo.NatureReserve.Geitungsholmen.1` | Nature reserve (314000) | 186–191 | 370–374 | restriction=restricted_entry category=Naturreservat |
| `Oslo.NatureReserve.Hovedoya.1` | Nature reserve (314000) | 485–515 | 34–60 | restriction=restricted_entry category=Landskapsvernomraade |
| `Oslo.NatureReserve.Skogerholmen.1` | Nature reserve (314000) | 229–234 | 191–197 | restriction=restricted_entry category=Naturreservat |
| `Oslo.NatureReserve.GressholmenRambergoya.1` | Nature reserve (314000) | 473–493 | 70–95 | restriction=restricted_entry category=Naturreservat |
| `Oslo.NatureReserve.Kjeholmen.1` | Nature reserve (314000) | 291–299 | 93–101 | restriction=restricted_entry category=Naturreservat |
| `Oslo.NatureReserve.Fyrsteila.1` | Nature reserve (314000) | 311–317 | 267–272 | restriction=restricted_entry category=Plantefredningsomraade |
| `Oslo.NatureReserve.Geitholmen.1` | Nature reserve (314000) | 361–364 | 82–84 | restriction=restricted_entry category=Naturreservat |
| `Oslo.NatureReserve.Husbergoya.1` | Nature reserve (314000) | 482–486 | 133–137 | restriction=restricted_entry category=Naturreservat |
| `Oslo.NatureReserve.Husbergoya.2` | Nature reserve (314000) | 476–483 | 134–142 | restriction=restricted_entry category=Naturreservat |
| `Oslo.NatureReserve.VestreHovedoya.1` | Nature reserve (314000) | 486–488 | 44–47 | restriction=restricted_entry category=Naturreservat |
| `Oslo.NatureReserve.StoreHerbern.1` | Nature reserve (314000) | 440–444 | 40–45 | restriction=restricted_entry category=Naturreservat |
| `Oslo.NatureReserve.Kutangen.1` | Nature reserve (314000) | 178–180 | 356–358 | restriction=restricted_entry category=Naturminne |
| `Oslo.NatureReserve.Lokenesskogen.1` | Nature reserve (314000) | 157–160 | 219–225 | restriction=restricted_entry category=Naturreservat |
| `Oslo.NatureReserve.Lokenesskogen.2` | Nature reserve (314000) | 162–168 | 214–217 | restriction=restricted_entry category=Naturreservat |
| `Oslo.NatureReserve.Lokenesskogen.3` | Nature reserve (314000) | 150–152 | 225–227 | restriction=restricted_entry category=Naturreservat |
| `Oslo.NatureReserve.Hovedoya78.1` | Nature reserve (314000) | 491–492 | 56–58 | restriction=restricted_entry category=LandskapsvernomraadePlantelivsfredning |
| `Oslo.NatureReserve.Langara.1` | Nature reserve (314000) | 241–254 | 167–176 | restriction=restricted_entry category=Naturreservat |
| `Oslo.NatureReserve.Langara.2` | Nature reserve (314000) | 214–222 | 182–187 | restriction=restricted_entry category=Naturreservat |
| `Oslo.NatureReserve.Alv.1` | Nature reserve (314000) | 298–301 | 82–86 | restriction=restricted_entry category=Naturreservat |
| `Oslo.NatureReserve.Terneholmen.1` | Nature reserve (314000) | 229–234 | 184–190 | restriction=restricted_entry category=Naturreservat |
| `Oslo.NatureReserve.Sandholmen.1` | Nature reserve (314000) | 332–336 | 77–80 | restriction=restricted_entry category=Naturreservat |
| `Oslo.NatureReserve.Tuskjaer.1` | Nature reserve (314000) | 497–500 | 466–470 | restriction=restricted_entry category=Dyrefredningsomrade |
| `Oslo.NatureReserve.Flatskjaer.1` | Nature reserve (314000) | 499–503 | 474–479 | restriction=restricted_entry category=Dyrefredningsomrade |
| `Oslo.NatureReserve.Viernbukta.1` | Nature reserve (314000) | 238–247 | 150–162 | restriction=restricted_entry category=Naturreservat |
| `Oslo.NatureReserve.SondreSkjaelholmen.1` | Nature reserve (314000) | 491–499 | 164–168 | restriction=restricted_entry category=Naturreservat |
| `Oslo.NatureReserve.Hvalskjaeret.1` | Nature reserve (314000) | 172–176 | 196–199 | restriction=restricted_entry category=Naturreservat |
| `Oslo.NatureReserve.TorvoyaOgBjerkholmen.1` | Nature reserve (314000) | 287–308 | 65–86 | restriction=restricted_entry category=Naturreservat |
| `Oslo.NatureReserve.Dokkskjaeret.1` | Nature reserve (314000) | 345–348 | 82–86 | restriction=restricted_entry category=BiotopvernVilt |
| `Oslo.NatureReserve.Lagmannsholmen.1` | Nature reserve (314000) | 363–365 | 43–47 | restriction=restricted_entry category=Naturreservat |
| `Oslo.NatureReserve.Prinseskjaer.1` | Nature reserve (314000) | 251–256 | 114–118 | restriction=restricted_entry category=Naturreservat |
| `Oslo.NatureReserve.Kalvoya.1` | Nature reserve (314000) | 231–235 | 75–77 | restriction=restricted_entry category=Naturreservat |
| `Oslo.NatureReserve.Kalvoya.2` | Nature reserve (314000) | 227–231 | 77–79 | restriction=restricted_entry category=Naturreservat |
| `Oslo.NatureReserve.Svartskjaera.1` | Nature reserve (314000) | 295–301 | 123–130 | restriction=restricted_entry category=Naturreservat |
| `Oslo.NatureReserve.Knerten.1` | Nature reserve (314000) | 320–328 | 261–268 | restriction=restricted_entry category=Naturreservat |
| `Oslo.NatureReserve.Bjerkoya.1` | Nature reserve (314000) | 201–203 | 233–236 | restriction=restricted_entry category=Naturminne |
| `Oslo.NatureReserve.NordreNaersnes.1` | Nature reserve (314000) | 183–185 | 424–426 | restriction=restricted_entry category=Naturminne |
| `Oslo.NatureReserve.Vendelholmene.1` | Nature reserve (314000) | 230–239 | 136–142 | restriction=restricted_entry category=Naturreservat |
| `Oslo.NatureReserve.Lilleoya.1` | Nature reserve (314000) | 299–308 | 50–60 | restriction=restricted_entry category=Naturreservat |
| `Oslo.NatureReserve.Demmekilskjaera.1` | Nature reserve (314000) | 214–216 | 512–517 | restriction=restricted_entry category=BiotopvernVilt |
| `Oslo.NatureReserve.YtreVassholmen.1` | Nature reserve (314000) | 343–347 | 109–114 | restriction=restricted_entry category=Naturreservat |
| `Oslo.NatureReserve.Krakholmen.1` | Nature reserve (314000) | 164–167 | 255–259 | restriction=restricted_entry category=Dyrefredningsomrade |
| `Oslo.NatureReserve.Paradisbukta.1` | Nature reserve (314000) | 309–314 | 107–110 | restriction=restricted_entry category=Naturreservat |
| `Oslo.NatureReserve.Killingen.1` | Nature reserve (314000) | 394–395 | 0–2 | restriction=restricted_entry category=Naturminne |
| `Oslo.NatureReserve.NordostreAskeskjaer.1` | Nature reserve (314000) | 314–318 | 585–590 | restriction=restricted_entry category=Naturreservat |
| `Oslo.NatureReserve.Ulykkesskjaer.1` | Nature reserve (314000) | 225–229 | 102–105 | restriction=restricted_entry category=Naturreservat |
| `Oslo.NatureReserve.Sundbyholmene.1` | Nature reserve (314000) | 231–237 | 523–535 | restriction=restricted_entry category=Naturreservat |
| `Oslo.NatureReserve.Huk.1` | Nature reserve (314000) | 420–421 | 49–51 | restriction=restricted_entry category=Naturminne |
| `Oslo.NatureReserve.Huk.2` | Nature reserve (314000) | 418–419 | 46–51 | restriction=restricted_entry category=Naturminne |
| `Oslo.NatureReserve.Huk.3` | Nature reserve (314000) | 416–417 | 46–47 | restriction=restricted_entry category=Naturminne |
| `Oslo.NatureReserve.Heggholmen.1` | Nature reserve (314000) | 469–477 | 75–87 | restriction=restricted_entry category=Naturreservat |
| `Oslo.NatureReserve.Dyna.1` | Nature reserve (314000) | 191–195 | 382–385 | restriction=restricted_entry category=Naturreservat |
| `Oslo.NatureReserve.Dyna.2` | Nature reserve (314000) | 189–193 | 389–393 | restriction=restricted_entry category=Naturreservat |
| `Oslo.NatureReserve.Dyna.3` | Nature reserve (314000) | 187–190 | 383–387 | restriction=restricted_entry category=Naturreservat |
| `Oslo.NatureReserve.Terneskjaer.1` | Nature reserve (314000) | 306–309 | 157–161 | restriction=restricted_entry category=Naturreservat |
| `Oslo.NatureReserve.Rogneskjaer.1` | Nature reserve (314000) | 158–163 | 256–261 | restriction=restricted_entry category=Dyrefredningsomrade |
| `Oslo.NatureReserve.Katterompa.1` | Nature reserve (314000) | 210–214 | 175–177 | restriction=restricted_entry category=Plantefredningsomraade |
| `Oslo.NatureReserve.Nakkeskjaer.1` | Nature reserve (314000) | 445–448 | 69–72 | restriction=restricted_entry category=BiotopvernVilt |
| `Oslo.NatureReserve.Kavringen.1` | Nature reserve (314000) | 483–486 | 30–34 | restriction=restricted_entry category=Naturreservat |
| `Oslo.NatureReserve.Bjerkasholmen.1` | Nature reserve (314000) | 184–185 | 341–342 | restriction=restricted_entry category=Naturminne |
| `Oslo.NatureReserve.Storoykilen.1` | Nature reserve (314000) | 307–319 | 53–65 | restriction=restricted_entry category=Naturreservat |
| `Oslo.NatureReserve.Graoya.1` | Nature reserve (314000) | 227–228 | 568–571 | restriction=restricted_entry category=Naturreservat |
| `Oslo.NatureReserve.Graoya.2` | Nature reserve (314000) | 241–246 | 600–605 | restriction=restricted_entry category=Naturreservat |
| `Oslo.NatureReserve.Graoya.3` | Nature reserve (314000) | 244–246 | 613–616 | restriction=restricted_entry category=Naturreservat |
| `Oslo.NatureReserve.Graoya.4` | Nature reserve (314000) | 235–244 | 605–613 | restriction=restricted_entry category=Naturreservat |
| `Oslo.NatureReserve.Mellemskjaer.1` | Nature reserve (314000) | 302–306 | 158–162 | restriction=restricted_entry category=Naturreservat |
| `Oslo.NatureReserve.SondreHaoya.1` | Nature reserve (314000) | 301–305 | 603–606 | restriction=restricted_entry category=Naturreservat |
| `Oslo.NatureReserve.SondreHaoya.2` | Nature reserve (314000) | 305–306 | 607–612 | restriction=restricted_entry category=Naturreservat |
| `Oslo.NatureReserve.SondreHaoya.3` | Nature reserve (314000) | 317–325 | 628–647 | restriction=restricted_entry category=Naturreservat |
| `Oslo.NatureReserve.SondreHaoya.4` | Nature reserve (314000) | 328–329 | 659–666 | restriction=restricted_entry category=Naturreservat |
| `Oslo.NatureReserve.SondreHaoya.5` | Nature reserve (314000) | 322–325 | 664–665 | restriction=restricted_entry category=Naturreservat |
| `Oslo.NatureReserve.SondreHaoya.6` | Nature reserve (314000) | 325–329 | 665–666 | restriction=restricted_entry category=Naturreservat |
| `Oslo.NatureReserve.SondreHaoya.7` | Nature reserve (314000) | 293–297 | 650–651 | restriction=restricted_entry category=Naturreservat |
| `Oslo.NatureReserve.SondreHaoya.8` | Nature reserve (314000) | 298–301 | 651–652 | restriction=restricted_entry category=Naturreservat |
| `Oslo.NatureReserve.SondreHaoya.9` | Nature reserve (314000) | 278–279 | 630–635 | restriction=restricted_entry category=Naturreservat |
| `Oslo.NatureReserve.SondreHaoya.10` | Nature reserve (314000) | 277–279 | 624–629 | restriction=restricted_entry category=Naturreservat |
| `Oslo.NatureReserve.SondreHaoya.11` | Nature reserve (314000) | 276–278 | 618–624 | restriction=restricted_entry category=Naturreservat |
| `Oslo.NatureReserve.SondreHaoya.12` | Nature reserve (314000) | 270–276 | 607–615 | restriction=restricted_entry category=Naturreservat |
| `Oslo.NatureReserve.Ildjernet.1` | Nature reserve (314000) | 371–373 | 191–192 | restriction=restricted_entry category=Naturreservat |
| `Oslo.NatureReserve.Oust.1` | Nature reserve (314000) | 261–274 | 106–111 | restriction=restricted_entry category=Naturreservat |
| `Oslo.NatureReserve.Oust.2` | Nature reserve (314000) | 262–263 | 140–141 | restriction=restricted_entry category=Naturreservat |
| `Oslo.NatureReserve.Oust.3` | Nature reserve (314000) | 252–258 | 114–121 | restriction=restricted_entry category=Naturreservat |
| `Oslo.NatureReserve.Oust.4` | Nature reserve (314000) | 252–256 | 120–124 | restriction=restricted_entry category=Naturreservat |
| `Oslo.NatureReserve.Oust.5` | Nature reserve (314000) | 253–256 | 124–131 | restriction=restricted_entry category=Naturreservat |
| `Oslo.NatureReserve.Oust.6` | Nature reserve (314000) | 255–259 | 131–138 | restriction=restricted_entry category=Naturreservat |
| `Oslo.NatureReserve.Lokeneshalvoya.1` | Nature reserve (314000) | 174–180 | 208–212 | restriction=restricted_entry category=Landskapsvernomraade |
| `Oslo.NatureReserve.Lokeneshalvoya.2` | Nature reserve (314000) | 175–177 | 223–224 | restriction=restricted_entry category=Landskapsvernomraade |
| `Oslo.NatureReserve.Trolldalen.1` | Nature reserve (314000) | 509–510 | 393–394 | restriction=restricted_entry category=Naturreservat |

## Local rules (Legata)

Generated from the zones above by `.claude/skills/mapgen/legata_site.py` (MAPGEN §4.3); regenerate, do not edit.

- `rule/tss.legata`: 4 clauses
- `rule/zones.legata`: 8 clauses
- `rule/score.yaml`: scorecard (placeholder penalties)
- `rules.yaml`: `maritime.regulation.internal.ZoneRule` modules

## Sources

- [Kystverket – Navigation rules (VTS)](https://www.kystverket.no/en/navigation-and-monitoring/vts---vessel-traffic-service/sailing-rules/)
- [Kystverket – Kommunale fartsgrenser (§8)](https://www.kystverket.no/regelverk/havne--og-farvannsloven/kommunale-forskrifter-etter-havne--og-farvannsloven-2025/kommunale-fartsgrenser----8/)
- [Kystverket – Regulations relating to use of VTS areas and fairways (Sjøtrafikkforskriften, English)](https://www.kystverket.no/globalassets/navigasjon-og-overvakning/engelsk/vts/engelsk-oversettelse-av-sjotrafikkforskriften-gjeldende-fra-1.november-2022.pdf/download)
- [Kystverket WFS (layers 151 anchorages, 102 caution areas, 706 TSS, 762 speed limits)](https://services.kystverket.no/wfs.ashx?service=WFS&request=GetCapabilities)
- [Lovdata – Forskrift om forbudsområder i sjø (2024-06-24-1311)](https://lovdata.no/dokument/SF/forskrift/2024-06-24-1311)
- [Geonorge – Forbudsområder i sjø WFS (Forsvarsbygg)](http://wfs.geonorge.no/skwms1/wfs.militereforbudsomradersjo?service=WFS&request=GetCapabilities)
- [Miljødirektoratet – Naturvernområder (vern/MapServer)](https://kart.miljodirektoratet.no/arcgis/rest/services/vern/MapServer)
- [Lovdata – Forskrift om statlige fartsgrenser på sjøen (2021-12-16-3622)](https://lovdata.no/dokument/SF/forskrift/2021-12-16-3622)
