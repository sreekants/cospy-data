# Traffic separation schemes – Bergen

**Location:** `no/bergen`  
**Status:** No TSS in the map frame  
**Compiled:** 2026-10-06, from the web sources listed below. Verify against the IMO *Ships' Routeing* publication and current national charts before relying on positions.

## Schemes

No TSS lies in the frame. Bergen's western approaches are in the **Fedje VTS** area (from Sognesjøen in the north to Marstein in the south, bordering the Port of Bergen and Grimstadfjorden at Haakonsvern). The nearest TSS is the offshore **TSS between Runde and Utsira**.

## TSS in the map (`config/map/no/bergen/sea.s3db`)

- Frame: Bergen (OSM node 21261083, place=city, 60.3943N 5.3259E): 30 km W, 5 km E, 20 km N/S
- Grid: 875,1000 cells of 40.0 m, EPSG:32632, y axis south
- TSS source: —

No TSS zones are drawn in this map.

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

- [Kystverket – Regulations relating to use of VTS areas and fairways (Sjøtrafikkforskriften, English)](https://www.kystverket.no/globalassets/navigasjon-og-overvakning/engelsk/vts/engelsk-oversettelse-av-sjotrafikkforskriften-gjeldende-fra-1.november-2022.pdf/download)
- [Kystverket – Navigation rules (VTS)](https://www.kystverket.no/en/navigation-and-monitoring/vts---vessel-traffic-service/sailing-rules/)
- [Kystverket WFS (layers 151 anchorages, 102 caution areas, 706 TSS, 762 speed limits)](https://services.kystverket.no/wfs.ashx?service=WFS&request=GetCapabilities)
- [Wikipedia – Fedje Vessel Traffic Service Centre](https://en.wikipedia.org/wiki/Fedje_Vessel_Traffic_Service_Centre)
- [IMO – Ships' routeing](https://www.imo.org/en/ourwork/safety/pages/shipsrouteing.aspx)
- [Wikipedia – List of traffic separation schemes](https://en.wikipedia.org/wiki/List_of_traffic_separation_schemes)
- [Wikipedia – Traffic separation scheme](https://en.wikipedia.org/wiki/Traffic_separation_scheme)
- [Asociación Española de Marina Civil – COLREGS Rule 10 with explanations](https://marinacivil.com/index.php/articulo/seguridad-maritima/21020-colregs-rule-10-traffic-separation-schemes-with-explanations)
