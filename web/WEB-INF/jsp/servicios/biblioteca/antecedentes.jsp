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
        <title>UTTAB &#124; Biblioteca &#124; Antecedentes</title>
        <!-- Meta data -->
        <meta charset="UTF-8">
        <meta name="author" content="Depto. Desarrollo de sistemas UTTAB">
        <meta name="description" content="Universidad Tecnológica de Tabasco,Biblioteca,Antecedentes">
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
            <div class="area_info_biblioteca_ant">
        	<div class="area_info_biblioteca_ant_titulo">
          		<h4>Antecedentes</h4>
        	</div>
        	<div class="area_info_biblioteca_ant_info">
                    <img src="img/servicios/biblioteca/biblioteca02.png" width="878" height="355" alt="Biblioteca Antecedentes"><br/><br/><br/>
                    <p>Desde sus inicios la Universidad Tecnológica de Tabasco, consciente de las necesidades informativas de la comunidad estudiantil, brinda apoyo al proceso enseñanza-aprendizaje mediante la prestación de los servicios bibliotecarios. Es por ello que durante su primera etapa de crecimiento se adquirió un total de 1,359 libros.</p><br/>
                    <p>Posteriormente y como consecuencia de la creación de nuevas carreras se da un incremento en la población educativa, aunado a la demanda de los servicios, lo cual da pie a la construcción de un edificio para la biblioteca.</p><br/>
                    <p>Es así como en agosto de 2004 fue inaugurado por el Ingeniero José Francisco Fuentes Esperón (†), rector en turno de la UTTAB (período 2002-2008), el inmueble que alberga la biblioteca, mismo que fue equipado gracias al apoyo de las autoridades federales y estatales, como plataforma para las actividades académicas, surgiendo con ello la instauración de  nuevos servicios puestos a disposición de la comunidad universitaria.</p><br/>
                    <p>En octubre de 2009 tras haber cumplido un mes de deceso el Ingeniero Fuentes Esperón (†), se llevó a cabo el homenaje luctuoso, así como la develación del busto y fotografía del mismo en la entrada de la biblioteca que a partir de ese día lleva su nombre. </p><br/>
        	</div>
            </div>
            <div style="clear:both"></div>
            </div>
           <div style="clear:both"></div>
        </div>
<!-- Cuerpo -->
<jsp:include page="../../includePie.min.jsp?origen=servicios" flush="true" />
    </body>
</html>