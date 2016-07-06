<%-- 
    Document   : sedes
    Created on : 26-ene-2015, 10:43:22 AM
    Author     : Weisß
--%>
<%@page contentType="text/html" pageEncoding="UTF-8" session="false"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <title>UTTAB &#124; COTENDCUT &#124; Sedes</title>
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
        <script>
            function modalWin(opcion) {
                var w = 800;
                var h = 800;
                var left = (screen.width / 2) - (w / 2);
                var top = (screen.height / 2) - (h / 2);
                var action = "sedesViewMap.action?id="+opcion;
                window.open(action,'sedes', 'toolbar=no, location=no, directories=no, status=no, menubar=no, scrollbars=no, resizable=no, width=' + w + ', height=' + h + ', top=' + top + ', left=' + left);
            }
        </script>
    </head>
    <body> 
        <jsp:include page="/WEB-INF/jsp/includeMenu.jsp" flush="true"  />
        <!-- Cuerpo -->
        <div class="contenedor">
            <div class="area_btn_cotendcut">
                <a href="inicio.action" target="_self"><img src="${pageContext.request.contextPath}/img/otras_secciones/COTENDCUT/btn_inicio.png" width="152" height="28" alt="COTENDCUT &#124; Inicio"/></a>
                <a href="sedes.action" target="_self"><img src="${pageContext.request.contextPath}/img/otras_secciones/COTENDCUT/btn_sedes.png" width="152" height="28" alt="COTENDCUT &#124; Sedes" style="opacity:0.8;filter:alpha(opacity=80);"/></a>
                <a href="programa.action" target="_self"><img src="${pageContext.request.contextPath}/img/otras_secciones/COTENDCUT/btn_programa.png" width="152" height="28" alt="COTENDCUT &#124; Programas" /></a>
                <a href="resultados.action" target="_self"><img src="${pageContext.request.contextPath}/img/otras_secciones/COTENDCUT/btn_resultados.png" width="152" height="28" alt="COTENDCUT &#124; Resultados"/></a>
                <a href="hospedaje.action" target="_self"><img src="${pageContext.request.contextPath}/img/otras_secciones/COTENDCUT/btn_hospedaje.png" width="152" height="28" alt="COTENDCUT &#124; Hospedaje"/></a>
                <a href="directorio.action" target="_self"><img src="${pageContext.request.contextPath}/img/otras_secciones/COTENDCUT/btn_directorio.png" width="152" height="28" alt="COTENDCUT &#124; Directorio" style="float:right;margin-right: 0px;"/></a>
            </div>
        </div>
        <div id="contenedor2">
            <div class="area_info_cotendcut">
                <div class="area_info_cotendcut_1">
                    <a href='javascript:void(0);' onclick="modalWin(1);"><img src="${pageContext.request.contextPath}/img/otras_secciones/COTENDCUT/banner_olimpia_xxi.jpg" alt="Olimpia XXI" title="Olimpia XXI"/></a>
                </div>
                <div class="area_info_cotendcut_1">
                    <a href='javascript:void(0);' onclick="modalWin(2);"><img src="${pageContext.request.contextPath}/img/otras_secciones/COTENDCUT/banner_ciudad_deportiva.jpg" alt="Ciudad Deportiva" title="Ciudad Deportiva"/></a>
                </div>
                <div class="area_info_cotendcut_1">
                    <a href='javascript:void(0);' onclick="modalWin(3);"><img src="${pageContext.request.contextPath}/img/otras_secciones/COTENDCUT/banner_deportivo_ujat.jpg" alt="Deportivo UJAT" title="Deportivo UJAT"/></a>
                </div>
                <div class="area_info_cotendcut_1">
                    <a href='javascript:void(0);' onclick="modalWin(4);"><img src="${pageContext.request.contextPath}/img/otras_secciones/COTENDCUT/banner_uttab.jpg" alt="UTTAB" title="UTTAB"/></a>
                </div>
                <div class="area_info_cotendcut_1">
                    <a href='javascript:void(0);' onclick="modalWin(5);"><img src="${pageContext.request.contextPath}/img/otras_secciones/COTENDCUT/banner_zona_cicom.jpg" alt="Zona CICOM" title="Zona CICOM"/></a>
                </div>
            </div>
        </div>
        <!-- Cuerpo -->
        <jsp:include page="/WEB-INF/jsp/includePie.jsp" flush="true" />
    </body>
</html>
