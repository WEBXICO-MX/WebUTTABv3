<%-- 
    Document   : sintonia
    Created on : 30/08/2013, 02:40:45 PM
    Author     : Weisß
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" session="false"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <title>UTTAB &#124; Sintonía UTTAB 102.5 FM</title>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=9"/>
        <meta name="author" content="Depto. Desarrollo de sistemas UTTAB">
        <meta name="description" content="Universidad Tecnológica de Tabasco,Sintonía UTTAB 102.5 FM">
        <meta name="keywords" content="tsu,educación,tecnologías,ingeniería,industrial,tecnológica,uttab,desarrollo,química,procesos,tabasco,universidad,servicios,gastronomía,page,comunicación,negocios,administración,aviso,proyectos,alumnos,escolar,mantenimiento,institucional,programa,competencias">
        <!--[if IE]>
           <link rel="shortcut icon"  href="../img/favicon.ico"/> 
         <![endif]-->
        <link rel="icon" href="img/favicon.ico"/>
        <style>
            body { background-image: url('img/sintonia_fondo.jpg');}
        </style>
    </head>
    <body>
        <div style="width:250px; height:204px;position: fixed;top: 0;left: 0; margin-top: 20px;">
            <img src="img/sinfonia_texto.png" width="250" height="204" alt="sinfonia"/>
        </div>
        <div id="radio"  style="text-align: center; background-image:url('img/fondoRadio.png'); background-repeat: no-repeat; width:300px; height:400px;margin: 200px auto;position: fixed;top:100px;left: 153px;overflow: hidden">
            <audio preload="auto" controls style="margin-top:125px;"><source src="http://radiout.uttab.edu.mx:8000"/></audio>
        </div>
    </body>
</html>