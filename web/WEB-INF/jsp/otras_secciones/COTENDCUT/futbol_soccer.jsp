<%-- 
    Document   : futbol_soccer
    Created on : 12-feb-2015, 10:24:51
    Author     : Weiss
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    if (request.getParameter("rama") != null) {
        if (request.getParameter("rama").equals("varonil")) {

%>
<!-- Varonil -->
<h1>FUTBOL SOCCER VARONIL</h1>
<br/>
<table style="float: left;">
    <thead>
        <tr>
            <th colspan="5">Grupo A</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td class="empate">1</td>
            <td>Tabasco</td>
            <td>vs</td>
            <td>Poniente</td>
            <td class="empate">1</td>
        </tr>
        <tr  class="odd">
            <td class="perdedor">2</td>
            <td>Chetumal</td>
            <td>vs</td>
            <td>La Selva</td>
            <td class="ganador">3</td>
        </tr>
        <tr>
            <td class="empate">1</td>
            <td>La Selva</td>
            <td>vs</td>
            <td>Tabasco</td>
            <td class="empate">1</td>
        </tr>
        <tr  class="odd">
            <td class="ganador">1</td>
            <td>Poniente</td>
            <td>vs</td>
            <td >Chetumal</td>
            <td class="perdedor">0</td>
        </tr>
        <tr>
            <td class="ganador">9</td>
            <td>Tabasco</td>
            <td>vs</td>
            <td>Chetumal</td>
            <td class="perdedor">0</td>
        </tr>
        <tr  class="odd">
            <td class="ganador">3</td>
            <td>La Selva</td>
            <td>vs</td>
            <td>Poniente</td>
            <td class="perdedor">1</td>
        </tr>
    </tbody>
</table>
<table style=" float: right;">
    <thead>
        <tr>
            <th colspan="5">Grupo B</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td class="perdedor">1</td>
            <td>Mayab</td>
            <td>vs</td>
            <td>Regional del Sur</td>
            <td class="ganador">4</td>
        </tr>
        <tr class="odd">
            <td class="ganador">4</td>
            <td>Regional del Sur</td>
            <td>vs</td>
            <td>Del Centro</td>
            <td class="perdedor">0</td>
        </tr>
        <tr>
            <td>-</td>
            <td>Mayab&nbsp;&nbsp;<a href="#" class="cancelado">*</a></td>
            <td>vs</td>
            <td>Del Centro&nbsp;&nbsp;<a href="#" class="cancelado">*</a></td>
            <td>-</td>
        </tr>
    </tbody>
</table>
<div class="corte"></div>
<table style=" float: left;">
    <thead>
        <tr>
            <th colspan="5">Grupo C</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td class="perdedor">0</td>
            <td>Cancún</td>
            <td>vs</td>
            <td>Riviera Maya</td>
            <td class="ganador">1</td>
        </tr>
        <tr class="odd">
            <td class="perdedor">0</td>
            <td>Riviera Maya</td>
            <td>vs</td>
            <td>Sureste de Veracruz</td>
            <td class="ganador">2</td>
        </tr>
        <tr>
            <td class="perdedor">1</td>
            <td>Cancún</td>
            <td>vs</td>
            <td>Sureste de Veracruz</td>
            <td class="ganador">4</td>
        </tr>
    </tbody>
</table>
<table style=" float: right;">
    <thead>
        <tr>
            <th colspan="5">Grupo D</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td class="ganador">2</td>
            <td>Campeche</td>
            <td>vs</td>
            <td>Candelaria&nbsp;&nbsp;<a href="#" class="cancelado">*</a></td>
            <td class="perdedor">0</td>
        </tr>
        <tr class="odd">
            <td class="perdedor">0</td>
            <td>Candelaria &nbsp;&nbsp;<a href="#" class="cancelado">*</a></td>
            <td>vs</td>
            <td>Metropolitana</td>
            <td class="ganador">2</td>
        </tr>
        <tr>
            <td class="ganador">2</td>
            <td>Campeche</td>
            <td>vs</td>
            <td >Metropolitana</td>
            <td class="perdedor">1</td>
        </tr>
    </tbody>
</table>
<div class="corte"></div>
<table style=" float: left;">
    <thead>
        <tr>
            <th colspan="5">Semifinal 1</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td class="perdedor">1</td>
            <td>La Selva</td>
            <td>vs</td>
            <td>Sureste de Veracruz</td>
            <td class="ganador">4</td>
        </tr>
    </tbody>
</table>

<table style=" float: right;">
    <thead>
        <tr>
            <th colspan="5">Semifinal 2</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td class="perdedor">4</td>
            <td>Regional del Sur</td>
            <td>vs</td>
            <td>Campeche</td>
            <td class="ganador">5</td>
        </tr>
    </tbody>
</table>

<div class="corte"></div>

<table style="margin:25px auto;">
    <tbody>
        <tr><td class="campeon">Campeón</td></tr>
        <tr><td>Sureste de Veracruz</td></tr>
        <tr><td class="subcampeon">Subcampeón</td></tr>
        <tr><td>Campeche</td></tr>
    </tbody>
</table>
<div class="corte"></div>
<%        } else {
%>
<!-- Femenil -->
<h1>FUTBOL SOCCER FEMENIL</h1>
<br/>
<table style="margin: 0 auto;">
    <thead>
        <tr>
            <th colspan="5">Grupo Único</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td class="perdedor">0</td>
            <td>Metropolitana</td>
            <td>vs</td>
            <td>Regional del sur</td>
            <td class="ganador">2</td>
        </tr>
        <tr  class="odd">
            <td class="ganador">2</td>
            <td>Regional del sur</td>
            <td>vs</td>
            <td>Cancún</td>
            <td class="perdedor">1</td>
        </tr>
        <tr>
            <td class="ganador">1</td>
            <td>Metropolitana</td>
            <td>vs</td>
            <td>Cancún</td>
            <td class="perdedor">0</td>
        </tr>
    </tbody>
</table>
<div class="corte"></div>
<table style="margin: 20px auto;">
    <tbody>
        <tr><td class="campeon">Campeón</td></tr>
        <tr><td>Regional del Sur</td></tr>
        <tr><td class="subcampeon">Subcampeón</td></tr>
        <tr><td>Metropolitana</td></tr>
    </tbody>
</table>
<div class="corte"></div>
<%
        }
    }
%>
