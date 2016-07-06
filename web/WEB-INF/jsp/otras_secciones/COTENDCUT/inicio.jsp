<%-- 
    Document   : inicio
    Created on : 26-ene-2015, 08:10:22 AM
    Author     : Weisß
--%>
<%@page contentType="text/html" pageEncoding="UTF-8" session="false"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <title>UTTAB &#124; ENCUENTRO REGIONAL DEPORTIVO Y CULTURAL 2015 (COTENDCUT) 26, 27 Y 28 DE FEBRERO &#124; Inicio</title>
        <meta charset="UTF-8">
        <meta name="author" content="Depto. Desarrollo de sistemas UTTAB">
        <meta name="description" content="Universidad Tecnológica de Tabasco,Promoción universitaria">
        <meta name="keywords" content="tsu,educación,tecnologías,ingeniería,industrial,tecnológica,uttab,desarrollo,química,procesos,tabasco,universidad,servicios,gastronomía,page,comunicación,negocios,administración,aviso,proyectos,alumnos,escolar,mantenimiento,institucional,programa,competencias">
        <!--[if IE]>
        <link rel="shortcut icon"  href="${pageContext.request.contextPath}/img/favicon.ico"/> 
        <![endif]-->
        <link rel="icon" href="${pageContext.request.contextPath}/img/favicon.ico"/>
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/cotendcut.min.css">
        <!--[if lte IE 8]>
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/ie.min.css">
        <script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
        <![endif]-->
    </head>
    <body> 
        <jsp:include page="/WEB-INF/jsp/includeMenu.jsp" flush="true"  />
        <!-- Cuerpo -->
        <div class="contenedor">
            <div class="area_btn_cotendcut">
                <a href="inicio.action" target="_self"><img src="${pageContext.request.contextPath}/img/otras_secciones/COTENDCUT/btn_inicio.png" width="152" height="28" alt="COTENDCUT &#124; Inicio" style="opacity:0.8;filter:alpha(opacity=80);"/></a>
                <a href="sedes.action" target="_self"><img src="${pageContext.request.contextPath}/img/otras_secciones/COTENDCUT/btn_sedes.png" width="152" height="28" alt="COTENDCUT &#124; Sedes" /></a>
                <a href="programa.action" target="_self"><img src="${pageContext.request.contextPath}/img/otras_secciones/COTENDCUT/btn_programa.png" width="152" height="28" alt="COTENDCUT &#124; Programa" /></a>
                <a href="resultados.action" target="_self"><img src="${pageContext.request.contextPath}/img/otras_secciones/COTENDCUT/btn_resultados.png" width="152" height="28" alt="COTENDCUT &#124; Resultados"/></a>
                <a href="hospedaje.action" target="_self"><img src="${pageContext.request.contextPath}/img/otras_secciones/COTENDCUT/btn_hospedaje.png" width="152" height="28" alt="COTENDCUT &#124; Hospedaje"/></a>
                <a href="directorio.action" target="_self"><img src="${pageContext.request.contextPath}/img/otras_secciones/COTENDCUT/btn_directorio.png" width="152" height="28" alt="COTENDCUT &#124; Directorio" style="float:right;margin-right: 0px;"/></a>
            </div>
            <div class="area_banner_principal_cotendcut">
                <img src="${pageContext.request.contextPath}/img/otras_secciones/COTENDCUT/banner_principal.png" width="1002" height="460" alt="COTENDCUT"/>
            </div>
            <div class="area_banners_cotendcut">
                <a href="http://instagram.com/uttab" target="_blank"><img src="${pageContext.request.contextPath}/img/otras_secciones/COTENDCUT/banner_instagram.jpg" alt="Instagram" style="float:left;margin-bottom: 15px;"/></a>
                <a href="https://www.facebook.com/UTTAB" target="_blank"><img src="${pageContext.request.contextPath}/img/otras_secciones/COTENDCUT/banner_facebook.jpg" alt="Facebook"  style="float:right;margin-bottom: 15px;"/></a>
                <a href="http://www.tabasco.gob.mx/turismo" target="_blank"><img src="${pageContext.request.contextPath}/img/otras_secciones/COTENDCUT/banner_turismo.png" width="489" height="99" alt="Coordinaciòn de Turismo" style="float:left; margin-bottom: 15px;"/></a>
                <a href="http://www.visitetabasco.com" target="_blank"><img src="${pageContext.request.contextPath}/img/otras_secciones/COTENDCUT/banner_OCV.png" width="493" height="99" alt="Oficina de convenciones y visitantes de Tabasco" style="float:right;margin-bottom: 15px;"/></a>
                <a href="http://www.visitmexico.com/es" target="_blank"><img src="${pageContext.request.contextPath}/img/otras_secciones/COTENDCUT/banner_visitmexico.png" width="489" height="99" alt="visitmexico" style="float:left;"/></a>
                <a href="http://youtu.be/vqHWeJ6iC8o" target="_blank"><img src="${pageContext.request.contextPath}/img/otras_secciones/COTENDCUT/banner_tabasco_youtube.png" width="493" height="99" alt="Tabasco Youtube" style="float:right;"/></a>
                <div class="corte"></div>
            </div>
        </div>
        <!-- Cuerpo -->
        <jsp:include page="/WEB-INF/jsp/includePie.jsp" flush="true" />
    </body>
</html>
