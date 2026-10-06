# Restricted and regulated sea zones – Copenhagen / The Sound (Øresund)

**Location:** `dk/copenhagen`  
**Compiled:** 2026-10-05, from the web sources listed below. Check current Notices to Mariners and national charts before relying on positions or rules.

## Zones and rules found

| Zone | Kind | Rule |
|---|---|---|
| Drogden channel | Draught limit and reporting | Maximum draught about 8 m. Ships with an air draught over 35 m must report under SOUNDREP when passing, because of Copenhagen Airport (Kastrup). |
| Saltholm | Bird sanctuary / Natura 2000 | Large parts closed from about April to mid-July to protect breeding colonies. The surrounding waters are a Natura 2000 area. |
| Kalvebod Fælled | Natura 2000 bird-protection area | No public access. |
| Firing practice areas (incl. Køge Bugt, south of the frame centre) | Temporary prohibited areas | Published yearly by the Danish Maritime Authority as an annex to Notices to Mariners. During firing practice all navigation, anchoring and fishing are prohibited in the area. |

**Gaps:** Military areas drawn from OpenStreetMap: Fladens Leje and the EK R18 Jægerspris firing area (no entry, activation not modelled). The other DMA firing areas are not in OpenStreetMap inside the frame and are not drawn.

## Zones in the map (`config/map/dk/copenhagen/sea.s3db`)

- map.source.zones: Marine Regions (VLIZ) eez_internal_waters, eez_12nm, eez_24nm, eez for DNK, SWE, belts minus inner belts, each map cell to the nearest belt of any country (outlines carry no coastline), CC-BY 4.0
- map.source.fairway: OpenStreetMap seamark:type=fairway (closed ways and relations), ODbL
- map.source.harbour: OpenStreetMap seamark harbour/harbour_basin +100 m and landuse=port|harbour +500 m, clipped to water, ODbL
- map.source.restricted: OpenStreetMap seamark restricted_area (every restriction and category; recreation areas left out), military_area, anchorage, precautionary_area, ODbL; classified by mapgen zones.py

Zone shapes other than the TSS (see `rules.tss.md`), in map cells, with the settings the local rules read:

| Zone | Type | x | y | Settings |
|---|---|---|---|---|
| `Denmark.TerritorialSea.1` | Territorial sea (203000) | 287–756 | 0–1000 |  |
| `Sweden.TerritorialSea.1` | Territorial sea (203000) | 522–813 | 0–1000 |  |
| `Sweden.TerritorialSea.2` | Territorial sea (203000) | 811–1000 | 0–1000 |  |
| `Denmark.InternalWaters.1` | Internal waters (204000) | 0–717 | 0–1000 |  |
| `Denmark.InternalWaters.2` | Internal waters (204000) | 457–563 | 0–43 |  |
| `Sweden.InternalWaters.1` | Internal waters (204000) | 673–992 | 702–993 |  |
| `Copenhagen.Harbour.1` | Harbour (301000) | 102–104 | 273–275 |  |
| `Copenhagen.Harbour.2` | Harbour (301000) | 101–105 | 280–282 |  |
| `Copenhagen.Harbour.3` | Harbour (301000) | 123–133 | 376–388 |  |
| `Copenhagen.Harbour.4` | Harbour (301000) | 105–107 | 391–394 |  |
| `Copenhagen.Harbour.5` | Harbour (301000) | 133–135 | 393–396 |  |
| `Copenhagen.Harbour.6` | Harbour (301000) | 129–133 | 402–407 |  |
| `Copenhagen.Harbour.7` | Harbour (301000) | 130–132 | 407–408 |  |
| `Copenhagen.Harbour.8` | Harbour (301000) | 111–124 | 472–484 |  |
| `Copenhagen.Harbour.9` | Harbour (301000) | 2–5 | 504–507 |  |
| `Copenhagen.Harbour.10` | Harbour (301000) | 106–116 | 529–536 |  |
| `Copenhagen.Harbour.11` | Harbour (301000) | 488–495 | 219–229 |  |
| `Copenhagen.Harbour.12` | Harbour (301000) | 510–513 | 436–440 |  |
| `Copenhagen.Harbour.13` | Harbour (301000) | 511–514 | 441–442 |  |
| `Copenhagen.Harbour.14` | Harbour (301000) | 508–517 | 442–447 |  |
| `Copenhagen.Harbour.15` | Harbour (301000) | 516–518 | 443–447 |  |
| `Copenhagen.Harbour.16` | Harbour (301000) | 518–529 | 473–487 |  |
| `Copenhagen.Harbour.17` | Harbour (301000) | 522–525 | 488–492 |  |
| `Copenhagen.Harbour.18` | Harbour (301000) | 523–524 | 492–493 |  |
| `Copenhagen.Harbour.19` | Harbour (301000) | 523–525 | 493–496 |  |
| `Copenhagen.Harbour.20` | Harbour (301000) | 495–497 | 535–538 |  |
| `Copenhagen.Harbour.21` | Harbour (301000) | 475–487 | 548–556 |  |
| `Copenhagen.Harbour.22` | Harbour (301000) | 486–488 | 554–557 |  |
| `Copenhagen.Harbour.23` | Harbour (301000) | 474–480 | 560–571 |  |
| `Copenhagen.Harbour.24` | Harbour (301000) | 440–446 | 582–585 |  |
| `Copenhagen.Harbour.25` | Harbour (301000) | 360–364 | 934–938 |  |
| `Copenhagen.Harbour.26` | Harbour (301000) | 697–710 | 247–263 |  |
| `Copenhagen.Harbour.27` | Harbour (301000) | 527–532 | 394–400 |  |
| `Copenhagen.Harbour.28` | Harbour (301000) | 528–530 | 400–401 |  |
| `Copenhagen.Harbour.29` | Harbour (301000) | 521–529 | 450–457 |  |
| `Copenhagen.Harbour.30` | Harbour (301000) | 527–529 | 470–472 |  |
| `Copenhagen.Harbour.31` | Harbour (301000) | 521–534 | 466–472 |  |
| `Copenhagen.Harbour.32` | Harbour (301000) | 530–532 | 485–486 |  |
| `Copenhagen.Harbour.33` | Harbour (301000) | 529–530 | 486–487 |  |
| `Copenhagen.Harbour.34` | Harbour (301000) | 531–534 | 487–489 |  |
| `Copenhagen.Harbour.35` | Harbour (301000) | 539–540 | 497–499 |  |
| `Copenhagen.Harbour.36` | Harbour (301000) | 534–540 | 498–501 |  |
| `Copenhagen.Harbour.37` | Harbour (301000) | 566–567 | 571–573 |  |
| `Copenhagen.Harbour.38` | Harbour (301000) | 564–566 | 572–573 |  |
| `Copenhagen.Harbour.39` | Harbour (301000) | 567–568 | 573–574 |  |
| `Copenhagen.Harbour.40` | Harbour (301000) | 564–567 | 574–576 |  |
| `Copenhagen.Harbour.41` | Harbour (301000) | 579–584 | 635–639 |  |
| `Copenhagen.Harbour.42` | Harbour (301000) | 578–584 | 630–633 |  |
| `Copenhagen.Harbour.43` | Harbour (301000) | 779–786 | 631–637 |  |
| `Copenhagen.Harbour.44` | Harbour (301000) | 762–770 | 649–656 |  |
| `Copenhagen.Fairway.1.1` | Waterway / fairway (302000) | 622–753 | 601–746 |  |
| `Copenhagen.Fairway.2.1` | Waterway / fairway (302000) | 709–717 | 662–679 |  |
| `Copenhagen.Fairway.3.1` | Waterway / fairway (302000) | 589–603 | 562–700 |  |
| `Copenhagen.PrecautionaryArea.1.1` | Precautionary / restricted area (310000) | 550–560 | 15–23 | restriction=restricted_entry |
| `Copenhagen.PrecautionaryArea.2.1` | Precautionary / restricted area (310000) | 536–751 | 660–746 | restriction=no_anchoring |
| `Copenhagen.PrecautionaryArea.3.1` | Precautionary / restricted area (310000) | 712–749 | 991–1000 | restriction=no_anchoring,no_diving,no_fishing |
| `Copenhagen.PrecautionaryArea.4.1` | Precautionary / restricted area (310000) | 584–620 | 579–610 | restriction=no_anchoring |
| `Copenhagen.AreaToAvoid.1.1` | Area to avoid (311000) | 499–502 | 227–230 | restriction=no_entry category=safety |
| `Copenhagen.AreaToAvoid.2.1` | Area to avoid (311000) | 526–529 | 446–448 | restriction=no_entry |
| `Copenhagen.Anchorage.1.1` | Anchorage (312000) | 552–581 | 392–424 |  |
| `Copenhagen.Anchorage.2.1` | Anchorage (312000) | 563–577 | 413–440 |  |
| `Copenhagen.Anchorage.3.1` | Anchorage (312000) | 605–634 | 394–427 |  |
| `Copenhagen.Anchorage.4.1` | Anchorage (312000) | 594–613 | 137–165 | category=unrestricted |
| `Copenhagen.Anchorage.5.1` | Anchorage (312000) | 664–677 | 209–221 | category=unrestricted |
| `Copenhagen.Anchorage.6.1` | Anchorage (312000) | 680–710 | 321–354 | category=unrestricted |
| `Copenhagen.Anchorage.7.1` | Anchorage (312000) | 721–758 | 351–394 | category=unrestricted |
| `Copenhagen.Anchorage.8.1` | Anchorage (312000) | 764–805 | 478–519 | category=unrestricted |
| `Copenhagen.Anchorage.9.1` | Anchorage (312000) | 722–762 | 477–526 | category=unrestricted |
| `Copenhagen.NatureReserve.1.1` | Nature reserve (314000) | 742–753 | 922–928 | restriction=restricted_entry category=bird_sanctuary |
| `Copenhagen.NatureReserve.1.2` | Nature reserve (314000) | 743–752 | 917–925 | restriction=restricted_entry category=bird_sanctuary |
| `Copenhagen.NatureReserve.2.1` | Nature reserve (314000) | 731–744 | 911–924 | restriction=restricted_entry category=bird_sanctuary |
| `Copenhagen.NatureReserve.3.1` | Nature reserve (314000) | 699–716 | 835–855 | restriction=no_entry category=nature_reserve |
| `Copenhagen.NatureReserve.4.1` | Nature reserve (314000) | 702–708 | 854–867 | restriction=no_entry category=nature_reserve |
| `Copenhagen.NatureReserve.4.2` | Nature reserve (314000) | 697–703 | 847–867 | restriction=no_entry category=nature_reserve |
| `Copenhagen.NatureReserve.5.1` | Nature reserve (314000) | 663–692 | 935–983 | restriction=no_entry category=nature_reserve |
| `Copenhagen.NatureReserve.6.1` | Nature reserve (314000) | 673–687 | 960–973 | restriction=no_entry category=nature_reserve |
| `Copenhagen.NatureReserve.7.1` | Nature reserve (314000) | 675–679 | 950–955 | restriction=no_entry category=nature_reserve |
| `Copenhagen.NatureReserve.7.2` | Nature reserve (314000) | 677–684 | 950–955 | restriction=no_entry category=nature_reserve |
| `Copenhagen.NatureReserve.StrandhusensRevlarsNaturreservat.1` | Nature reserve (314000) | 844–887 | 536–570 | restriction=restricted_speed,no_jetski category=nature_reserve |
| `Copenhagen.NatureReserve.MaklappensNaturreservat.1` | Nature reserve (314000) | 663–692 | 935–983 | restriction=no_entry category=seal_sanctuary |
| `Copenhagen.MilitaryArea.FladensLeje.1` | Military area (315000) | 523–528 | 498–505 | restriction=restricted_entry category=military |
| `Copenhagen.MilitaryArea.EKR18Jaegerspris.1` | Military area (315000) | 0–31 | 176–276 | restriction=restricted_entry category=firing |

## Local rules (Legata)

Generated from the zones above by `.claude/skills/mapgen/legata_site.py` (MAPGEN §4.3); regenerate, do not edit.

- `rule/tss.legata`: 17 clauses
- `rule/zones.legata`: 14 clauses
- `rule/score.yaml`: scorecard (placeholder penalties)
- `rules.yaml`: `maritime.regulation.internal.ZoneRule` modules

## Sources

- [Danish Maritime Authority – Navigation Through Danish Waters v16 (2025)](https://www.soefartsstyrelsen.dk/Media/638743469510433298/Navigation%20through%20Danish%20Water%20version%2016.0%202025.pdf)
- [Danish Maritime Authority – Firing Practice Areas at Sea 2024](https://niord.dma.dk/rest/repo/file/publications/b/55/b558fff5-486b-4716-a4d7-23f8a4b01064/1/Firing-Areas-2024.pdf)
- [Wikipedia – Drogden](https://en.wikipedia.org/wiki/Drogden)
- [Denmark Guide – Saltholm](https://denmarkguide.app/attractions/saltholm/)
- [Wikipedia – Kalvebod Fælled](https://en.wikipedia.org/wiki/Kalvebod_F%C3%A6lled)
- [Wikipedia – Køge Bay](https://en.wikipedia.org/wiki/K%C3%B8ge_Bay)
