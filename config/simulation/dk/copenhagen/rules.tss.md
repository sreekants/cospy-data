# Traffic separation schemes – Copenhagen / The Sound (Øresund)

**Location:** `dk/copenhagen`  
**Status:** Two IMO TSS, both at the edges of the map frame  
**Compiled:** 2026-10-05, from web sources listed below. Verify against the IMO *Ships' Routeing* publication and current national charts before relying on positions.

## Schemes

The Sound has two IMO-adopted routeing systems, both inside the SOUNDREP area operated by **Sound VTS**
(call sign "Sound Traffic"):

| Scheme | Position | In the map |
|---|---|---|
| **TSS "In the Sound"** | Northern narrows between Helsingør (DK) and Helsingborg (SE) | Northern edge of the frame (cell rows 0–95) |
| **TSS "Off Falsterbo"** | Southern entrance off Falsterbo (SE) | Southern edge of the frame (cell rows 874–1000) |

Between them lies the **Drogden** dredged channel, between Saltholm and Amager. It is not a TSS. It has a maximum
draught of about 8 m, and ships with an air draught over 35 m must report when passing it, because of Copenhagen
Airport (Kastrup). The scheduled Helsingør–Helsingborg ferries cross the northern TSS under special arrangements and
normally do not report to Sound VTS.

## TSS in the map (`config/map/dk/copenhagen/sea.s3db`)

- Frame: Kobenhavn (OSM node 13707878, place=city) (55.6867243N 12.5700724E): 40 km W, 40 km S, 40 km N, 40 km E
- Grid: 1000,1000 cells of 80.0 m, EPSG:32633, y axis south
- TSS source: OpenStreetMap seamarks: lanes as faces of separation_boundary/separation_line/separation_zone edges crossed by separation_lane centrelines; separation_zone ways; ODbL

Zones in `isohypses`, in map cells (the direction in each name is the lane's flow):

| Zone | x | y |
|---|---|---|
| `Copenhagen.TSS.Northbound.4.1` | 550–598 | 878–986 |
| `Copenhagen.TSS.Southbound.5.1` | 529–571 | 874–983 |
| `Copenhagen.TSS.Southbound.6.1` | 560–579 | 9–39 |
| `Copenhagen.TSS.Southbound.7.1` | 573–603 | 8–95 |
| `Copenhagen.TSS.NorthwestBound.9.1` | 582–619 | 0–93 |
| `Copenhagen.TSS.Westbound.11.1` | 512–591 | 979–1000 |
| `Copenhagen.TSS.Northbound.12.1` | 638–658 | 187–199 |
| `Copenhagen.TSS.Southbound.13.1` | 631–651 | 188–200 |
| `Copenhagen.TSS.SeparationZone.1.1` | 568–583 | 28–48 |

## COLREG Rule 10 – how vessels must behave in a TSS

Rule 10 of the International Regulations for Preventing Collisions at Sea (COLREGs 1972) applies to every
IMO-adopted scheme. It does not relieve any vessel of its obligations under the other rules.

| # | Rule | Applies to |
|---|---|---|
| 10(b)(i) | Proceed in the appropriate traffic lane, in the general direction of traffic flow for that lane. | Vessels using the TSS |
| 10(b)(ii) | Keep clear of the separation line or separation zone, so far as practicable. | Vessels using the TSS |
| 10(b)(iii) | Join or leave a lane at its termination. When joining or leaving from either side, do so at as small an angle to the general direction of flow as practicable. | Vessels using the TSS |
| 10(c) | Avoid crossing lanes. If obliged to cross, do so on a heading as nearly as practicable at right angles to the general direction of flow. | All vessels |
| 10(d)(i) | Do not use an inshore traffic zone when the adjacent lane can be used safely. Vessels under 20 m, sailing vessels and vessels engaged in fishing may use it. | All vessels |
| 10(d)(ii) | A vessel may use an inshore traffic zone when en route to or from a port, offshore installation, pilot station or other place within it, or to avoid immediate danger. | All vessels |
| 10(e) | Do not enter a separation zone or cross a separation line, except when crossing, joining or leaving a lane, in an emergency, or when fishing within the zone. | Vessels other than crossing, joining or leaving vessels |
| 10(f) | Navigate with particular caution near the terminations of the scheme. | All vessels |
| 10(g) | Avoid anchoring in the TSS or near its terminations. | All vessels |
| 10(h) | A vessel not using the TSS shall avoid it by as wide a margin as practicable. | Vessels not using the TSS |
| 10(i) | A vessel engaged in fishing shall not impede the passage of any vessel following a traffic lane. | Fishing vessels |
| 10(j) | A vessel under 20 m or a sailing vessel shall not impede the safe passage of a power-driven vessel following a traffic lane. | Small and sailing vessels |
| 10(k), (l) | A vessel restricted in her ability to manoeuvre is exempt from Rule 10 while maintaining navigation safety, or laying, servicing or picking up a cable, within the TSS. | Restricted vessels |

### Simulation checks implied by Rule 10

- **Lane direction:** the vessel's course over ground is within the lane's general direction of flow. Lane names in
  `sea.s3db` carry that direction (e.g. `Northbound`, `SouthwestBound`).
- **Separation zone:** a vessel inside a `SeparationZone` that is not crossing, joining, leaving or fishing breaks 10(e).
- **Crossing angle:** a vessel crossing a lane does so at roughly 90° to the flow direction (10(c)).
- **Joining/leaving angle:** a vessel entering or leaving through the side of a lane does so at a small angle (10(b)(iii)).
- **Anchoring:** an anchored or stopped vessel inside a lane or near a termination breaks 10(g).
- **Give-way:** fishing vessels, vessels under 20 m and sailing vessels must not impede vessels following a lane (10(i), 10(j)).

## Sources

- [IMO – Resolution MSC.314(88)/Rev.1 (SOUNDREP)](https://wwwcdn.imo.org/localresources/en/KnowledgeCentre/IndexofIMOResolutions/MSCResolutions/MSC.314(88)%20Rev.1.pdf)
- [DMA – Order on SOUNDREP and reporting at Drogden](https://www.dma.dk/Media/637792367684467763/Order%20on%20the%20ship%20reporting%20system%20SOUNDREP%20and%20on%20reporting%20when%20passing%20the%20dredged%20channel%20of%20Drogden%20etc.pdf)
- [Danish Maritime Authority – Navigation Through Danish Waters v15](https://www.soefartsstyrelsen.dk/Media/637977139358837038/Navigation%20through%20Danish%20Water%20version%2015%20(SEP%202022).pdf)
- [Wikipedia – Drogden](https://en.wikipedia.org/wiki/Drogden)
- [IMO – Ships' routeing](https://www.imo.org/en/ourwork/safety/pages/shipsrouteing.aspx)
- [Wikipedia – List of traffic separation schemes](https://en.wikipedia.org/wiki/List_of_traffic_separation_schemes)
- [Wikipedia – Traffic separation scheme](https://en.wikipedia.org/wiki/Traffic_separation_scheme)
- [Asociación Española de Marina Civil – COLREGS Rule 10 with explanations](https://marinacivil.com/index.php/articulo/seguridad-maritima/21020-colregs-rule-10-traffic-separation-schemes-with-explanations)
