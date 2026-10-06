# Traffic separation schemes – Oslo

**Location:** `no/oslo`  
**Status:** Kystverket TSS in the Oslofjord; a short stretch of two lanes lies at the southern edge of the frame  
**Compiled:** 2026-10-06, from the web sources listed below. Verify against the IMO *Ships' Routeing* publication and current national charts before relying on positions.

## Schemes

**Trafikkseparasjonssystemer i Oslofjorden** (Kystverket, Sjøtrafikkforskriften). The scheme runs from Færder into the
Oslofjord, with lanes (seilingsled) and a caution area (aktsomhetsområde). Vessels of 24 m or more must use the traffic
lanes. Vessels over 90 m and vessels with particularly hazardous or noxious cargo may not use the waters inside the line
Slagentangen–Fulehuk–Færder–Tjømeboen–Tønsberg Tønne when visibility is below 0.5 nm (south of this frame).
**Oslofjord VTS** (since 1999) monitors and organises the traffic from Færder to Oslo.

Kystverket does not give the lanes' direction. The two lane pieces in the map are named by the keep-to-starboard rule:
the eastern lane `NortheastBound` (bearing about 29°), the western lane `SouthwestBound`.

## TSS in the map (`config/map/no/oslo/sea.s3db`)

- Frame: —
- Grid: 1000,750 cells of 40.0 m, EPSG:32632, y axis south
- TSS source: Kystverket WFS layer_706 TSS Oslofjorden (Seilingsled=303000, Aktsomhetsomrade=310000), NLOD; lane directions inferred 2026-10-06 from geometry by the keep-to-starboard rule (eastern lane NNE-bound, bearing about 29 deg; western lane SSW-bound), not from the source

Zones in `isohypses`, in map cells (the direction in each name is the lane's flow):

| Zone | x | y |
|---|---|---|
| `Oslo.TSS.CautionArea.1` | 250–383 | 115–750 |
| `Oslo.TSS.NortheastBound.1.1` | 371–388 | 106–127 |
| `Oslo.TSS.SouthwestBound.2.1` | 360–381 | 97–122 |

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
- [IMO COLREG.2/Circ.75 – Norwegian TSS and routeing measures](https://www.kystverket.no/contentassets/457e1b5340c24e6c847d98d990c17dd1/traffic-separation-schemes-and-associated-routeing-measures.pdf)
- [IMO – Ships' routeing](https://www.imo.org/en/ourwork/safety/pages/shipsrouteing.aspx)
- [Wikipedia – List of traffic separation schemes](https://en.wikipedia.org/wiki/List_of_traffic_separation_schemes)
- [Wikipedia – Traffic separation scheme](https://en.wikipedia.org/wiki/Traffic_separation_scheme)
- [Asociación Española de Marina Civil – COLREGS Rule 10 with explanations](https://marinacivil.com/index.php/articulo/seguridad-maritima/21020-colregs-rule-10-traffic-separation-schemes-with-explanations)
