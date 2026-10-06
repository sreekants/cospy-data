# Traffic separation schemes – Barcelona

**Location:** `es/barcelona`  
**Status:** Port TSS inside the map frame (drawn in sea.s3db)  
**Compiled:** 2026-10-05, from web sources listed below. Verify against the IMO *Ships' Routeing* publication and current national charts before relying on positions.

## Schemes

**TSS "Approaches to Barcelona".** The port has two entrances, North and South, and each has its own
approach channel laid out as a traffic separation scheme:

| Approach | Separation line marked by |
|---|---|
| **North approach channel** | Fairway buoy **"November" (N)**, with a racon showing Morse "N" on radar |
| **South approach channel** | Fairway buoy **"Sierra"** |

Geometry from the port's traffic ordinance (BOE-A-2023-6719):

| Channel | Landfall buoy | Separation line | Total width | Entry lane | Exit lane |
|---|---|---|---|---|---|
| **North** | "N" 41°20.05'N 2°13.01'E | 1.5 nm on 305°/125° | 5 cables | north of the line, 305° | south of the line, 125° |
| **South** | "S" 41°16.905'N 2°10.880'E | 1.2 nm on 346°/166° | 6.1 cables at the buoy, 5 at the inner end | east of the line, 346° | west of the line, 166° |

Ships must call **Barcelona Traffic** on VHF 10 and **Barcelona Pilots** on VHF 14 one hour before reaching the
fairway buoy. The frame (Barcelona, 5 km W and N, 25 km S and E) covers both approaches.

## TSS in the map (`config/map/es/barcelona/sea.s3db`)

- Frame: Barcelona (OSM node 152364165, place=city) (41.3825802N 2.177073E): 5 km W, 25 km S, 5 km N, 25 km E
- Grid: 1000,1000 cells of 30.0 m, EPSG:32631, y axis south
- TSS source: Port of Barcelona traffic ordinance BOE-A-2023-6719: north and south approach channels (landfall buoys N and S, length, width and bearing; entry lane to starboard of the inbound heading), lanes split at the separation line; matches the OSM separation_line ways 369862639-642

Zones in `isohypses`, in map cells (the direction in each name is the lane's flow):

| Zone | x | y |
|---|---|---|
| `Barcelona.TSS.NorthwestBound.1.1` | 200–285 | 281–347 |
| `Barcelona.TSS.SoutheastBound.2.1` | 191–276 | 294–359 |
| `Barcelona.TSS.Northbound.3.1` | 157–193 | 464–540 |
| `Barcelona.TSS.Southbound.4.1` | 142–175 | 468–544 |

Each channel is split at its separation line: the entry lane lies to starboard of the inbound heading (north of the line in the North channel, east of it in the South channel).

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

- [BOE-A-2023-6719 – Barcelona port traffic ordinance](https://www.boe.es/diario_boe/txt.php?id=BOE-A-2023-6719)
- [Port de Barcelona – Approaches to Barcelona (approachesbcn.pdf)](https://opendata.portdebarcelona.cat/dataset/755ff5ce-d893-43ad-9be9-761317c296ab/resource/c975b3df-641c-4c7b-b640-7ef770744ee1/download/approachesbcn.pdf)
- [IMO – Ships' routeing](https://www.imo.org/en/ourwork/safety/pages/shipsrouteing.aspx)
- [Wikipedia – List of traffic separation schemes](https://en.wikipedia.org/wiki/List_of_traffic_separation_schemes)
- [Wikipedia – Traffic separation scheme](https://en.wikipedia.org/wiki/Traffic_separation_scheme)
- [Asociación Española de Marina Civil – COLREGS Rule 10 with explanations](https://marinacivil.com/index.php/articulo/seguridad-maritima/21020-colregs-rule-10-traffic-separation-schemes-with-explanations)
