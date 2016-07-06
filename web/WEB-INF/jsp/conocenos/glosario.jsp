<%-- 
    Document   : glosario
    Created on : 9/07/2013, 12:25:25 PM
    Author     : Weisß
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" session="false"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <title>UTTAB &#124; Glosario</title>
        <meta charset="UTF-8">
        <meta name="author" content="Depto. Desarrollo de sistemas UTTAB">
        <meta name="description" content="Universidad Tecnológica de Tabasco,Glosario">
        <meta name="keywords" content="tsu,educación,tecnologías,ingeniería,industrial,tecnológica,uttab,desarrollo,química,procesos,tabasco,universidad,servicios,gastronomía,page,comunicación,negocios,administración,aviso,proyectos,alumnos,escolar,mantenimiento,institucional,programa,competencias">
        <!--[if IE]>
        <link rel="shortcut icon"  href="img/favicon.ico"/> 
        <![endif]-->
        <link rel="icon" href="img/favicon.ico"/>
        <link rel="stylesheet" href="css/conocenos.min.css">
        <!--[if lte IE 8]>
        <link rel="stylesheet" href="css/ie.min.css"/>
        <script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
        <![endif]-->
    </head>
    <body>
        <jsp:include page="../includeMenu.jsp?origen=conocenos" flush="true"  />
        <!-- Cuerpo -->
        <div class="contenedor">
            <div class="area_titulo_glosario"><h3><a href="javascript:void(0);" onclick="cargarPdf(0);">Glosarios</a></h3></div>
            <div class="area_btn_glosario">
                <a href="javascript:void(0);" onclick="if (getInternetExplorerVersion() != -1) {
                            window.open('viewFile.action?i=1&d=glosario', '_blank');
                        } else {
                            cargarPdf(1);
                        }"><img src="img/conocenos/glosario/btn_glosario_terminos.png" width="151" height="28" alt="Terminos" id="terminos"/></a>&nbsp;&nbsp;&nbsp;&nbsp;
                <a href="javascript:void(0);" onclick="if (getInternetExplorerVersion() != -1) {
                            window.open('viewFile.action?i=2&d=glosario', '_blank');
                        } else {
                            cargarPdf(2);
                        }"><img src="img/conocenos/glosario/btn_glosario_siglas.png" width="151" height="28" alt="Siglas" id="siglas"/></a>
            </div>
            <div class="area_info_glosario" id="area_info_glosario">
                <div class="area_info_glosario_titulo">
                    <h4>Glosarios de términos y siglas</h4>
                </div>
                <div class="area_info_glosario_info">
                    <p>Con la finalidad de homologar los criterios y conceptos, se ponen a disposición de la comunidad universitaria y del público en general las siglas y términos más comunes que
                        se emplean en esta institución educativa.</p><br/>

                    <p>Es importante destacar que para la conformación de los glosarios se contó con la participación de todas las áreas que integran la Universidad.</p><br/>
                </div>
            </div>
            <div id="contenedor2" style="display: none;">
                <iframe src="about:blank" style="width:941px; height:800px;" frameborder="0" id="mypdf"></iframe>
            </div>
        </div>

        <!-- Cuerpo -->
        <jsp:include page="../includePie.jsp?origen=conocenos" flush="true" />
        <script src="${pageContext.request.contextPath}/js/comun.min.js"></script>
        <script>
                    function cargarPdf(valor)
                    {
                        var url = "";
                        switch (valor)
                        {
                            case 1:
                                url = "viewFile.action?i=1&d=glosario";
                                $("#mypdf").prop("src", url);
                                $("#area_info_glosario").css("display", "none");
                                $("#contenedor2").css("display", "block");
                                $("#terminos").css("opacity", "0.8");
                                $("#terminos").css("filter", "alpha(opacity=80)");
                                $("#siglas").css("opacity", "1");
                                $("#siglas").css("filter", "alpha(opacity=100)");
                                break;
                            case 2:
                                url = "viewFile.action?i=2&d=glosario";
                                $("#mypdf").prop("src", url);
                                $("#area_info_glosario").css("display", "none");
                                $("#contenedor2").css("display", "block");
                                $("#siglas").css("opacity", "0.8");
                                $("#siglas").css("filter", "alpha(opacity=80)");
                                $("#terminos").css("opacity", "1");
                                $("#terminos").css("filter", "alpha(opacity=100)");

                                break;
                            default:
                                $("#mypdf").prop("src", 'about:blank');
                                $("#area_info_glosario").css("display", "block");
                                $("#contenedor2").css("display", "none");
                                $("#siglas").css("opacity", "1");
                                $("#siglas").css("filter", "alpha(opacity=100)");
                                $("#terminos").css("opacity", "1");
                                $("#terminos").css("filter", "alpha(opacity=100)");
                                break;
                        }

                    }
        </script>
    </body>
</html>
