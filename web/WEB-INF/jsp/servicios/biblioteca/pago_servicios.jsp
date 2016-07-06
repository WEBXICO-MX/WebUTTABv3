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
        <title>UTTAB &#124; Biblioteca &#124; Pago de servicios</title>
        <!-- Meta data -->
        <meta charset="UTF-8">
        <meta name="author" content="Depto. Desarrollo de sistemas UTTAB">
        <meta name="description" content="Universidad Tecnológica de Tabasco,Biblioteca,Pago de servicios">
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
            <div class="area_info_biblioteca_pagos">
        	<div class="area_info_biblioteca_pagos_titulo">
          		<h4>Pago de servicios</h4>
        	</div>
        	<div class="area_info_biblioteca_pagos_info">
            	<img src="img/servicios/biblioteca/biblioteca05.png" width="878" height="355" alt="Biblioteca pago de servicios"><br/><br/><br/>
                <p>El procedimiento para solicitar estos servicios es el siguiente:</p><br/>                    
                <ul>
                    <li>Verificar el costo y tipo del servicio</li><br/>
                    <li>Realizar el pago en caja</li><br/>
                    <li>Presentar en biblioteca el recibo de pago, verificando que el concepto solicitado sea el correcto</li>
                </ul><br/>
                <p class="negritas">Nota: El recibo de pago por servicios bibliotecarios será canjeado por un bono y podrás utilizarlo para <em>servicio de impresión,  escáner o &nbsp;fotocopiado</em>.</p><br/><br/>
                <table style="width:100%;">
                    <tr>
                        <td >Concepto</td>
                        <td align="center">Costo</td>
                        <td style="padding-left:100px">Observación</td>
                    </tr>                        
                    <!--<tr>
                        <td>Reposición de credencial</td>
                        <td align="center">$30.00</td>
                        <td style="padding-left:100px">Presentar en biblioteca una fotografía tamaño infantil</td>                       
                    </tr>-->    
                    <tr>
                        <td>Multa por recargo de libros</td>
                        <td align="center">$10.00</td>
                        <td style="padding-left:100px">La multa es por libro y día de retardo</td>                       
                    </tr>       
                    <tr>
                        <td>Servicios bibliotecarios</td>
                        <td align="center">$20.00</td>
                        <td style="padding-left:100px">Puede ser utilizado para cualquiera de los servicios:  <br/><br/>
                        	<ul style="list-style:none">
                                <li>Impresión b/n&nbsp; &nbsp; &nbsp; &nbsp; $1.00</li>
                                <li>Escáner &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;  $1.00</li>
                                <li>Fotocopiado &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;$0.50</li>
                            </ul>
                        </td>                       
                    </tr>         
                </table>
        	</div>
            </div>
            <div style="clear:both"></div>
            </div>
        <!-- Cuerpo -->
<jsp:include page="../../includePie.jsp?origen=servicios" flush="true" />
    </body>
</html>