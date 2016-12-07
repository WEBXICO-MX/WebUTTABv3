<%-- 
    Document   : actividades_universitarias_anteriores_ajax
    Created on : 25/11/2013, 12:47:54 PM
    Author     : Weisß
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" session="false"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<s:if test="actividadList.size() > 0">
    <table>
        <tbody>
            <s:iterator value="actividadList">
                <tr>
                    <td style="width:15%; padding: 10px;">
                        <s:if test="primario">
                            <img src="viewActividadUniversitariaIMG.action?id=<s:property value="id" />" alt="<s:property value="nombre" />" width="180" height="169"/>
                        </s:if>
                        <s:else>
                            <img src="viewActividadUniversitariaIMG.action?id=<s:property value="id" />" alt="<s:property value="nombre" />"/>  
                        </s:else>
                    </td>
                    <td style="width:85%; padding: 10px;">
                        <h4><s:property value="nombre" /></h4>
                        <p class="contenido"><s:property value="text_preview" /></p>
                        <s:if test="pdf.equalsIgnoreCase('NULL') && link.equalsIgnoreCase('NULL')">
                            <p class="negritas">No hay PDF ni Link cargado</p>
                        </s:if>
                        <s:elseif test="pdf.equalsIgnoreCase('NULL')">
                            <p><a href="<s:property value="link"/>" target="_blank"><img src="${pageContext.request.contextPath}/img/otras_secciones/actividades_universitarias/btn_pdf-min.png" alt="PDF"/></a></p>
                        </s:elseif>
                        <s:else>
                            <s:url namespace="" action="viewActividadUniversitariaPDF" var="pdfURL"><s:param name="id" value="%{id}"></s:param></s:url>
                            <p><a href="<s:property value="#pdfURL"/>" target="_blank"><img src="${pageContext.request.contextPath}/img/otras_secciones/actividades_universitarias/btn_pdf-min.png" alt="PDF"/></a></p>  
                        </s:else>    
                    </td>
                </tr>
            </s:iterator>

        </tbody>
    </table>
</s:if>
<s:else><h1>No hay datos para mostrar.</h1></s:else>