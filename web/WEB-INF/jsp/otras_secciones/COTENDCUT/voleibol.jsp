<%-- 
    Document   : voleibol
    Created on : 12-feb-2015, 10:25:33
    Author     : Weiss
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    if (request.getParameter("rama") != null) {
        if (request.getParameter("rama").equals("varonil")) {

%>
<!-- Varonil -->
<h1>VOLEIBOL VARONIL</h1>
<br/>
<table style="float: left;">
    <thead>
        <tr>
            <th colspan="5">Grupo A</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td class="ganador">2</td>
            <td>Metropolitana</td>
            <td>vs</td>
            <td>Regional del Sur &nbsp;&nbsp;<a href="#" class="cancelado">*</a></td>
            <td class="perdedor">0</td>
        </tr>
        <tr  class="odd">
            <td class="perdedor">0</td>
            <td>Regional del Sur &nbsp;&nbsp;<a href="#" class="cancelado">*</a></td>
            <td>vs</td>
            <td>Campeche</td>
            <td class="ganador">2</td>
        </tr>
        <tr>
            <td class="perdedor">1</td>
            <td>Metropolitana</td>
            <td>vs</td>
            <td>Campeche</td>
            <td class="ganador">2</td>
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
            <td>La Selva</td>
            <td>vs</td>
            <td >Tabasco</td>
            <td class="ganador">2</td>
        </tr>
        <tr class="odd">
            <td class="perdedor">0</td>
            <td>Riviera Maya  &nbsp;&nbsp;<a href="#" class="cancelado">*</a></td>
            <td>vs</td>
            <td>Tabasco</td>
            <td class="ganador">2</td>
        </tr>
        <tr>
            <td class="ganador">2</td>
            <td>La Selva</td>
            <td>vs</td>
            <td>Riviera Maya  &nbsp;&nbsp;<a href="#" class="cancelado">*</a></td>
            <td class="perdedor">0</td>
        </tr>
    </tbody>
</table>
<div class="corte"></div>
<table style="margin:0 auto 25px auto;">
    <thead>
        <tr>
            <th colspan="5">Grupo C</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td class="ganador">2</td>
            <td>Cancún</td>
            <td>vs</td>
            <td>Candelaria &nbsp;&nbsp;<a href="#" class="cancelado">*</a></td>
            <td class="perdedor">0</td>
        </tr>
        <tr class="odd">
            <td class="perdedor">0</td>
            <td>Candelaria &nbsp;&nbsp;<a href="#" class="cancelado">*</a></td>
            <td>vs</td>
            <td>Sureste de Veracruz</td>
            <td class="ganador">2</td>
        </tr>
        <tr>
            <td class="perdedor">0</td>
            <td>Cancún</td>
            <td>vs</td>
            <td>Sureste de Veracruz</td>
            <td class="ganador">2</td>
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
            <td class="perdedor">0</td>
            <td>Campeche</td>
            <td>vs</td>
            <td>Sureste de Veracruz</td>
            <td class="ganador">2</td>
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
            <td class="perdedor">0</td>
            <td>Metropolitana</td>
            <td>vs</td>
            <td>Tabasco</td>
            <td class="ganador">2</td>
        </tr>
    </tbody>
</table>
<div class="corte"></div>
<table style="margin:0 auto;">
    <thead>
        <tr>
            <th colspan="5">Final</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td class="ganador">2</td>
            <td>Sureste de Veracruz</td>
            <td>vs</td>
            <td>Tabasco</td>
            <td class="perdedor">0</td>
        </tr>
    </tbody>
</table>
<div class="corte"></div>

<table style="margin:25px auto;">
    <tbody>
        <tr><td class="campeon">Campeón</td></tr>
        <tr><td>Sureste de Veracruz</td></tr>
        <tr><td class="subcampeon">Subcampeón</td></tr>
        <tr><td>Tabasco</td></tr>
    </tbody>
</table>
<div class="corte"></div>
<%        } else {
%>
<!-- Femenil -->
<h1>VOLEIBOL FEMENIL</h1>
<br/>
<table style="float: left;">
    <thead>
        <tr>
            <th colspan="5">Grupo A</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td class="perdedor">0</td>
            <td>Regional del Sur&nbsp;&nbsp;<a href="#" class="cancelado">*</a></td>
            <td>vs</td>
            <td>Metropolitana</td>
            <td class="ganador">2</td>
        </tr>
        <tr  class="odd">
            <td class="ganador">2</td>
            <td>Metropolitana</td>
            <td>vs</td>
            <td>Tabasco</td>
            <td class="perdedor">0</td>
        </tr>
        <tr>
            <td class="perdedor">0</td>
            <td>Regional del Sur &nbsp;&nbsp;<a href="#" class="cancelado">*</a></td>
            <td>vs</td>
            <td>Tabasco</td>
            <td class="ganador">2</td>
        </tr>
    </tbody>
</table>
<table style="float:right;">
    <thead>
        <tr>
            <th colspan="5">Grupo B</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td class="perdedor">0</td>
            <td>Sureste de Veracruz</td>
            <td>vs</td>
            <td>Cancún</td>
            <td class="ganador">2</td>
        </tr>
        <tr  class="odd">
            <td class="ganador">2</td>
            <td>Cancún</td>
            <td>vs</td>
            <td>Riviera Maya</td>
            <td class="perdedor">0</td>
        </tr>
        <tr>
            <td class="ganador">2</td>
            <td>Sureste de Veracruz</td>
            <td>vs</td>
            <td>Riviera Maya</td>
            <td class="perdedor">0</td>
        </tr>
    </tbody>
</table>
<table style="margin:0 auto;">
    <thead>
        <tr>
            <th colspan="5">Final</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td class="perdedor">1</td>
            <td>Metropolitana</td>
            <td>vs</td>
            <td>Cancún</td>
            <td class="ganador">2</td>
        </tr>
    </tbody>
</table>
<div class="corte"></div>
<table style="margin:25px auto;">
    <tbody>
        <tr><td class="campeon">Campeón</td></tr>
        <tr><td>Cancún</td></tr>
        <tr><td class="subcampeon">Subcampeón</td></tr>
        <tr><td>Metropolitana</td></tr>
    </tbody>
</table>
<div class="corte"></div>
<%
        }
    }
%>
