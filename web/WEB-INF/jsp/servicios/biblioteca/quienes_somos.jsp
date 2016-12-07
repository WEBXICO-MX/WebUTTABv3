<%-- 
    Document   : biblioteca
    Created on : 30/07/2013, 01:44:29 PM
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
        <title>UTTAB &#124; Biblioteca &#124; Quienes somos</title>
        <!-- Meta data -->
        <meta charset="UTF-8">
        <meta name="author" content="Depto. Desarrollo de sistemas UTTAB">
        <meta name="description" content="Universidad Tecnológica de Tabasco,Biblioteca,Quienes somos">
        <meta name="keywords" content="tsu,educación,tecnologías,ingeniería,industrial,tecnológica,uttab,desarrollo,química,procesos,tabasco,universidad,servicios,gastronomía,page,comunicación,negocios,administración,aviso,proyectos,alumnos,escolar,mantenimiento,institucional,programa,competencias">
        <link media="all" type="text/css" href="css/servicios.min.css" id="stylesheet-css" rel="stylesheet">
        <!--<meta http-equiv="refresh" content="30">-->
        <!--[if lte IE 8]>
        <script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
        <link type="text/css" href="css/ie.min.css" rel="stylesheet">
        <![endif]-->
    </head>
    <body>
		<jsp:include page="../../includeMenu.jsp?origen=servicios" flush="true"  />
        <!-- Cuerpo -->
        <div class="contenedor" >
           <!-- <object id="objeto_embebido" data="http://www.uttab.edu.mx/contraloria/jsp/biblioteca/2013/enero/Boletin%20Enero%202013.htm" width="1002" height="800"></object>-->
            <div class="area_btn_biblioteca">
            	<a href="Biblioteca" target="_self"><img src="img/servicios/biblioteca/btn_biblioteca.png" width="152" height="28" alt="Biblioteca"/></a>&nbsp;&nbsp;&nbsp;&nbsp;
            	<a href="BibliotecaAntecedentes" target="_self"><img src="img/servicios/biblioteca/btn_antecedentes.png" width="150" height="28" alt="Antecedentes"/></a>&nbsp;&nbsp;&nbsp;&nbsp;         	   	
                <a href="BibliotecaQuienesSomos" target="_self"><img src="img/servicios/biblioteca/btn_qsomos.png" width="151" height="28" alt="¿Quiénes somos?"/></a>&nbsp;&nbsp;&nbsp;&nbsp;
                <a href="BibliotecaRecursosServ" target="_self"><img src="img/servicios/biblioteca/bt_recursos_serv.png" width="149" height="28" alt="Recursos y servicios"/></a>&nbsp;&nbsp;&nbsp;&nbsp;
                <a href="BibliotecaPagoServ" target="_self"><img src="img/servicios/biblioteca/bt_pago_serv.png" width="151" height="28" alt="Pago de servicios"/></a>
            </div>            
            <div class="area_info_biblioteca_quienes">
        	<div class="area_info_biblioteca_quienes_titulo">
          		<h4>¿Quiénes somos?</h4>
        	</div>
        	<div class="area_info_biblioteca_quienes_info">
                    <img src="img/servicios/biblioteca/biblioteca03.png" width="878" height="355" alt="Biblioteca Quienes Somos"><br/><br/><br/>
                    <p>La biblioteca "Ing. José Francisco Fuentes Esperón" tiene como objetivo brindar acceso a la información y al conocimiento de forma innovadora a través de diversos medios, recursos y servicios, de tal manera que esté al alcance de la comunidad universitaria, así como promover el hábito de la lectura como elemento fundamental de la superación personal y profesional hacia el éxito seguro de toda persona.</p><br/><br/>
                    <p><strong>Horarios de atención</strong></p><br/>
                    <p>Lunes a viernes de 8:00 a 21:00 hrs. </p><br/>                  
        	</div>
            </div>
            <div style="clear:both"></div>
            </div>
           
<!-- Cuerpo -->
<jsp:include page="../../includePie.min.jsp?origen=servicios" flush="true" />
    </body>
</html>
