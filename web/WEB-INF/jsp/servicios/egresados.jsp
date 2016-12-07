<%-- 
    Document   : egresados
    Created on : 11/07/2013, 02:46:24 PM
    Author     : Weisß
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" session="false"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <!--[if IE]>
          <link rel="shortcut icon"  href=""img/favicon.ico"/> 
        <![endif]-->

        <link rel="icon" href="img/favicon.ico"/>
        <title>UTTAB &#124; Egresados</title>
        <!-- Meta data -->
        <meta charset="UTF-8">
        <meta name="author" content="Depto. Desarrollo de sistemas UTTAB">
        <meta name="description" content="Universidad Tecnológica de Tabasco,Egresados">
        <meta name="keywords" content="tsu,educación,tecnologías,ingeniería,industrial,tecnológica,uttab,desarrollo,química,procesos,tabasco,universidad,servicios,gastronomía,page,comunicación,negocios,administración,aviso,proyectos,alumnos,escolar,mantenimiento,institucional,programa,competencias">
        <link media="all" type="text/css" href="css/servicios.min.css" id="stylesheet-css" rel="stylesheet">
        <!--<meta http-equiv="refresh" content="30">-->
        <!--[if lte IE 8]>
        <script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
        <link type="text/css" href="css/ie.min.css" rel="stylesheet">
        <![endif]-->

    </head>
    <body>
        <jsp:include page="../includeMenu.jsp?origen=servicios&Correo=1" flush="true"  />
        <!-- Cuerpo -->
        <div class="contenedor">
            <div class="area_titulo_egresados"><h3><a href="Egresados">Egresados</a></h3></div>
            <div class="area_btn_egresados">
                <a href="EducacionContinua" target="_self"><img src="img/servicios/egresados/btn_cursos.png" width="150" height="28" alt="Cursos"/></a>&nbsp;&nbsp;&nbsp;&nbsp;
                <a href="javascript:void(0);" onclick="msgBolsaTrabajo();"><img src="img/servicios/egresados/btn_bolsa_trabajo2.png" width="151" height="28" alt="Bolsa de trabajo"/></a>&nbsp;&nbsp;&nbsp;&nbsp;
                <img src="img/servicios/egresados/btn_contactanos.png" width="151" height="28" alt="Contactanos"/>
            </div>
            <div class="area_info_egresados">
                <p>Estimado egresado nuestra labor no termina cuando egresan nuestros estudiantes, a la universidad le interesa mantener el contacto contigo a través del seguimiento de egresados, que nos permite conocer tu situación laboral mediante una base de datos actualizada y confidencial. Así mismo tus necesidades de actualización mismas que te ofrecemos a través del programa de educación continua. </p><br/>
                <p>Por tal motivo, te pedimos nos apoyes actualizando tus datos en <b>http://saiiut.uttab.edu.mx/ / módulo egresados/ procesos / datos de egresados</b>, accesando con tu clave de usuario y password o envía tus datos a <b>Contáctanos</b> y nosotros nos comunicaremos contigo. </p><br/>
                <div class="area_info_egresados_1">
                    <div class="area_info_egresados_1_titulo"><h4>Sitios de inter&eacute;s para egresados</h4></div>
                    <div class="area_info_egresados_1_info">
                        <ul>
                            <li><a href="http://cgut.sep.gob.mx/" target="_blank">www.cgut.sep.gob.mx</a></li>
                            <li><a href="http://www.universia.net.mx" target="_blank">www.universia.net.mx</a></li>
                            <li><a href="http://www.emagister.com.mx" target="_blank">www.emagister.com.mx</a></li>
                            <li><a href="http://www.occmundial.com.mx" target="_blank">www.occmundial.com.mx</a></li>
                            <li><a href="http://www.computrabajo.com.mx" target="_blank">www.computrabajo.com.mx</a></li>
                        </ul>
                    </div>
                </div>
                <div class="area_info_egresados_2">
                    <div class="area_info_egresados_2_titulo"><h4><a href="Egresados">Testimonio de &eacute;xito</a></h4></div>
                    <div class="area_info_egresados_2_info">
                        <div id="contador"><p><a href="javascript:void(0);" onclick="cargarTestimonio(1);"><label id="1" style="cursor: pointer;">1</label></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="javascript:void(0);" onclick="cargarTestimonio(2);" ><label id="2" style="cursor: pointer;">2</label></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="javascript:void(0);" onclick="cargarTestimonio(3);" ><label id="3" style="cursor: pointer;">3</label></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="javascript:void(0);" onclick="cargarTestimonio(4);"><label id="4" style="cursor: pointer;">4</label></a></p></div>
                        <div id="div_resultados">

                        </div>
                    </div>
                </div>
            </div>

        </div>
        <!-- Cuerpo -->
        <jsp:include page="../includePie.min.jsp?origen=servicios" flush="true" />
        <script>
            $(document).ready(function() {
                cargarTestimonio(1);
            });

            function leerMas(id)
            {
                if (id == "testiminio1_link")
                {
                    if ($("#" + id).html() == "Leer más (+)")
                    {
                        $("#" + id).html("");
                        $("#testiminio1").css("display", "block");
                    }
                    else
                    {
                        $("#" + id).html("Leer m&aacute;s (+)");
                        $("#testiminio1").css("display", "none");
                    }

                }
                if (id == "testiminio2_link")
                {
                    if ($("#" + id).html() == "Leer más (+)")
                    {
                        $("#" + id).html("");
                        $("#testiminio2").css("display", "block");
                    }
                    else
                    {
                        $("#" + id).html("Leer m&aacute;s (+)");
                        $("#testiminio2").css("display", "none");
                    }
                }
                if (id == "testiminio3_link")
                {
                    if ($("#" + id).html() == "Leer más (+)")
                    {
                        $("#" + id).html("");
                        $("#testiminio3").css("display", "block");
                    }
                    else
                    {
                        $("#" + id).html("Leer m&aacute;s (+)");
                        $("#testiminio3").css("display", "none");
                    }
                }
                if (id == "testiminio4_link")
                {
                    if ($("#" + id).html() == "Leer más (+)")
                    {
                        $("#" + id).html("");
                        $("#testiminio4").css("display", "block");
                    }
                    else
                    {
                        $("#" + id).html("Leer m&aacute;s (+)");
                        $("#testiminio4").css("display", "none");
                    }
                }

            }

            function cargarTestimonio(id)
            {
                var pag = "AjaxEgresados";
                if (id == "1")
                {
                    $("#1").css("font-size", "20px");
                    $("#2").css("font-size", "");
                    $("#3").css("font-size", "");
                    $("#4").css("font-size", "");
                }
                else if (id == "2")
                {
                    $("#1").css("font-size", "");
                    $("#2").css("font-size", "20px");
                    $("#3").css("font-size", "");
                    $("#4").css("font-size", "");
                }
                else if (id == "3")
                {
                    $("#1").css("font-size", "");
                    $("#2").css("font-size", "");
                    $("#3").css("font-size", "20px");
                    $("#4").css("font-size", "");
                }
                else if (id == "4")
                {
                    $("#1").css("font-size", "");
                    $("#2").css("font-size", "");
                    $("#3").css("font-size", "");
                    $("#4").css("font-size", "20px");
                }

                $("#div_resultados").html("<img src=\"img/ajax-loading.gif\" width=\"20\" height=\"21\" alt=\"Cargando ...\"/>Cargando ...");
                $("#div_resultados").load(pag, {ID: id});

            }

            function msgBolsaTrabajo()
            {
                var msg = "";
                msg += "ATENCIÓN\n\n Sera redireccionado a http://saiiut.uttab.edu.mx/,\n";
                msg += "donde debera iniciar sesión con su usuario y contraseña,\n";
                msg += "despues que se despliegue el menú vaya a:\n\n";
                msg += "Vinculación -> Bolsa de trabajo -> Procesos -> Bolsa de trabajo";
                alert(msg);
                window.open('http://saiiut.uttab.edu.mx/', '_blank');
            }
        </script>  
    </body>
</html>
