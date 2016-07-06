<%-- 
    Document   : resultados
    Created on : 26-ene-2015, 10:43:22 AM
    Author     : Weisß
--%>
<%@page contentType="text/html" pageEncoding="UTF-8" session="false"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <title>UTTAB &#124; COTENDCUT &#124; Resultados</title>
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
                <a href="programa.action" target="_self"><img src="${pageContext.request.contextPath}/img/otras_secciones/COTENDCUT/btn_programa.png" width="152" height="28" alt="COTENDCUT &#124; Programa" /></a>
                <a href="resultados.action" target="_self"><img src="${pageContext.request.contextPath}/img/otras_secciones/COTENDCUT/btn_resultados.png" width="152" height="28" alt="COTENDCUT &#124; Resultados"  style="opacity:0.8;filter:alpha(opacity=80);"/></a>
                <a href="hospedaje.action" target="_self"><img src="${pageContext.request.contextPath}/img/otras_secciones/COTENDCUT/btn_hospedaje.png" width="152" height="28" alt="COTENDCUT &#124; Hospedaje"/></a>
                <a href="directorio.action" target="_self"><img src="${pageContext.request.contextPath}/img/otras_secciones/COTENDCUT/btn_directorio.png" width="152" height="28" alt="COTENDCUT &#124; Directorio" style="float:right;margin-right: 0px;"/></a>
            </div>
        </div>
        <div id="contenedor2">
            <div class="area_btn_cotendcut2">
                <a href="javascript:void(0);" onclick="elegirDeporte(1);"><img src="${pageContext.request.contextPath}/img/otras_secciones/COTENDCUT/btn_futbol_soccer.png" width="224" height="51" alt="Futbol Soccer"/></a>
                <a href="javascript:void(0);" onclick="elegirDeporte(2);"><img src="${pageContext.request.contextPath}/img/otras_secciones/COTENDCUT/btn_futbol_rapido.png" width="224" height="51" alt="Futbol Rápido"/></a>
                <a href="javascript:void(0);" onclick="elegirDeporte(3);"><img src="${pageContext.request.contextPath}/img/otras_secciones/COTENDCUT/btn_basquetbol.png" width="224" height="51" alt="Basquetbol"/></a>
                <a href="javascript:void(0);" onclick="elegirDeporte(4);"><img src="${pageContext.request.contextPath}/img/otras_secciones/COTENDCUT/btn_voleibol.png" width="224" height="51" alt="Voleibol" style="float:right;margin-right: 0px;"/></a>
                <a href="javascript:void(0);" onclick="elegirDeporte(5);"><img src="${pageContext.request.contextPath}/img/otras_secciones/COTENDCUT/btn_futbol7.png" width="224" height="51" alt="Futbol 7"/></a>
                <a href="javascript:void(0);" onclick="elegirDeporte(6);"><img src="${pageContext.request.contextPath}/img/otras_secciones/COTENDCUT/btn_beisbol.png" width="224" height="51" alt="Beisbol"/></a>
                <a href="javascript:void(0);" onclick="elegirDeporte(7);"><img src="${pageContext.request.contextPath}/img/otras_secciones/COTENDCUT/btn_canto.png" width="224" height="51" alt="Canto"/></a>

                <div class="corte"></div>
            </div>
            <div style="width: 100%;">
                <form name="frmSexo" method="POST">
                    <input  type="radio" name="sexo" value="1" checked onclick="elegirRama(1);"/>&nbsp;&nbsp;Varonil&nbsp;&nbsp;<input type="radio" name="sexo" value="2" onclick="elegirRama(2);"/>&nbsp;&nbsp;Femenil
                </form>
            </div>
            <div id="resultados_ajax">

            </div>
        </div>
        <!-- Cuerpo -->
        <jsp:include page="/WEB-INF/jsp/includePie.jsp" flush="true" />
        <script>
            //vALORES POR DEFAULT
            var deporte = "futbolSoccer.action";
            var rama = "varonil";
            
            var src_futbol_soccer = "";
            var src_futbol_rapido = "";
            var src_basquetbol = "";
            var src_voleibol = "";
            var src_futbol7 = "";
            var src_beisbol = "";
            var src_canto = "";
            
            
           $.ajaxSetup({"cache":false});         
           $(document).ready(function () 
           {  cargarResultados(deporte, rama);
               
              src_futbol_soccer = $('img[alt="Futbol Soccer"]').prop("src");
              $('img[alt="Futbol Soccer"]').prop("src","${pageContext.request.contextPath}/img/otras_secciones/COTENDCUT/btn_futbol_soccer2.png");
              src_futbol_rapido = $('img[alt="Futbol Rápido"]').prop("src");
              src_basquetbol = $('img[alt="Basquetbol"]').prop("src");
              src_voleibol = $('img[alt="Voleibol"]').prop("src");
              src_futbol7 = $('img[alt="Futbol 7"]').prop("src");
              src_beisbol = $('img[alt="Beisbol"]').prop("src");
              src_canto = $('img[alt="Canto"]').prop("src");

           });
           
            function cargarResultados(deporte, rama)
            { $("#resultados_ajax").load(deporte, {"rama": rama});
            }

            function elegirDeporte(opcion)
            {   switch (opcion)
                { case 1:
                  deporte = "futbolSoccer.action";
                  $('img[alt="Futbol Soccer"]').prop("src","${pageContext.request.contextPath}/img/otras_secciones/COTENDCUT/btn_futbol_soccer2.png");
                  $('img[alt="Futbol Rápido"]').prop("src",src_futbol_rapido);
                  $('img[alt="Basquetbol"]').prop("src",src_basquetbol);
                  $('img[alt="Voleibol"]').prop("src",src_voleibol);
                  $('img[alt="Futbol 7"]').prop("src",src_futbol7);
                  $('img[alt="Beisbol"]').prop("src",src_beisbol);
                  $('img[alt="Canto"]').prop("src",src_canto);
                  break;
                  case 2:
                  deporte = "futbolRapido.action"; 
                  $('img[alt="Futbol Soccer"]').prop("src",src_futbol_soccer);
                  $('img[alt="Futbol Rápido"]').prop("src","${pageContext.request.contextPath}/img/otras_secciones/COTENDCUT/btn_futbol_rapido2.png");
                  $('img[alt="Basquetbol"]').prop("src",src_basquetbol);
                  $('img[alt="Voleibol"]').prop("src",src_voleibol);
                  $('img[alt="Futbol 7"]').prop("src",src_futbol7);
                  $('img[alt="Beisbol"]').prop("src",src_beisbol);
                  $('img[alt="Canto"]').prop("src",src_canto);
                  break;
                  case 3:
                  deporte = "basquetbol.action";  
                  $('img[alt="Futbol Soccer"]').prop("src",src_futbol_soccer);
                  $('img[alt="Futbol Rápido"]').prop("src",src_futbol_rapido);
                  $('img[alt="Basquetbol"]').prop("src","${pageContext.request.contextPath}/img/otras_secciones/COTENDCUT/btn_basquetbol2.jpg");
                  $('img[alt="Voleibol"]').prop("src",src_voleibol);
                  $('img[alt="Futbol 7"]').prop("src",src_futbol7);
                  $('img[alt="Beisbol"]').prop("src",src_beisbol);
                  $('img[alt="Canto"]').prop("src",src_canto);
                  break;
                  case 4:
                  deporte = "voleibol.action";
                  $('img[alt="Futbol Soccer"]').prop("src",src_futbol_soccer);
                  $('img[alt="Futbol Rápido"]').prop("src",src_futbol_rapido);
                  $('img[alt="Basquetbol"]').prop("src",src_basquetbol);
                  $('img[alt="Voleibol"]').prop("src","${pageContext.request.contextPath}/img/otras_secciones/COTENDCUT/btn_voleibol2.png");
                  $('img[alt="Futbol 7"]').prop("src",src_futbol7);
                  $('img[alt="Beisbol"]').prop("src",src_beisbol);
                  $('img[alt="Canto"]').prop("src",src_canto);
                  break;
                  case 5:
                  deporte = "futbol7.action";
                  $('img[alt="Futbol Soccer"]').prop("src",src_futbol_soccer);
                  $('img[alt="Futbol Rápido"]').prop("src",src_futbol_rapido);
                  $('img[alt="Basquetbol"]').prop("src",src_basquetbol);
                  $('img[alt="Voleibol"]').prop("src",src_voleibol);
                  $('img[alt="Futbol 7"]').prop("src","${pageContext.request.contextPath}/img/otras_secciones/COTENDCUT/btn_futbol72.png");
                  $('img[alt="Beisbol"]').prop("src",src_beisbol);
                  $('img[alt="Canto"]').prop("src",src_canto);
                  break;
                  case 6:
                  deporte = "beisbol.action";
                  $('img[alt="Futbol Soccer"]').prop("src",src_futbol_soccer);
                  $('img[alt="Futbol Rápido"]').prop("src",src_futbol_rapido);
                  $('img[alt="Basquetbol"]').prop("src",src_basquetbol);
                  $('img[alt="Voleibol"]').prop("src",src_voleibol);
                  $('img[alt="Futbol 7"]').prop("src",src_futbol7);
                  $('img[alt="Beisbol"]').prop("src","${pageContext.request.contextPath}/img/otras_secciones/COTENDCUT/btn_beisbol2.png");
                  $('img[alt="Canto"]').prop("src",src_canto);
                  break;
                  case 7:
                  deporte = "canto.action"; 
                  $('img[alt="Futbol Soccer"]').prop("src",src_futbol_soccer);
                  $('img[alt="Futbol Rápido"]').prop("src",src_futbol_rapido);
                  $('img[alt="Basquetbol"]').prop("src",src_basquetbol);
                  $('img[alt="Voleibol"]').prop("src",src_voleibol);
                  $('img[alt="Futbol 7"]').prop("src",src_futbol7);
                  $('img[alt="Beisbol"]').prop("src",src_beisbol);
                  $('img[alt="Canto"]').prop("src","${pageContext.request.contextPath}/img/otras_secciones/COTENDCUT/btn_canto2.png");
                  break;

                }
                
                cargarResultados(deporte, rama);
            }
            
            function elegirRama(opcion)
            {
                 switch (opcion)
                { case 1:
                  rama = "varonil";      
                  break;
              case 2:
                  rama = "femenil";      
                  break;
                }
                
                cargarResultados(deporte, rama);
            }

        </script>
    </body>
</html>
