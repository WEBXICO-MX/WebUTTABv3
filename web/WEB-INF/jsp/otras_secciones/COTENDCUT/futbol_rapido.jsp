<%-- 
    Document   : futbol_rapido
    Created on : 12-feb-2015, 10:25:03
    Author     : Weiss
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    if (request.getParameter("rama") != null) {
        if (request.getParameter("rama").equals("varonil")) {

%>
<!-- Varonil -->
<h1>FUTBOL RÁPIDO VARONIL</h1>
<br/>
<table style="margin:0 auto;">
    <thead>
        <tr>
            <th colspan="5">Grupo Único</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td class="ganador">8</td>
            <td>Tabasco</td>
            <td>vs</td>
            <td>Del Centro</td>
            <td class="perdedor">0</td>
        </tr>
        <tr  class="odd">
            <td class="ganador">4</td>
            <td>Usumacinta</td>
            <td>vs</td>
            <td>Campeche</td>
            <td class="perdedor">2</td>
        </tr>
        <tr>
            <td class="ganador">6</td>
            <td>Campeche</td>
            <td>vs</td>
            <td>Del Centro</td>
            <td class="perdedor">1</td>
        </tr>
        <tr  class="odd">
            <td class="perdedor">0</td>
            <td>Tabasco</td>
            <td>vs</td>
            <td>La Selva</td>
            <td class="ganador">7</td>
        </tr>
        <tr>
            <td class="perdedor">2</td>
            <td><a href="#" class="shootout_perdedor">Tabasco<a></td>
            <td>vs</td>
            <td><a href="#" class="shootout_ganador">Campeche<a></td>
            <td class="ganador">2</td>
        </tr>
        <tr  class="odd">
            <td class="ganador">4</td>
            <td><a href="#" class="shootout_ganador">La Selva<a></td>
            <td>vs</td>
            <td><a href="#" class="shootout_perdedor">Usumacinta<a></td>
            <td class="perdedor">4</td>
        </tr>
        <tr>
            <td class="ganador">2</td>
            <td>Campeche</td>
            <td>vs</td>
            <td>La Selva</td>
            <td class="perdedor">1</td>
        </tr>
        <tr  class="odd">
            <td class="perdedor">0</td>
            <td>Del Centro &nbsp;&nbsp;<a href="#" class="cancelado">*</a></td>
            <td>vs</td>
            <td>Usumacinta</td>
            <td class="ganador">5</td>
        </tr>
        <tr>
            <td class="ganador">5</td>
            <td>La Selva</td>
            <td>vs</td>
            <td>Del Centro&nbsp;&nbsp;<a href="#" class="cancelado">*</a></td>
            <td class="perdedor">0</td>
        </tr>
        <tr  class="odd">
            <td class="perdedor">0</td>
            <td>Tabasco</td>
            <td>vs</td>
            <td>Usumacinta</td>
            <td class="ganador">4</td>
        </tr>
    </tbody>
</table>
<div class="corte"></div>
<table style="margin:20px auto;">
    <tbody>
        <tr><td class="campeon">Campeón</td></tr>
        <tr><td>Usumacinta</td></tr>
        <tr><td class="subcampeon">Subcampeón</td></tr>
        <tr><td>La Selva</td></tr>
    </tbody>
</table>
<div class="corte"></div>
<%        } else {
%>
<!-- Femenil -->
<h1>FUTBOL RÁPIDO FEMENIL</h1>
<br/>
<table style="margin:0 auto;">
    <thead>
        <tr>
            <th colspan="5">Grupo Único</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td class="ganador">8</td>
            <td>La Selva</td>
            <td>vs</td>
            <td>Campeche</td>
            <td class="perdedor">2</td>
        </tr>
        <tr  class="odd">
            <td class="ganador">5</td>
            <td>Tabasco</td>
            <td>vs</td>
            <td>Del Centro</td>
            <td class="perdedor">0</td>
        </tr>
        <tr>
            <td class="ganador">17</td>
            <td>La Selva</td>
            <td>vs</td>
            <td>Chetumal</td>
            <td class="perdedor">1</td>
        </tr>
        <tr  class="odd">
            <td class="perdedor">1</td>
            <td>Campeche</td>
            <td>vs</td>
            <td>Tabasco</td>
            <td class="ganador">10</td>
        </tr>
        <tr>
            <td class="perdedor">0</td>
            <td>Del Centro</td>
            <td>vs</td>
            <td>Chetumal</td>
            <td class="ganador">2</td>
        </tr>
        <tr  class="odd">
            <td class="perdedor">1</td>
            <td>La Selva</td>
            <td>vs</td>
            <td>Tabasco</td>
            <td class="ganador">6</td>
        </tr>
        <tr>
            <td class="ganador">5</td>
            <td>Campeche</td>
            <td>vs</td>
            <td>Del Centro&nbsp;&nbsp;<a href="#" class="cancelado">*</a></td>
            <td class="perdedor">0</td>
        </tr>
        <tr  class="odd">
            <td class="perdedor">1</td>
            <td>Chetumal</td>
            <td>vs</td>
            <td>Tabasco</td>
            <td class="ganador">18</td>
        </tr>
        <tr>
            <td class="ganador">5</td>
            <td>La Selva</td>
            <td>vs</td>
            <td>Del Centro&nbsp;&nbsp;<a href="#" class="cancelado">*</a></td>
            <td class="perdedor">0</td>
        </tr>
        <tr  class="odd">
            <td class="ganador">7</td>
            <td>Campeche</td>
            <td>vs</td>
            <td>Chetumal</td>
            <td class="perdedor">1</td>
        </tr>
    </tbody>
</table>

<div class="corte"></div>
<table style="margin:20px auto;">
    <tbody>
        <tr><td class="campeon">Campeón</td></tr>
        <tr><td>Tabasco</td></tr>
        <tr><td class="subcampeon">Subcampeón</td></tr>
        <tr><td>La Selva</td></tr>
    </tbody>
</table>
<div class="corte"></div>
<%
        }
    }
%>
