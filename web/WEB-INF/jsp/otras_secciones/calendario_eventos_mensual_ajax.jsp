<%-- 
    Document   : calendario_eventos_mensual_ajax
    Created on : 26/09/2014, 12:53:48 PM
    Author     : Roberto Eder Weiss Juárez
--%>
<%@page contentType="text/html" pageEncoding="UTF-8" session="false"%>
<%@taglib uri="/struts-tags" prefix="s"  %>
<s:if test="calendarioList.size() > 0">
    <table id="tabla_calendario_eventos">
        <thead>
            <tr>
                <th colspan="2">&nbsp;</th>
            </tr>
        </thead>
        <tbody>

            <s:iterator value="calendarioList">
                <tr>
                    <td colspan="2" class="fecha_actual"><s:property value="fecha_realizacion_formateda"/></td>
                </tr>
                <tr class="border_top">
                    <td class="horario"><s:property value="hora_realizacion"/></td>
                    <td class="descripcion"><span class="negritas"><s:property value="nombre"/></span><br/>
                        <span><s:property value="descripcion"/></span><br/>
                        <span class="negritas">Lugar: </span><s:property value="lugar_realizacion"/><br/>
                        <span class="negritas">Organizador: </span><s:property value="organizador"/><br/>
                        <span style="float: right;"><a href="javascript:void(0);" onclick="getCalendarioEventos(<s:property value="id"/>);"><img src="${pageContext.request.contextPath}/img/otras_secciones/calendario_eventos/btn_mas_informacion-min.png" alt="Más información de <s:property value="nombre"/>"/></a></span>
                    </td>
                </tr>
            </s:iterator>
        </tbody>
    </table>

</s:if>
<s:else>    
    <table id="tabla_calendario_eventos">
        <thead>
            <tr>
                <th colspan="2">&nbsp;</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td colspan="2" class="fecha_actual">No hay eventos disponibles para este mes</td>
            </tr>
        </tbody>
    </table>
</s:else>

