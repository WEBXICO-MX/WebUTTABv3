<%-- 
    Document   : basquetball
    Created on : 12-feb-2015, 10:25:20
    Author     : Weiss
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    if (request.getParameter("rama") != null) {
        if (request.getParameter("rama").equals("varonil")) {

%>
<!-- Varonil -->
<h1>BASQUETBOL VARONIL</h1>
<br/>
<table style="float: left;">
    <thead>
        <tr>
            <th colspan="5">Grupo A</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td class="perdedor">22</td>
            <td>Mayab</td>
            <td>vs</td>
            <td>Regional del Sur</td>
            <td class="ganador">49</td>
        </tr>
        <tr  class="odd">
            <td class="perdedor">23</td>
            <td>Sureste de Veracruz</td>
            <td>vs</td>
            <td>Del Centro</td>
            <td class="ganador">34</td>
        </tr>
        <tr>
            <td class="perdedor">29</td>
            <td>Mayab</td>
            <td>vs</td>
            <td>Sureste de Veracruz</td>
            <td class="ganador">42</td>
        </tr>
        <tr  class="odd">
            <td class="ganador">39</td>
            <td>Regional del Sur</td>
            <td>vs</td>
            <td>Del Centro</td>
            <td class="perdedor">37</td>
        </tr>
        <tr>
            <td class="perdedor">21</td>
            <td>Mayab</td>
            <td>vs</td>
            <td>Del Centro</td>
            <td class="ganador">34</td>
        </tr>
        <tr  class="odd">
            <td class="ganador">33</td>
            <td>Regional del Sur</td>
            <td>vs</td>
            <td>Sureste de Veracruz</td>
            <td class="perdedor">10</td>
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
            <td class="ganador">59</td>
            <td>Campeche</td>
            <td>vs</td>
            <td>La Selva</td>
            <td class="perdedor">35</td>
        </tr>
        <tr class="odd">
            <td class="ganador">44</td>
            <td>Cancún</td>
            <td>vs</td>
            <td>Chetumal</td>
            <td class="perdedor">41</td>
        </tr>
        <tr>
            <td class="ganador">39</td>
            <td>Campeche</td>
            <td>vs</td>
            <td>Cancún</td>
            <td class="perdedor">28</td>
        </tr>
        <tr class="odd">
            <td class="ganador">72</td>
            <td>La Selva</td>
            <td>vs</td>
            <td>Chetumal</td>
            <td class="perdedor">25</td>
        </tr>
        <tr>
            <td class="ganador">45</td>
            <td>Campeche</td>
            <td>vs</td>
            <td>Chetumal</td>
            <td class="perdedor">35</td>
        </tr>
        <tr class="odd">
            <td class="ganador">42</td>
            <td>La Selva</td>
            <td>vs</td>
            <td>Cancún</td>
            <td class="perdedor">26</td>
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
            <td class="perdedor">0</td>
            <td>Riviera Maya &nbsp;&nbsp;<a href="#" class="cancelado">*</a></td>
            <td>vs</td>
            <td>Metropolitana</td>
            <td class="ganador">20</td>
        </tr>
        <tr class="odd">
            <td class="perdedor">27</td>
            <td>Metropolitana</td>
            <td>vs</td>
            <td>Tabasco</td>
            <td class="ganador">33</td>
        </tr>
        <tr>
            <td class="perdedor">0</td>
            <td>Riviera Maya &nbsp;&nbsp;<a href="#" class="cancelado">*</a></td>
            <td>vs</td>
            <td>Tabasco</td>
            <td class="ganador">20</td>
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
            <td class="perdedor">27</td>
            <td>Regional del Sur</td>
            <td>vs</td>
            <td>Tabasco</td>
            <td class="ganador">48</td>
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
            <td class="perdedor">34</td>
            <td>La Selva</td>
            <td>vs</td>
            <td>Campeche</td>
            <td class="ganador">44</td>
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
            <td class="perdedor">34</td>
            <td>Tabasco</td>
            <td>vs</td>
            <td>Campeche</td>
            <td class="ganador">50</td>
        </tr>
    </tbody>
</table>
<div class="corte"></div>

<table style="margin:25px auto;">
    <tbody>
        <tr><td class="campeon">Campeón</td></tr>
        <tr><td>Campeche</td></tr>
        <tr><td class="subcampeon">Subcampeón</td></tr>
        <tr><td>Tabasco</td></tr>
    </tbody>
</table>
<div class="corte"></div>
<%        } else {
%>
<!-- Femenil -->
<h1>BASQUETBOL FEMENIL</h1>
<br/>
<table style="float: left;">
    <thead>
        <tr>
            <th colspan="5">Grupo A</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td class="perdedor">29</td>
            <td>Chetumal</td>
            <td>vs</td>
            <td>Usumacinta</td>
            <td class="ganador">32</td>
        </tr>
        <tr class="odd">
            <td class="perdedor">13</td>
            <td>Poniente</td>
            <td>vs</td>
            <td>Metropolitana</td>
            <td class="ganador">32</td>
        </tr>
        <tr>
            <td class="perdedor">14</td>
            <td>Poniente</td>
            <td>vs</td>
            <td>Usumacinta</td>
            <td class="ganador">37</td>
        </tr>
        <tr class="odd">
            <td class="ganador">45</td>
            <td>Metropolitana</td>
            <td>vs</td>
            <td>Chetumal</td>
            <td class="perdedor">21</td>
        </tr>
        <tr>
            <td class="ganador">38</td>
            <td>Chetumal</td>
            <td>vs</td>
            <td>Poniente</td>
            <td class="perdedor">28</td>
        </tr>
        <tr class="odd">
            <td class="ganador">24</td>
            <td>Metropolitana</td>
            <td>vs</td>
            <td>Usumacinta</td>
            <td class="perdedor">22</td>
        </tr>
    </tbody>
</table>

<table style="float: right;">
    <thead>
        <tr>
            <th colspan="5">Grupo B</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td class="ganador">20</td>
            <td>Cancún</td>
            <td>vs</td>
            <td>Regional del Sur&nbsp;&nbsp;<a href="#" class="cancelado">*</a></td>
            <td class="perdedor">0</td>
        </tr>
        <tr class="odd">
            <td class="ganador">71</td>
            <td>Cancún</td>
            <td>vs</td>
            <td>Tabasco</td>
            <td class="perdedor">6</td>
        </tr>
        <tr>
            <td class="perdedor">0</td>
            <td>Regional del Sur &nbsp;&nbsp;<a href="#" class="cancelado">*</a></td>
            <td>vs</td>
            <td>Tabasco</td>
            <td class="ganador">20</td>
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
            <td class="perdedor">18</td>
            <td>Metropolitana</td>
            <td>vs</td>
            <td>Cancún</td>
            <td class="ganador">45</td>
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

