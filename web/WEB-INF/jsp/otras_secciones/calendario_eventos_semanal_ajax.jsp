<%-- 
    Document   : calendario_eventos_semanal_ajax
    Created on : 17/09/2014, 08:38:48 AM
    Author     : Roberto Eder Weiss Juárez
--%>
<%@page contentType="text/html" pageEncoding="UTF-8" session="false"%>
<%@taglib uri="/struts-tags" prefix="s"  %>
<s:if test="calendarioList.size() > 0">
    <table id="tabla_calendario_eventos">
        <thead>
            <tr>
                <th colspan="2"><a href="javascript:void(0);" onclick="backEventsDayWeek();">&LT;&LT;&nbsp;</a>&nbsp;<s:property value="semana_completa"/>&nbsp;&nbsp;<a href="javascript:void(0);" onclick="forwardEventsDayWeek();">&GT;&GT;</a></th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td colspan="2" class="fecha_actual">&nbsp;</td>
            </tr>
            <s:iterator value="calendarioList">
                <tr class="border_top oculto <s:property value="fecha_realizacion_css"/>">
                    <td class="horario"><s:property value="hora_realizacion"/></td>
                    <td class="descripcion"><span class="negritas"><s:property value="nombre"/></span><br/>
                        <span><s:property value="descripcion"/></span><br/>
                        <span class="negritas">Lugar:</span> <s:property value="lugar_realizacion"/><br/>
                        <span class="negritas">Organizador:</span> <s:property value="organizador"/><br/>
                        <span style="float: right;"><a href="javascript:void(0);" onclick="getCalendarioEventos(<s:property value="id"/>);"><img src="${pageContext.request.contextPath}/img/otras_secciones/calendario_eventos/btn_mas_informacion-min.png" alt="Más información de <s:property value="nombre"/>"/></a></span>
                    </td>
                </tr>
            </s:iterator>
        </tbody>
    </table>
    <script>
        fechas_dias_semana = '<s:property value="cadena_fechas_dias_semana" escape="false"/>'.split(",");
        $("#tabla_calendario_eventos tbody tr td.fecha_actual").html(fechas_dias_semana[count_day_week]);
        $("#tabla_calendario_eventos tr." + fechas_dias_semana[count_day_week].replace(/\ /g, '_')).removeClass("oculto");
    </script>

</s:if>
<s:else>
    <table id="tabla_calendario_eventos">
        <thead>
            <tr>
                <th colspan="2">&LT;&LT;&nbsp;&nbsp;<s:property value="semana_completa"/>&nbsp;&nbsp;&GT;&GT;</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td colspan="2" class="fecha_actual">No hay eventos disponibles para esta semana.</td>
            </tr>
        </tbody>
    </table>
</s:else>

