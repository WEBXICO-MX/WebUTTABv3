<%-- 
    Document   : canto
    Created on : 12-feb-2015, 10:26:07
    Author     : Weiss
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    if (request.getParameter("rama") != null) {
        if (request.getParameter("rama").equals("varonil")) {

%>
<table style="margin:0 auto;">
    <thead>
        <tr>
            <th colspan="2">1er. Lugar</th>
        </tr>
    </thead>
    <tbody>
    	<tr>
            <td colspan="2">Sureste de Veracruz</td>          
        </tr>
        <tr  class="odd">
            <td colspan="2">Luis Miguel Olivera Vicente</td>         
        </tr>       
    </tbody>
</table>
<table style="margin: 0 auto;">
    <thead>
        <tr>
            <th colspan="2">2do. Lugar</th>
        </tr>
    </thead>
    <tbody>
    	<tr>
            <td colspan="2">Sureste de Veracruz</td>          
        </tr>
        <tr  class="odd">
            <td colspan="2">Tamar Arely Gómez Lázaro</td>         
        </tr>     
    </tbody>
</table>
<table style="margin: 0 auto;">
    <thead>
        <tr>
            <th colspan="2">3er. Lugar</th>
        </tr>
    </thead>
    <tbody>
    	<tr>
            <td colspan="2"> Usumacinta</td>          
        </tr>
        <tr  class="odd">
            <td colspan="2">Gamaliel Ramos Mena</td>         
        </tr>       
    </tbody>
</table>
<table style="margin: 0 auto;">
    <thead>
        <tr>
            <th colspan="2">4to. Lugar</th>
        </tr>
    </thead>
    <tbody>
    	<tr>
            <td colspan="2">Tabasco</td>          
        </tr>
        <tr  class="odd">
            <td colspan="2">Heidy Guadalupe García Gómez</td>         
        </tr>     
    </tbody>
</table>
<div class="corte"></div>
<%        
	} 
	else 
	{
%>
<!-- Femenil -->
<table style="margin:0 auto;">
    <thead>
        <tr>
            <th colspan="2">1er. Lugar</th>
        </tr>
    </thead>
    <tbody>
    	<tr>
            <td colspan="2">Sureste de Veracruz</td>          
        </tr>
        <tr class="odd">
            <td colspan="2">Luis Miguel Olivera Vicente</td>         
        </tr>       
    </tbody>
</table>
<table style="margin: 0 auto;">
    <thead>
        <tr>
            <th colspan="2">2do. Lugar</th>
        </tr>
    </thead>
    <tbody>
    	<tr>
            <td colspan="2">Sureste de Veracruz</td>          
        </tr>
        <tr  class="odd">
            <td colspan="2">Tamar Arely Gómez Lázaro</td>         
        </tr>     
    </tbody>
</table>
<table style="margin: 0 auto;">
    <thead>
        <tr>
            <th colspan="2">3er. Lugar</th>
        </tr>
    </thead>
    <tbody>
    	<tr>
            <td colspan="2">Usumacinta</td>          
        </tr>
        <tr  class="odd">
            <td colspan="2">Gamaliel Ramos Mena</td>         
        </tr>       
    </tbody>
</table>
<table style="margin: 0 auto;">
    <thead>
        <tr>
            <th colspan="2">4to. Lugar</th>
        </tr>
    </thead>
    <tbody>
    	<tr>
            <td colspan="2">Tabasco</td>          
        </tr>
        <tr  class="odd">
            <td colspan="2">Heidy Guadalupe García Gómez</td>         
        </tr>     
    </tbody>
</table>
<div class="corte"></div>
<%
        }
    }
%>