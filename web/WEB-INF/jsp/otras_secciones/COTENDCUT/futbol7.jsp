<%-- 
    Document   : futbol7
    Created on : 12-feb-2015, 10:25:49
    Author     : Weiss
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    if (request.getParameter("rama") != null) {
        if (request.getParameter("rama").equals("varonil")) {

%>
<!-- Varonil -->
<h1>FUTBOL 7 VARONIL</h1>
<br/>
<table style="float: left;">
    <thead>
        <tr>
            <th colspan="5">Grupo A</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td class="ganador">3</td>
            <td>Campeche</td>
            <td>vs</td>
            <td>Metropolitana</td>
            <td class="perdedor">1</td>
        </tr>
        <tr  class="odd">
            <td class="perdedor">1</td>
            <td>Metropolitana</td>
            <td>vs</td>
            <td>Poniente</td>
            <td class="ganador">4</td>
        </tr>
        <tr>
            <td class="ganador">4</td>
            <td>Campeche</td>
            <td>vs</td>
            <td>Poniente</td>
            <td class="perdedor">0</td>
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
            <td class="perdedor">1</td>
            <td>Mayab</td>
            <td>vs</td>
            <td>Usumacinta</td>
            <td class="ganador">2</td>
        </tr>
        <tr  class="odd">
            <td class="ganador">6</td>
            <td>Usumacinta</td>
            <td>vs</td>
            <td>Tabasco</td>
            <td class="perdedor">5</td>
        </tr>
        <tr>
            <td class="perdedor">2</td>
            <td>Mayab</td>
            <td>vs</td>
            <td>Tabasco</td>
            <td class="ganador">8</td>
        </tr>
    </tbody>
</table>
<table style="margin: 0 auto;">
    <thead>
        <tr>
            <th colspan="5">Final</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td class="ganador">6</td>
            <td>Campeche</td>
            <td>vs</td>
            <td >Usumacinta</td>
            <td class="perdedor">3</td>
        </tr>
    </tbody>
</table>
<div class="corte"></div>
<table style="margin:25px auto;">
    <tbody>
        <tr><td class="campeon">Campeón</td></tr>
        <tr><td>Campeche</td></tr>
        <tr><td class="subcampeon">Subcampeón</td></tr>
        <tr><td>Usumacinta</td></tr>
    </tbody>
</table>
<div class="corte"></div>
<%        } else {
%>
<!-- Femenil -->
<h1>FUTBOL 7 FEMENIL</h1>
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
            <td>La Selva</td>
            <td>vs</td>
            <td >Candelaria &nbsp;&nbsp;<a href="#" class="cancelado">*</a></td>
            <td class="perdedor">0</td>
        </tr>
        <tr  class="odd">
            <td class="perdedor">0</td>
            <td>Candelaria &nbsp;&nbsp;<a href="#" class="cancelado">*</a></td>
            <td>vs</td>
            <td>Riviera Maya</td>
            <td class="ganador">2</td>
        </tr>
        <tr>
            <td class="ganador" >6</td>
            <td>La Selva</td>
            <td>vs</td>
            <td>Riviera Maya</td>
            <td class="perdedor">5</td>
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
            <td class="ganador">4</td>
            <td>Sureste de Veracruz</td>
            <td>vs</td>
            <td>Mayab</td>
            <td class="perdedor">1</td>
        </tr>
        <tr  class="odd">
            <td class="ganador">6</td>
            <td>Mayab</td>
            <td>vs</td>
            <td >Usumacinta</td>
            <td class="perdedor">1</td>
        </tr>
        <tr>
            <td class="perdedor">1</td>
            <td>Sureste de Veracruz</td>
            <td>vs</td>
            <td>Usumacinta</td>
            <td class="ganador">3</td>
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
            <td>La Selva</td>
            <td>vs</td>
            <td>Mayab</td>
            <td class="perdedor">0</td>
        </tr>
    </tbody>
</table>
<div class="corte"></div>
<table style="margin:25px auto;">
    <tbody>
        <tr><td class="campeon">Campeón</td></tr>
        <tr><td>La Selva</td></tr>
        <tr><td class="subcampeon">Subcampeón</td></tr>
        <tr><td>Mayab</td></tr>
    </tbody>
</table>
<div class="corte"></div>
<%
        }
    }
%>
