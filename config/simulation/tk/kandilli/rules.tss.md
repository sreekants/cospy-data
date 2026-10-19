# Traffic separation schemes – Kandilli (Strait of Istanbul, Arnavutköy-Kandilli reach)

**Location:** `tk/kandilli`  
**Status:** TSS inside the map frame (drawn in sea.s3db)  
**Compiled:** 2026-10-06, from the web sources listed below. Verify against the IMO *Ships' Routeing* publication and current national charts before relying on positions.

## Schemes

**Traffic separation scheme in the Strait of Istanbul** (Turkish Straits Maritime Traffic Regulations, IMO-adopted).
This frame covers the reach between Arnavutköy and Kandilli (centre 41.0580 N 29.0471 E). The lanes are divided by a
separation line; southbound traffic uses the western lane (European side), northbound the eastern lane (Asian side).
Speed over ground 10 kn; no overtaking unless absolutely necessary and then with TSVTS permission; Turkish Straits
VTS (Kandilli sector) traffic control. Anchoring is prohibited in the strait outside designated anchorages.

**How the lanes are drawn.** Each lane is the area between its outer OSM separation_boundary and the separation line
(`.claude/skills/mapgen/tss_lanes.py`). They coincide closely with the lanes of the legacy hand-drawn map.

## TSS in the map (`config/map/tk/kandilli/sea.s3db`)

- Frame: centre of the legacy hand-drawn map (map units 600,400), georeferenced by fitting its traced coastline to the OSM Bosphorus coastline (6.08 m per legacy unit, rotated 1.8 deg, median 14 m) (41.058N 29.04712E): 3.66 km W, 2.44 km S, 2.44 km N, 3.66 km E
- Grid: 1200,800 cells of 6.1 m, EPSG:32635, y axis south
- TSS source: OpenStreetMap seamarks: lanes as faces of separation_boundary/separation_line/separation_zone edges crossed by separation_lane centrelines; separation_zone ways; ODbL; lanes rebuilt by mapgen tss_lanes.py: each lane between its outer separation_boundary and the separation_line or separation_zone side

Zones in `isohypses`, in map cells (the direction in each name is the lane's flow):

| Zone | x | y |
|---|---|---|
| `Kandilli.TSS.Northbound.1.1` | 211–798 | 0–800 |
| `Kandilli.TSS.Southbound.2.1` | 119–739 | 0–800 |

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

- [UN DOALOS – Maritime Traffic Regulations for the Turkish Straits and the Marmara Region (1994)](https://www.un.org/depts/los/LEGISLATIONANDTREATIES/PDFFILES/TUR_1994_Regulations.pdf)
- [VDA – Maritime Traffic Regulations for the Turkish Straits (2019, English)](https://www.vda.org.tr/upload/duyuru/T%C3%9CRK%20BO%C4%9EAZLARI%20DEN%C4%B0Z%20TRAF%C4%B0K%20D%C3%9CZEN%C4%B0%20Y%C3%96NETMEL%C4%B0%C4%9E%C4%B0%20%C4%B0NG%C4%B0L%C4%B0ZCE%202019.pdf)
- [Kıyı Emniyeti – User's Guide of Turkish Straits VTS](https://kiyiemniyeti.gov.tr/Data/1/Files/Document/Documents/9S/6R/yY/wu/TSVTS_User_Guide_21.05.20.pdf)
- [OpenStreetMap seamarks: separation lanes, boundaries, separation line and zone (ways 1034443802-1034443809), anchorage (way 1110599069)](https://www.openstreetmap.org/way/1034443809)
- [IMO – Ships' routeing](https://www.imo.org/en/ourwork/safety/pages/shipsrouteing.aspx)
- [Wikipedia – List of traffic separation schemes](https://en.wikipedia.org/wiki/List_of_traffic_separation_schemes)
- [Wikipedia – Traffic separation scheme](https://en.wikipedia.org/wiki/Traffic_separation_scheme)
- [Asociación Española de Marina Civil – COLREGS Rule 10 with explanations](https://marinacivil.com/index.php/articulo/seguridad-maritima/21020-colregs-rule-10-traffic-separation-schemes-with-explanations)
