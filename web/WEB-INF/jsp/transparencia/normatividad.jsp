<%-- 
    Document   : normatividad
    Created on : 30-nov-2015, 12:35:00
    Author     : Weiss
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" session="false"%>
<%@taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html>
<html lang="es">
    <head>
        <title>UTTAB &#124; Normatividad</title>
        <meta charset="UTF-8">
        <meta name="author" content="Depto. Desarrollo de sistemas UTTAB">
        <meta name="description" content="Universidad Tecnológica de Tabasco,Normatividad">
        <meta name="keywords" content="transparencia,Normatividad,tsu,educación,tecnologías,ingeniería,industrial,tecnológica,uttab,desarrollo,química,procesos,tabasco,universidad,servicios,gastronomía,page,comunicación,negocios,administración,aviso,proyectos,alumnos,escolar,mantenimiento,institucional,programa,competencias">
        <!--[if IE]>
        <link rel="shortcut icon"  href="${pageContext.request.contextPath}/img/favicon.ico"/> 
        <![endif]-->
        <link rel="icon" href="${pageContext.request.contextPath}/img/favicon.ico"/>
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/transparencia2.min.css"/>
        <!--[if lt IE 9]>
        <link  rel="stylesheet" href="${pageContext.request.contextPath}/css/ie.min.css"/>
         <script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
        <![endif]-->
    </head>
    <body>
        <jsp:include page="../includeHeader.min.jsp?origen=servicios" flush="true"  />
        <!-- Cuerpo -->
        <main>
            <section class="transparencia_section">
                <header class="transparencia_titulo">
                    <h2><span class="texto_resaltado">Transparencia</span> /</h2>
                    <h1>Normatividad</h1>
                    <div class="corte"></div>
                </header>
                <article class="transparencia_contenido">
                    <section class="transparencia_texto_full">
                        <figure><img src="${pageContext.request.contextPath}/img/transparencia/normatividad/normatividad1-min.png" alt=""/></figure>
                    </section>
                    <section class="transparencia_texto_full">
                        <p>La normatividad es el conjunto de reglas, leyes o preceptos de carácter obligatorio, emanados de una autoridad normativa, la cual tiene su fundamento de validez en una norma jurídica que la autoriza con el objeto de regular las relaciones sociales y cuyo cumplimiento está garantizado por el Estado.</p><br/>
                        <ul style="list-style-position: inside">
                            <li><img src="${pageContext.request.contextPath}/img/Adobe-PDF-Document-icon.png" alt="Pdf" style="vertical-align: bottom;"/>
                                <s:url var="url_normatividad1" action="viewFile" namespace="">
                                   <s:param name="i" value="%{1}"></s:param>
                                   <s:param name="d" value="%{'normatividad'}"></s:param>
                                 </s:url>
                                <s:a href="%{url_normatividad1}" target="_blank">Acuerdo que Crea la Universidad Tecnológica de Tabasco</s:a>
                            </li>
                            <li><img src="${pageContext.request.contextPath}/img/Adobe-PDF-Document-icon.png" alt="Pdf" style="vertical-align: bottom;"/>
                                <s:url var="url_normatividad2" action="viewFile" namespace="">
                                   <s:param name="i" value="%{2}"></s:param>
                                   <s:param name="d" value="%{'normatividad'}"></s:param>
                                 </s:url>
                                <s:a href="%{url_normatividad2}" target="_blank">Ley de educación del Estado de Tabasco</s:a>
                            </li>
                            <li><img src="${pageContext.request.contextPath}/img/Adobe-PDF-Document-icon.png" alt="Pdf" style="vertical-align: bottom;"/>
                                <s:url var="url_normatividad3" action="viewFile" namespace="">
                                   <s:param name="i" value="%{3}"></s:param>
                                   <s:param name="d" value="%{'normatividad'}"></s:param>
                                 </s:url>
                                <s:a href="%{url_normatividad3}" target="_blank">Políticas para la operación, desarrollo y consolidación del subsistema</s:a>
                            </li>
                        </ul>
                    </section>
                </article>
                <div class="corte"></div>
            </section>
        </main>
        <!-- Cuerpo -->
        <jsp:include page="../includePie.min.jsp?origen=transparencia" flush="true" />
    </body>
</html>