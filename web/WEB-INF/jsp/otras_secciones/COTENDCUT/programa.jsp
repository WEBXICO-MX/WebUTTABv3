<%-- 
    Document   : programa
    Created on : 26-ene-2015, 10:43:22 AM
    Author     : Weisß
--%>
<%@page contentType="text/html" pageEncoding="UTF-8" session="false"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <title>UTTAB &#124; COTENDCUT &#124; Programa</title>
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
                <a href="inicio.action" target="_self"><img src="${pageContext.request.contextPath}/img/otras_secciones/COTENDCUT/btn_inicio.png" width="152" height="28" alt="COTENDCUT &#124; Inicio"/></a>
                <a href="sedes.action" target="_self"><img src="${pageContext.request.contextPath}/img/otras_secciones/COTENDCUT/btn_sedes.png" width="152" height="28" alt="COTENDCUT &#124; Sedes" /></a>
                <a href="programa.action" target="_self"><img src="${pageContext.request.contextPath}/img/otras_secciones/COTENDCUT/btn_programa.png" width="152" height="28" alt="COTENDCUT &#124; Programa"  style="opacity:0.8;filter:alpha(opacity=80);"/></a>
                <a href="resultados.action" target="_self"><img src="${pageContext.request.contextPath}/img/otras_secciones/COTENDCUT/btn_resultados.png" width="152" height="28" alt="COTENDCUT &#124; Resultados"/></a>
                <a href="hospedaje.action" target="_self"><img src="${pageContext.request.contextPath}/img/otras_secciones/COTENDCUT/btn_hospedaje.png" width="152" height="28" alt="COTENDCUT &#124; Hospedaje"/></a>
                <a href="directorio.action" target="_self"><img src="${pageContext.request.contextPath}/img/otras_secciones/COTENDCUT/btn_directorio.png" width="152" height="28" alt="COTENDCUT &#124; Directorio" style="float:right;margin-right: 0px;"/></a>
            </div>
            <div style="width: 100%; height: auto;">
                <a href="javascript:void(0);" onclick="getRolJuegos(1);"><img src="${pageContext.request.contextPath}/img/otras_secciones/COTENDCUT/btn_rol_juegos_disciplina.jpg" width="489" height="99" alt="Rol de juegos por disciplina" style="float:left;"/></a>
                <a href="javascript:void(0);" onclick="getRolJuegos(2);"><img src="${pageContext.request.contextPath}/img/otras_secciones/COTENDCUT/btn_rol_juegos_sedes.jpg" width="489" height="99" alt="Rol de juegos por sedes" style="float:right;"/></a>
                <div class="corte"></div>
            </div>
        </div>
        <div class="corte"></div>      
        <div id="contenedor2">
            <iframe style="width:941px; height:800px;" frameborder="0" id="frm_rol_juegos" name="frm_rol_juegos"></iframe>
        </div>
        <!-- Cuerpo -->
        <jsp:include page="/WEB-INF/jsp/includePie.jsp" flush="true" />
        <script>
            $(document).ready(function () {
                getRolJuegos(1);
            });

            function getRolJuegos(tipo)
            {
                switch (tipo)
                {
                    case 1:
                        $("#frm_rol_juegos").prop("src", "${pageContext.request.contextPath}/viewFile.action?i=1&d=cotendcut");
                        $('img[alt="Rol de juegos por disciplina"]').prop("src", "${pageContext.request.contextPath}/img/otras_secciones/COTENDCUT/btn_rol_juegos_disciplina2.jpg");
                        $('img[alt="Rol de juegos por sedes"]').prop("src", "${pageContext.request.contextPath}/img/otras_secciones/COTENDCUT/btn_rol_juegos_sedes.jpg");
                        break;
                    case 2:
                        $("#frm_rol_juegos").prop("src", "${pageContext.request.contextPath}/viewFile.action?i=2&d=cotendcut");
                        $('img[alt="Rol de juegos por disciplina"]').prop("src", "${pageContext.request.contextPath}/img/otras_secciones/COTENDCUT/btn_rol_juegos_disciplina.jpg");
                        $('img[alt="Rol de juegos por sedes"]').prop("src", "${pageContext.request.contextPath}/img/otras_secciones/COTENDCUT/btn_rol_juegos_sedes2.jpg");
                        break;
                }

            }
        </script>
    </body>
</html>
