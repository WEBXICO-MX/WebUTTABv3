<%-- 
    Document   : calendario_eventos_id_ajax
    Created on : 18/09/2014, 07:55:06 AM
    Author     : Roberto Eder Weiss Juárez
--%>
<%@page import="mx.edu.uttab.util.Utilerias"%>
<%@page import="java.util.Calendar"%>
<%@page contentType="text/html" pageEncoding="UTF-8" session="false"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<div class="area_info_calendario_eventos_1">
    <div class="area_info_calendario_eventos_1">
        <div class="area_info_calendario_eventos_1_titulo"><h4><s:property value="calendario.nombre"/></h4></div>
        <div class="area_info_calendario_eventos_1_info">
            <p><s:property value="calendario.descripcion"/></p><br/>
            <p><span class="negritas">Fecha:</span> <s:property value="calendario.fecha_realizacion_formateda"/></p><br/>
            <p><span class="negritas">Hora:</span> <s:property value="calendario.hora_realizacion"/></p><br/>
            <p><span class="negritas">Lugar:</span> <s:property value="calendario.lugar_realizacion"/></p><br/>
            <p><span class="negritas">Organizador:</span> <s:property value="calendario.organizador"/></p><br/>
            <p><span class="negritas">Costo:</span> <s:property value="calendario.costo"/></p><br/>
            <p><span class="negritas">Informes:</span> <s:property value="calendario.informes"/></p>
        </div>
    </div>
</div>