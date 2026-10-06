# Restricted and regulated sea zones – Helsinki

**Location:** `fi/helsinki`  
**Compiled:** 2026-10-05, from the web sources listed below. Check current Notices to Mariners and national charts before relying on positions or rules.

## Zones and rules found

| Zone | Kind | Rule |
|---|---|---|
| Restricted sea areas (Gulf of Finland and Archipelago Sea) | Territorial surveillance | 18 areas, important for national security and territorial surveillance; most contain a military area. |
| Military areas | No entry | Entry within 100 m is forbidden, landing is forbidden and anchoring is restricted. |
| Suomenlinna | Military site | Photographing Defence Forces buildings is prohibited. |
| Gulf of Finland, 2026 | Temporary restrictions | The Defence Forces have imposed temporary maritime and air restrictions, e.g. near Kotka, over drone threats. |

**Gaps:** OpenStreetMap has no military or restricted areas inside this small frame, so none are drawn; the 18 restricted sea areas lie outside it or are not mapped.

## Zones in the map (`config/map/fi/helsinki/sea.s3db`)

- map.source.zones: Marine Regions (VLIZ) eez_internal_waters, eez_12nm, eez_24nm, eez for FIN, belts minus inner belts, each map cell to the nearest belt of any country (outlines carry no coastline), CC-BY 4.0
- map.source.fairway: OpenStreetMap seamark:type=fairway (closed ways and relations), ODbL
- map.source.harbour: OpenStreetMap seamark harbour/harbour_basin +100 m and landuse=port|harbour +500 m, clipped to water, ODbL
- map.source.restricted: OpenStreetMap seamark restricted_area (every restriction and category; recreation areas left out), military_area, anchorage, precautionary_area, ODbL; classified by mapgen zones.py

Zone shapes other than the TSS (see `rules.tss.md`), in map cells, with the settings the local rules read:

| Zone | Type | x | y | Settings |
|---|---|---|---|---|
| `Finland.TerritorialSea.1` | Territorial sea (203000) | 297–1000 | 698–1000 |  |
| `Finland.InternalWaters.1` | Internal waters (204000) | 0–1000 | 0–1000 |  |
| `Helsinki.Harbour.1` | Harbour (301000) | 182–204 | 30–49 |  |
| `Helsinki.Harbour.2` | Harbour (301000) | 322–352 | 81–115 |  |
| `Helsinki.Harbour.3` | Harbour (301000) | 211–223 | 122–138 |  |
| `Helsinki.Harbour.4` | Harbour (301000) | 404–410 | 153–156 |  |
| `Helsinki.Harbour.5` | Harbour (301000) | 400–416 | 156–174 |  |
| `Helsinki.Harbour.6` | Harbour (301000) | 205–218 | 169–183 |  |
| `Helsinki.Harbour.7` | Harbour (301000) | 144–158 | 190–208 |  |
| `Helsinki.Harbour.8` | Harbour (301000) | 182–206 | 196–221 |  |
| `Helsinki.Harbour.9` | Harbour (301000) | 372–375 | 247–249 |  |
| `Helsinki.Harbour.10` | Harbour (301000) | 370–383 | 249–262 |  |
| `Helsinki.Harbour.11` | Harbour (301000) | 287–304 | 250–263 |  |
| `Helsinki.Harbour.12` | Harbour (301000) | 218–255 | 251–277 |  |
| `Helsinki.Harbour.13` | Harbour (301000) | 383–402 | 276–295 |  |
| `Helsinki.Harbour.14` | Harbour (301000) | 78–90 | 283–290 |  |
| `Helsinki.Harbour.15` | Harbour (301000) | 7–26 | 283–316 |  |
| `Helsinki.Harbour.16` | Harbour (301000) | 23–24 | 308–309 |  |
| `Helsinki.Harbour.17` | Harbour (301000) | 338–359 | 291–319 |  |
| `Helsinki.Harbour.18` | Harbour (301000) | 696–711 | 114–126 |  |
| `Helsinki.Harbour.19` | Harbour (301000) | 709–746 | 121–152 |  |
| `Helsinki.Harbour.20` | Harbour (301000) | 733–740 | 138–140 |  |
| `Helsinki.Harbour.21` | Harbour (301000) | 711–754 | 150–166 |  |
| `Helsinki.Harbour.22` | Harbour (301000) | 610–668 | 115–181 |  |
| `Helsinki.Harbour.23` | Harbour (301000) | 555–567 | 158–179 |  |
| `Helsinki.Harbour.24` | Harbour (301000) | 492–504 | 174–181 |  |
| `Helsinki.Harbour.25` | Harbour (301000) | 675–681 | 173–188 |  |
| `Helsinki.Harbour.26` | Harbour (301000) | 679–685 | 171–188 |  |
| `Helsinki.Harbour.27` | Harbour (301000) | 683–687 | 171–182 |  |
| `Helsinki.Harbour.28` | Harbour (301000) | 683–691 | 182–188 |  |
| `Helsinki.Harbour.29` | Harbour (301000) | 716–726 | 173–191 |  |
| `Helsinki.Harbour.30` | Harbour (301000) | 724–735 | 173–191 |  |
| `Helsinki.Harbour.31` | Harbour (301000) | 407–420 | 184–198 |  |
| `Helsinki.Harbour.32` | Harbour (301000) | 551–575 | 197–212 |  |
| `Helsinki.Harbour.33` | Harbour (301000) | 550–568 | 210–225 |  |
| `Helsinki.Harbour.34` | Harbour (301000) | 706–713 | 204–216 |  |
| `Helsinki.Harbour.35` | Harbour (301000) | 453–459 | 276–283 |  |
| `Helsinki.Harbour.36` | Harbour (301000) | 440–462 | 275–288 |  |
| `Helsinki.Harbour.37` | Harbour (301000) | 481–507 | 318–339 |  |
| `Helsinki.Harbour.38` | Harbour (301000) | 505–510 | 334–340 |  |
| `Helsinki.Harbour.39` | Harbour (301000) | 511–512 | 340–341 |  |
| `Helsinki.Harbour.40` | Harbour (301000) | 505–514 | 317–335 |  |
| `Helsinki.Harbour.41` | Harbour (301000) | 511–513 | 335–336 |  |
| `Helsinki.Harbour.42` | Harbour (301000) | 513–514 | 336–337 |  |
| `Helsinki.Harbour.43` | Harbour (301000) | 512–521 | 317–336 |  |
| `Helsinki.Harbour.44` | Harbour (301000) | 513–521 | 334–340 |  |
| `Helsinki.Harbour.45` | Harbour (301000) | 414–430 | 386–401 |  |
| `Helsinki.Harbour.46` | Harbour (301000) | 678–688 | 416–431 |  |
| `Helsinki.Harbour.47` | Harbour (301000) | 659–704 | 575–634 |  |
| `Helsinki.Harbour.48` | Harbour (301000) | 702–718 | 580–631 |  |
| `Helsinki.Harbour.49` | Harbour (301000) | 981–1000 | 0–14 |  |
| `Helsinki.Harbour.50` | Harbour (301000) | 928–966 | 33–56 |  |
| `Helsinki.Harbour.51` | Harbour (301000) | 965–982 | 37–53 |  |
| `Helsinki.Harbour.52` | Harbour (301000) | 842–856 | 82–100 |  |
| `Helsinki.Harbour.53` | Harbour (301000) | 839–841 | 97–99 |  |
| `Helsinki.Harbour.54` | Harbour (301000) | 838–851 | 141–153 |  |
| `Helsinki.Harbour.55` | Harbour (301000) | 833–842 | 161–173 |  |
| `Helsinki.Harbour.56` | Harbour (301000) | 774–789 | 164–181 |  |
| `Helsinki.Harbour.57` | Harbour (301000) | 837–846 | 176–188 |  |
| `Helsinki.Harbour.58` | Harbour (301000) | 879–899 | 218–235 |  |
| `Helsinki.Harbour.59` | Harbour (301000) | 816–837 | 247–270 |  |
| `Helsinki.Harbour.60` | Harbour (301000) | 745–755 | 255–269 |  |
| `Helsinki.Harbour.61` | Harbour (301000) | 792–810 | 296–316 |  |
| `Helsinki.Harbour.62` | Harbour (301000) | 791–792 | 310–317 |  |
| `Helsinki.Harbour.63` | Harbour (301000) | 787–792 | 293–297 |  |
| `Helsinki.Harbour.64` | Harbour (301000) | 787–788 | 295–296 |  |
| `Helsinki.Harbour.65` | Harbour (301000) | 788–792 | 295–304 |  |
| `Helsinki.Harbour.66` | Harbour (301000) | 718–773 | 327–394 |  |
| `Helsinki.Harbour.67` | Harbour (301000) | 772–774 | 329–331 |  |
| `Helsinki.Harbour.68` | Harbour (301000) | 838–839 | 608–609 |  |
| `Helsinki.Harbour.69` | Harbour (301000) | 835–836 | 611–612 |  |
| `Helsinki.Harbour.70` | Harbour (301000) | 826–839 | 599–609 |  |
| `Helsinki.Harbour.71` | Harbour (301000) | 825–826 | 604–605 |  |
| `Helsinki.Fairway.1.1` | Waterway / fairway (302000) | 704–1000 | 390–524 |  |
| `Helsinki.Fairway.2.1` | Waterway / fairway (302000) | 932–1000 | 880–1000 |  |
| `Helsinki.Fairway.3.1` | Waterway / fairway (302000) | 381–588 | 328–471 |  |
| `Helsinki.Fairway.4.1` | Waterway / fairway (302000) | 602–707 | 453–539 |  |
| `Helsinki.Fairway.5.1` | Waterway / fairway (302000) | 567–647 | 272–326 |  |
| `Helsinki.Fairway.6.1` | Waterway / fairway (302000) | 372–593 | 482–714 |  |
| `Helsinki.Fairway.7.1` | Waterway / fairway (302000) | 572–651 | 245–314 |  |
| `Helsinki.Fairway.8.1` | Waterway / fairway (302000) | 306–498 | 467–1000 |  |
| `Helsinki.Fairway.9.1` | Waterway / fairway (302000) | 0–341 | 645–713 |  |
| `Helsinki.Fairway.10.1` | Waterway / fairway (302000) | 615–689 | 226–453 |  |
| `Helsinki.Fairway.11.1` | Waterway / fairway (302000) | 489–631 | 368–1000 |  |
| `Helsinki.Fairway.12.1` | Waterway / fairway (302000) | 344–362 | 973–1000 |  |
| `Helsinki.Fairway.13.1` | Waterway / fairway (302000) | 393–476 | 397–480 |  |
| `Helsinki.PrecautionaryArea.1.1` | Precautionary / restricted area (310000) | 450–453 | 347–350 |  |
| `Helsinki.PrecautionaryArea.1.2` | Precautionary / restricted area (310000) | 439–465 | 332–372 |  |

## Local rules (Legata)

Generated from the zones above by `.claude/skills/mapgen/legata_site.py` (MAPGEN §4.3); regenerate, do not edit.

No zone in this map carries an enforceable restriction, so no rule file is generated.

## Sources

- [Finnish Defence Forces – Boating season: remember sea area restrictions](https://puolustusvoimat.fi/en/-//1951215/boating-season-about-to-begin-remember-sea-area-restrictions)
- [Finnish Navy – Movement restrictions in military areas](https://merivoimat.fi/en/-/movement-restrictions-in-force-in-military-areas-also-concern-those-moving-on-the-ice)
- [Yle – Military restricts air and maritime traffic in Gulf of Finland](https://yle.fi/a/74-20239254)
- [Finnish maritime spatial plan – National defence](https://meriskenaariot.info/merialuesuunnitelma/en/national-defence/)
