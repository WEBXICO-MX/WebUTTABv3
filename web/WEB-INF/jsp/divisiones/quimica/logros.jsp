<%-- 
    Document   : index
    Created on : 20/06/2013, 09:24:03 AM
    Author     : Weisß
--%>
<%@page contentType="text/html" pageEncoding="UTF-8" session="false"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <title>UTTAB &#124; División académica de Química  &#124; Logros</title>
        <meta charset="UTF-8">
        <meta name="author" content="Depto. Desarrollo de sistemas UTTAB">
        <meta name="description" content="Universidad Tecnológica de Tabasco,División académica de Química,Logros">
        <meta name="keywords" content="tsu,educación,tecnologías,ingeniería,industrial,tecnológica,uttab,desarrollo,química,procesos,tabasco,universidad,servicios,gastronomía,page,comunicación,negocios,administración,aviso,proyectos,alumnos,escolar,mantenimiento,institucional,programa,competencias">
        <!--[if IE]>
        <link rel="shortcut icon"  href="img/favicon.ico"/> 
        <![endif]-->
        <link rel="icon" href="img/favicon.ico"/>
        <link rel="stylesheet" href="css/divisiones.min.css"/>
        <!--[if lte IE 8]>
        <link rel="stylesheet" href="css/ie.min.css"/>
        <script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
        <![endif]-->
    </head>
    <body>
        <jsp:include page="../../includeMenu.jsp?origen=division" flush="true"/>
        <!-- Cuerpo -->
        <div class="contenedor">
            <div class="area_titulo_division"><h3>División Académica de Química </h3></div>
            <div class="area_botones_division">
                <a href="Quimica" target="_self"><img src="img/divisionesUsoComun/infraestructura.png" width="122" height="28" alt="Infraestructura"/></a>&nbsp;&nbsp;&nbsp;
                <a href="CuerposAcademicosQuimica" target="_self"><img src="img/divisionesUsoComun/btn_cuerpos_academicos.png" width="122" height="28" alt="Cuerpos académicos"/></a>&nbsp;&nbsp;&nbsp;
                <a href="LogrosQuimica" target="_self"><img src="img/divisionesUsoComun/logros.png" width="122" height="28" alt="Logros"  style="opacity:0.8;filter:alpha(opacity=80);"/></a>&nbsp;&nbsp;&nbsp;
                <a href="DirectorioQuimica" target="_self"><img src="img/divisionesUsoComun/directorio.png" width="122" height="28" alt="Directorio"/></a>
            </div>
            <div class="area_logros_division">
                <div class="area_logros_division_1">
                    <div class="area_logros_division_titulo"><h3>Logros de la divisi&oacute;n</h3></div>
                    <div class="area_logros_division_info">
                        <p>Programa educativo de TSU en Química área Tecnología Ambiental evaluado en nivel 1 por los Comités Interinstitucionales para la Evaluación de la Educación Superior Programa(CIEES).</p>
                    </div>
                    <div class="area_logros_division_img"></div>
                    <span class="area_logros_division_img"><img src="img/divisionesUsoComun/quimica/Logro1.jpg" width="464" height="288" alt="area_logros_division_img"/></span>
                    <div class="corte"></div>
                </div>
                <div class="corte"></div>
                <div class="area_logros_division_2">
                    <div class="area_logros_division_info">
                        <p>Programa educativo de TSU en Química área Tecnología Ambiental acreditado por el Consejo de Acreditación de la Enseñanza de la Ingeniería (CACEI).</p>
                    </div>
                    <div class="area_logros_division_img"><img src="img/divisionesUsoComun/quimica/cacei.jpg" width="464" height="288" alt="area_logros_division_img"/>
                    </div>
                    <div class="corte"></div>
                </div>
                <div class="corte"></div>
                <div class="area_logros_division_3">
                    <div class="area_logros_division_info">
                        <p>Reconocimiento Internacional con el Premio Conciencia de Biosfera José Celestino Mutis, otorgado por la República de Colombia. </p>
                    </div>
                    <div class="area_logros_division_img"><img src="img/divisionesUsoComun/quimica/Logro3.png" width="464" height="288" alt="area_logros_division_img"/>
                    </div>
                    <div class="corte"></div>
                </div>
                <div class="corte"></div>
                <div class="area_logros_division_4">
                    <div class="area_logros_division_info">
                        <p>Reconocimiento de la Secretaria de Energía, Recursos Naturales y Protección Ambiental (SERNAPAM) por participar en foro de marco legal ambiental. </p>
                    </div>
                    <div class="area_logros_division_img"><img src="img/divisionesUsoComun/quimica/Logro4.png" width="464" height="288" alt="area_logros_division_img"/>
                    </div>
                    <div class="corte"></div>
                </div>
                <div class="corte"></div>
                <div class="area_logros_division_5">
                    <div class="area_logros_division_info">
                        <p>Programa educativo de TSU en Química área Prevención de Corrosión evaluado en nivel 1 por los Comités Interinstitucionales para la Evaluación de la Educación Superior Programa (CIEES). </p>
                    </div>
                    <div class="area_logros_division_img"><img src="img/divisionesUsoComun/quimica/Logro1.jpg" width="464" height="288" alt="area_logros_division_img"/>
                    </div>
                    <div class="corte"></div>
                </div>
                <div class="corte"></div>
                <div class="area_logros_division_6">
                    <div class="area_logros_division_info">
                        <p>Club Jóvenes Carta de la Tierra UTTAB.</p> 
                        <p>Facebook: Carta de la Tierra UTTAB.</p> 
                        <p>Email: Club-carta.de.la.tierra-uttab@hotmail.com. </p>
                    </div>
                    <div class="area_logros_division_img"><img src="img/divisionesUsoComun/quimica/Logro6.png" width="464" height="288" alt="area_logros_division_img"/>
                    </div>
                    <div class="corte"></div>
                </div>
            </div>
            <div class="corte"></div>
        </div>
        <!-- Cuerpo -->
        <jsp:include page="../../includePie.min.jsp?origen=division" flush="true" />
    </body>
</html>

