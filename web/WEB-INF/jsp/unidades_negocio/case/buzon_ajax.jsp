<%-- 
    Document   : buzon_ajax
    Created on : 23-sep-2015, 14:02:24
    Author     : Weiss
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" session="false"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<s:if test="registrosList.size() > 0">
    <s:url var="downloadFile" action="excel"> <s:param name="st" value="%{st}"></s:param></s:url>
    <p style="margin-top:10px; margin-bottom: 10px"><s:a href="%{downloadFile}"> <span class="glyphicon glyphicon-cloud-download"></span> Descargar Excel</s:a></p>
        <table class="table table-hover table-condensed table-striped">
            <thead>
                <tr>
                    <th>#</th>
                    <th>Nombre completo</th>
                    <th>Capacitación</th>
                    <th>Fechas de la capacitación</th>
                    <s:if test="st==1">
                      <th>Fecha de registro</th>
                    </s:if>
                    <s:else>
                       <th>Fecha cambio de estatus</th>
                    </s:else> 
                </tr>
            </thead>
            <tbody>
            <s:iterator value="registrosList" status="sts">
                <tr>
                    <td><s:property value="%{#sts.index + 1}"/></td>
                    <td><a data-toggle="modal" data-target="#myModal" data-remote="registro_id.action?id=<s:property value="id" />" href="javascript:void(0);"><s:property value="nombre" /> <s:property value="apellido_pat" /> <s:property value="apellido_mat" /></a></td>
                    <td><s:property value="calendario_capacitacion.capacitacion.nombre"></s:property></td>
                    <td><s:property value="calendario_capacitacion.hola"></s:property></td>
                    <td><s:if test="status==1"><s:property value="fecha_registro" /></s:if><s:else><s:property value="fecha_modificacion" /></s:else></td>
                </tr>
            </s:iterator>
        </tbody>
    </table>
</s:if>
<s:else>
    <h4>No hay registros para mostrar</h4>
</s:else>