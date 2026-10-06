# Restricted and regulated sea zones – Strait of Hormuz

**Location:** `om/hormuz`  
**Compiled:** 2026-10-05, from the web sources listed below. Check current Notices to Mariners and national charts before relying on positions or rules.

## Zones and rules found

| Zone | Kind | Rule |
|---|---|---|
| Narrows between Great Quoin (Oman) and Larak (Iran) | Overlapping territorial seas | The strait is covered by the territorial seas of Iran and Oman. Transit passage under UNCLOS applies: continuous and expeditious transit only, no threat or use of force against the strait states. |
| Iranian territorial sea (1993 Marine Areas law) | National rule | Iran may suspend passage. Warships, submarines and ships carrying dangerous or environmentally harmful materials need prior authorisation. |
| Omani territorial sea | National rule | Oman requires prior permission for warships. |
| Abu Musa, Greater and Lesser Tunb | Disputed islands | Claimed by the UAE, held by Iran with a military presence since the 1970s. |
| Iran's redrawn routes (April 2026) | Unilateral routeing | Inbound traffic between Qeshm and Larak, outbound just south of Larak, both in Iranian waters. The IMO TSS is inside a declared "danger zone" (possible mines). Ships must coordinate with the IRGC Navy. Not adopted by IMO. |
| Iranian management zone (May 2026) | Claimed authorisation zone | From Kuh-e Mobarak to south of Fujairah at the eastern entrance, and from the end of Qeshm to Umm al-Quwain. All vessels must get prior authorisation from the "PGSA" (Persian Gulf Strait Authority). Reaches into Omani and UAE waters. |
| Iranian restricted zone (September 2026) | Claimed restricted zone | Declared by Iran; analysts doubt it can be enforced. |

**Gaps:** The 2026 Iranian zones are not drawn (no published coordinates); the map models the 1968 IMO TSS and the Marine Regions jurisdiction zones.

## Zones in the map (`config/map/om/hormuz/sea.s3db`)

- map.source.zones: Marine Regions (VLIZ) eez_internal_waters, eez_12nm, eez_24nm, eez for OMN, IRN, ARE; each belt minus the inner ones, made disjoint; CC-BY 4.0
- map.source.restricted: OpenStreetMap seamark restricted_area (every restriction and category; recreation areas left out), military_area, anchorage, precautionary_area, ODbL; classified by mapgen zones.py

Zone shapes other than the TSS (see `rules.tss.md`), in map cells, with the settings the local rules read:

| Zone | Type | x | y | Settings |
|---|---|---|---|---|
| `Hormuz.OMN.EEZ.1` | EEZ (201000) | 607–625 | 449–476 |  |
| `Hormuz.OMN.ContiguousZone.1` | Contiguous zone (202000) | 648–930 | 59–1000 |  |
| `Hormuz.OMN.ContiguousZone.2` | Contiguous zone (202000) | 0–381 | 212–656 |  |
| `Hormuz.IRN.ContiguousZone.1` | Contiguous zone (202000) | 654–1000 | 0–1000 |  |
| `Hormuz.IRN.ContiguousZone.2` | Contiguous zone (202000) | 0–219 | 319–493 |  |
| `Hormuz.OMN.TerritorialSea.1` | Territorial sea (203000) | 0–861 | 95–1000 |  |
| `Hormuz.IRN.TerritorialSea.1` | Territorial sea (203000) | 839–1000 | 0–659 |  |
| `Hormuz.IRN.TerritorialSea.2` | Territorial sea (203000) | 0–710 | 0–413 |  |
| `Hormuz.ARE.TerritorialSea.1` | Territorial sea (203000) | 143–147 | 928–939 |  |
| `Hormuz.ARE.TerritorialSea.2` | Territorial sea (203000) | 116–144 | 951–1000 |  |
| `Hormuz.ARE.TerritorialSea.3` | Territorial sea (203000) | 0–174 | 785–1000 |  |
| `Hormuz.OMN.InternalWaters.1` | Internal waters (204000) | 473–565 | 783–1000 |  |
| `Hormuz.OMN.InternalWaters.2` | Internal waters (204000) | 416–639 | 673–785 |  |
| `Hormuz.OMN.InternalWaters.3` | Internal waters (204000) | 444–490 | 651–675 |  |
| `Hormuz.OMN.InternalWaters.4` | Internal waters (204000) | 494–509 | 666–675 |  |
| `Hormuz.OMN.InternalWaters.5` | Internal waters (204000) | 485–638 | 562–675 |  |
| `Hormuz.OMN.InternalWaters.6` | Internal waters (204000) | 417–465 | 562–600 |  |
| `Hormuz.OMN.InternalWaters.7` | Internal waters (204000) | 179–507 | 562–796 |  |
| `Hormuz.OMN.InternalWaters.8` | Internal waters (204000) | 328–632 | 315–564 |  |
| `Hormuz.IRN.InternalWaters.1` | Internal waters (204000) | 0–373 | 0–174 |  |
| `Hormuz.Anchorage.2.1` | Anchorage (312000) | 28–125 | 833–896 |  |

## Local rules (Legata)

Generated from the zones above by `.claude/skills/mapgen/legata_site.py` (MAPGEN §4.3); regenerate, do not edit.

- `rule/tss.legata`: 5 clauses
- `rule/score.yaml`: scorecard (placeholder penalties)
- `rules.yaml`: `maritime.regulation.internal.ZoneRule` modules

## Sources

- [Tandfonline – Legal regime of the Strait of Hormuz](https://www.tandfonline.com/doi/full/10.1080/00908320.2022.2096158)
- [Wikipedia – Strait of Hormuz](https://en.wikipedia.org/wiki/Strait_of_Hormuz)
- [Maritime Executive – Iran publishes redrawn traffic scheme](https://maritime-executive.com/article/iran-publishes-redrawn-traffic-scheme-for-strait-of-hormuz)
- [Lloyd's List – Iran unveils its own Hormuz TSS](https://www.lloydslist.com/LL1156859/Iran-unveils-its-own-Hormuz-traffic-separation-scheme)
- [Euronews – Iran asserts jurisdiction over UAE and Oman waters](https://www.euronews.com/2026/05/22/iran-asserts-jurisdiction-over-uae-and-oman-waters-in-new-strait-of-hormuz-map)
- [Al Jazeera – Can Iran enforce a restricted zone?](https://www.aljazeera.com/news/2026/9/7/can-iran-enforce-a-restricted-zone-in-the-strait-of-hormuz)
- [Strauss Center – Strait of Hormuz geography](https://www.strausscenter.org/strait-of-hormuz-geography/)
