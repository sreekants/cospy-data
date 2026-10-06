# Traffic separation schemes – Strait of Hormuz

**Location:** `om/hormuz`  
**Status:** IMO TSS inside the map frame (drawn in sea.s3db)  
**Compiled:** 2026-10-05, from web sources listed below. Verify against the IMO *Ships' Routeing* publication and current national charts before relying on positions.

## Schemes

**TSS in the Strait of Hormuz.** Iran and Oman proposed this scheme, and IMO adopted it in 1968.

| Element | Width |
|---|---|
| Inbound lane (toward the Persian Gulf) | 2 nm |
| Separation zone | 2 nm |
| Outbound lane (toward the Gulf of Oman) | 2 nm |

The whole scheme lies in **Omani territorial waters**, off the Musandam peninsula and the Quoin Islands. The
narrowest point of the strait is between Great Quoin (Oman) and Larak (Iran). The frame (Kumzar, 50 km each way)
contains the scheme.

**2026 situation:** Iran has published its own redrawn traffic scheme for the strait, and conditions for transit
are set out in JMIC/UKMTO advisories. Check the current advisory before modelling scenarios that depend on the
lane layout.

## TSS in the map (`config/map/om/hormuz/sea.s3db`)

- Frame: Kumzar (OSM node 1718015399, 26.3383N 56.4099E) at the centre; 50 km each way
- Grid: 1000,1000 cells of 100.0 m, EPSG:32640, y axis south
- TSS source: OpenStreetMap seamarks (Overpass 2026-07-15 base): separation_lane ways 220138792, 220138816 as centrelines, banded to the separation_boundary ways 220138785, 220138843 and separation_zone way 220138722; ODbL

Zones in `isohypses`, in map cells (the direction in each name is the lane's flow):

| Zone | x | y |
|---|---|---|
| `Hormuz.TSS.Westbound.1.1` | 432–778 | 166–327 |
| `Hormuz.TSS.Eastbound.2.1` | 465–716 | 239–366 |
| `Hormuz.TSS.SeparationZone.1.1` | 442–747 | 201–348 |

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

- [IMO – Middle East / Strait of Hormuz](https://www.imo.org/en/mediacentre/hottopics/pages/middle-east-strait-of-hormuz.aspx)
- [Maritime Executive – Vessels now keeping to Omani waters in the TSS](https://maritime-executive.com/article/straits-of-hormuz-traffic-separation-scheme-keeps-within-omani-waters)
- [Maritime Executive – Iran publishes redrawn traffic scheme](https://maritime-executive.com/article/iran-publishes-redrawn-traffic-scheme-for-strait-of-hormuz)
- [Lloyd's List – Iran unveils its own Hormuz TSS](https://www.lloydslist.com/LL1156859/Iran-unveils-its-own-Hormuz-traffic-separation-scheme)
- [UKMTO/JMIC – Advisory note 004-26](https://www.ukmto.org/-/media/ukmto/products/jmic-advisory-note-004-26.pdf?rev=87d3e8f73944406f91794e728cc72bdd)
- [Washington Institute – Management arrangements in the Strait of Hormuz](https://www.washingtoninstitute.org/policy-analysis/reaching-viable-management-arrangements-strait-hormuz)
- [Wikipedia – Strait of Hormuz](https://en.wikipedia.org/wiki/Strait_of_Hormuz)
- [IMO – Ships' routeing](https://www.imo.org/en/ourwork/safety/pages/shipsrouteing.aspx)
- [Wikipedia – List of traffic separation schemes](https://en.wikipedia.org/wiki/List_of_traffic_separation_schemes)
- [Wikipedia – Traffic separation scheme](https://en.wikipedia.org/wiki/Traffic_separation_scheme)
- [Asociación Española de Marina Civil – COLREGS Rule 10 with explanations](https://marinacivil.com/index.php/articulo/seguridad-maritima/21020-colregs-rule-10-traffic-separation-schemes-with-explanations)
