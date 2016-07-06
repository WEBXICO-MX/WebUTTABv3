<%-- 
    Document   : biblioteca
    Created on : 30/07/2013, 01:44:29 PM
    Author     : Weisß
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" session="false"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <title>UTTAB &#124; Biblioteca &#124; Inicio</title>
        <meta charset="UTF-8">
        <meta name="author" content="Depto. Desarrollo de sistemas UTTAB">
        <meta name="description" content="Universidad Tecnológica de Tabasco,Biblioteca">
        <meta name="keywords" content="tsu,educación,tecnologías,ingeniería,industrial,tecnológica,uttab,desarrollo,química,procesos,tabasco,universidad,servicios,gastronomía,page,comunicación,negocios,administración,aviso,proyectos,alumnos,escolar,mantenimiento,institucional,programa,competencias">
        <!--[if IE]>
          <link rel="shortcut icon"  href=""img/favicon.ico"/> 
        <![endif]-->
        <link rel="icon" href="img/favicon.ico"/>
        <link rel="stylesheet" href="css/servicios.min.css"/>
        <!--[if lte IE 8]>
        <link rel="stylesheet" href="css/ie.min.css"/>
        <script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
        <![endif]-->
    </head>
    <body>
        <jsp:include page="../../includeMenu.jsp?origen=servicios" flush="true"  />
        <!-- Cuerpo -->
        <div id="contenedor2" >
            <!-- <object id="objeto_embebido" data="http://www.uttab.edu.mx/contraloria/jsp/biblioteca/2013/enero/Boletin%20Enero%202013.htm" width="1002" height="800"></object>-->
            <div class="area_btn_biblioteca">
                <a href="Biblioteca" target="_self"><img src="img/servicios/biblioteca/btn_biblioteca.png" width="152" height="28" alt="Biblioteca"/></a>&nbsp;&nbsp;&nbsp;&nbsp;
                <a href="BibliotecaAntecedentes" target="_self"><img src="img/servicios/biblioteca/btn_antecedentes.png" width="150" height="28" alt="Antecedentes"/></a>&nbsp;&nbsp;&nbsp;&nbsp;         	   	
                <a href="BibliotecaQuienesSomos" target="_self"><img src="img/servicios/biblioteca/btn_qsomos.png" width="151" height="28" alt="¿Quiénes somos?"/></a>&nbsp;&nbsp;&nbsp;&nbsp;
                <a href="BibliotecaRecursosServ" target="_self"><img src="img/servicios/biblioteca/bt_recursos_serv.png" width="149" height="28" alt="Recursos y servicios"/></a>&nbsp;&nbsp;&nbsp;&nbsp;
                <a href="BibliotecaPagoServ" target="_self"><img src="img/servicios/biblioteca/bt_pago_serv.png" width="151" height="28" alt="Pago de servicios"/></a>
            </div>            
            <div class="area_info_biblioteca">           	
                <img src="img/servicios/biblioteca/Banner_biblioteca.jpg" width="1002" height="492" alt="Biblioteca"><br/><br/>
                <div style="width:946px; height:auto; margin:0 auto;">
                    <a href="viewFile.action?i=12&d=biblioteca" target="_blank"><img src="img/servicios/biblioteca/banner libro del mes.jpg" width="456" height="99" alt="Libro del mes" style="margin-right:20px; margin-bottom:24px"></a>
                    <a href="viewFile.action?i=11&d=biblioteca" target="_blank"><img src="img/servicios/biblioteca/banner adquissiciones.jpg" width="466" height="99" alt="Nuevas adquisiciones" style="margin-bottom:24px"></a>
                    <a href="http://sibisut.utleon.edu.mx/janium-bin/janium_login_opac.pl?bib=ut67" target="_blank"><img src="img/servicios/biblioteca/baner01.png" width="456" height="99" alt="Janium" style="margin-right:20px; margin-bottom:24px"></a>
                    <a href="http://www.bibliotecaecest.mx/" target="_blank"><img src="img/servicios/biblioteca/baner02.png" width="466" height="99" alt="Biblioteca Digital" style="margin-bottom:24px"></a>
                    <a href="http://search.ebscohost.com" target="_blank"><img src="img/servicios/biblioteca/baner03.png" width="456" height="99" alt="EBSCO" style="margin-right:20px; margin-bottom:24px"></a>
                    <a href="http://infotrac.galegroup.com/itweb/uttabtab" target="_blank"><img src="img/servicios/biblioteca/baner04.png" width="466" height="99" alt="CENGAGE Learning" style="margin-bottom:24px"></a>
                    <a href="http://www.elfinanciero.com.mx" target="_blank"><img src="img/servicios/biblioteca/banner el financiero.jpg" width="456" height="99" alt="El Financiero digital" style="margin-right:20px"></a>
                    <a href="http://www.bancomext.com/Bancomext/secciones/que-ofrecemos/index.html" target="_blank"><img src="img/servicios/biblioteca/baner06.png" width="466" height="99" alt="BANCOMEXT"></a>
                </div>
                <div style="clear:both"></div>
            </div>
            <div style="clear:both"></div>
        </div>        
        <!-- Cuerpo -->
        <jsp:include page="../../includePie.jsp?origen=servicios" flush="true" />
    </body>
</html>