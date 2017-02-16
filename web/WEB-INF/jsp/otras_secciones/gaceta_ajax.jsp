<%-- 
    Document   : gaceta_ajax
    Created on : 7/01/2014, 02:36:18 PM
    Author     : Weisß
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" session="false"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<s:if test="gacetaList.size() > 0">
    <s:iterator value="gacetaList" status="gacetaStatus">
        <s:if test="#gacetaStatus.odd == true">
            <article class="otras_secciones_texto1">
        </s:if>
        <s:else>
            <article class="otras_secciones_texto2">
        </s:else>
                <table>
                    <tbody>
                            <tr>
                                <td>
                                    <img src="viewGacetaIMG.action?id=<s:property value="id" />" alt="Ejemplar No. <s:property value="id" />" onclick="window.open('viewGacetaPDF.action?id=<s:property value="id" />', '_blank');" onmouseover="this.style.cursor = 'pointer';"/>
                                </td>
                                <td>
                                    <h3>Ejemplar No. <s:property value="id" /></h3>
                                    <p><s:property value="fecha_ejemplar"/></p>
                                </td>
                            </tr>
                    </tbody>
                </table>
            </article>
        <s:if test="#gacetaStatus.even == true">
            <div class="corte"></div>
        </s:if>
    </s:iterator>
</s:if>
<s:else><h1 style="text-align: center">No hay gacetas para mostrar por el momento.</h1></s:else>
