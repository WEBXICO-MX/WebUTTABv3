<%-- 
    Document   : sintonia_ajax
    Created on : 21-abr-2015, 12:45:37
    Author     : Weiss
--%>

<%@page import="java.util.Calendar"%>
<%@page contentType="text/html" pageEncoding="UTF-8" session="false"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<s:if test="%{#parameters.xAccion[0]=='getProgramacionRadio'}">
<div id="radio"  style="text-align: center; background-image:url('${pageContext.request.contextPath}/img/fondoRadio.png'); background-repeat: no-repeat;width:305px;height:180px;margin:0 auto; overflow: hidden"></div>
</s:if>
<div id="programacion_radio">
<s:if test="programacionList.size() > 0">
    <table class="miTabla" style="width: 100%;border-spacing:0;">
        <tbody>
            <!--<tr><td colspan="2"><s:property value="dia_actual"/></td></tr>-->
            <s:iterator value="programacionList">
                    <s:if test="%{rango_hora==horario}">
                    <tr style="background-color: #D78C39;color:#FDF9F7;">
                    </s:if>
                    <s:else>
                    <tr>
                    </s:else>
                    <s:if test="%{dia_actual=='Lunes'}">
                        <td><s:property value="lunes.nombre"/><br/><s:property value="horario"/><s:if test="%{rango_hora==horario}"><img src="${pageContext.request.contextPath}/img/otras_secciones/radio/btn_al_aire.png" alt="Al aire" style="float:right;"/></s:if></td>
                    </s:if>
                    <s:elseif test="%{dia_actual=='Martes'}">
                        <td><s:property value="martes.nombre"/><br/><s:property value="horario"/><s:if test="%{rango_hora==horario}"><img src="${pageContext.request.contextPath}/img/otras_secciones/radio/btn_al_aire.png" alt="Al aire" style="float:right;"/></s:if></td>
                    </s:elseif>
                    <s:elseif test="%{dia_actual=='Miércoles'}">
                        <td><s:property value="miercoles.nombre"/><br/><s:property value="horario"/><s:if test="%{rango_hora==horario}"><img src="${pageContext.request.contextPath}/img/otras_secciones/radio/btn_al_aire.png" alt="Al aire" style="float:right;"/></s:if></td>
                    </s:elseif>
                    <s:elseif test="%{dia_actual=='Jueves'}">
                    <td><s:property value="jueves.nombre"/><br/><s:property value="horario"/><s:if test="%{rango_hora==horario}"><img src="${pageContext.request.contextPath}/img/otras_secciones/radio/btn_al_aire.png" alt="Al aire" style="float:right;"/></s:if></td>
                    </s:elseif>
                    <s:elseif test="%{dia_actual=='Viernes'}">
                        <td><s:property value="viernes.nombre"/><br/><s:property value="horario"/><s:if test="%{rango_hora==horario}"><img src="${pageContext.request.contextPath}/img/otras_secciones/radio/btn_al_aire.png" alt="Al aire" style="float:right;"/></s:if></td>
                    </s:elseif>
                    <s:elseif test="%{dia_actual=='Sábado'}">
                        <td><s:property value="sabado.nombre"/><br/><s:property value="horario"/><s:if test="%{rango_hora==horario}"><img src="${pageContext.request.contextPath}/img/otras_secciones/radio/btn_al_aire.png" alt="Al aire" style="float:right;"/></s:if></td>
                    </s:elseif>
                    <s:elseif test="%{dia_actual=='Domingo'}">
                        <td><s:property value="domingo.nombre"/><br/><s:property value="horario"/><s:if test="%{rango_hora==horario}"><img src="${pageContext.request.contextPath}/img/otras_secciones/radio/btn_al_aire.png" alt="Al aire" style="float:right;"/></s:if></td>
                    </s:elseif>
                </tr>
            </s:iterator>
        </tbody>
    </table>
</s:if>
<s:else><h1>No hay programación de radio para mostrar</h1></s:else>
</div>
