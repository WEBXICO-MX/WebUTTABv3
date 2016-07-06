<%-- 
    Document   : beisbol
    Created on : 12-feb-2015, 10:26:00
    Author     : Weiss
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    if (request.getParameter("rama") != null) {
        if (request.getParameter("rama").equals("varonil")) {

%>
<!-- Varonil -->
<h1>BEISBOL VARONIL</h1>
<br/>
<table style="margin:0 auto;">
    <thead>
        <tr>
            <th colspan="5">Grupo Único</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td class="ganador">11</td>
            <td>Metropolitana</td>
            <td>vs</td>
            <td>Tabasco</td>
            <td class="perdedor">1</td>
        </tr>
        <tr  class="odd">
            <td class="perdedor">12</td>
            <td>Sureste de Veracruz</td>
            <td>vs</td>
            <td>Campeche</td>
            <td class="ganador">22</td>
        </tr>
        <tr>
            <td class="perdedor">1</td>
            <td>Campeche</td>
            <td>vs</td>
            <td>Metropolitana</td>
            <td class="ganador">8</td>
        </tr>
        <tr class="odd">
            <td class="ganador">17</td>
            <td>Tabasco</td>
            <td>vs</td>
            <td>Sureste de Veracruz</td>
            <td class="perdedor">8</td>
        </tr>
        <tr>
            <td class="ganador">5</td>
            <td>Metropolitana</td>
            <td>vs</td>
            <td>Sureste de Veracruz&nbsp;<a href="#" class="cancelado">*</a></td>
            <td class="perdedor">0</td>
        </tr>
        <tr  class="odd">
            <td class="perdedor">6</td>
            <td>Campeche</td>
            <td>vs</td>
            <td>Tabasco</td>
            <td class="ganador">12</td>
        </tr>
    </tbody>
</table>
<div class="corte"></div>
<table style="margin:20px auto;">
    <tbody>
        <tr><td class="campeon">Campeón</td></tr>
        <tr><td>Metropolitana</td></tr>
        <tr><td class="subcampeon">Subcampeón</td></tr>
        <tr><td>Tabasco</td></tr>
    </tbody>
</table>
<div class="corte"></div>
<%        } else {
%>
<!-- Femenil -->
<h1>No existe rama femenil en beisbol</h1>
<%
        }
    }
%>

