<%-- 
    Document   : buzon
    Created on : 22-sep-2015, 13:25:33
    Author     : Weiss
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" session="false"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <title>UTTAB &#124; Centro de Atención al Sector Energético | Buzón</title>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="author" content="Depto. Desarrollo de sistemas UTTAB">
        <meta name="description" content="Universidad Tecnológica de Tabasco,Centro de Calibración y Pruebas">
        <meta name="keywords" content="tsu,educación,tecnologías,ingeniería,industrial,tecnológica,uttab,desarrollo,química,procesos,tabasco,universidad,servicios,gastronomía,page,comunicación,negocios,administración,aviso,proyectos,alumnos,escolar,mantenimiento,institucional,programa,competencias">
        <link href="${pageContext.request.contextPath}/twbs/bootstrap-3.3.5/css/bootstrap.min.css" rel="stylesheet"/>
        <!--[if IE]>
        <link rel="shortcut icon"  href=""${pageContext.request.contextPath}/img/favicon.ico"/> 
        <![endif]-->
        <link rel="icon" href="${pageContext.request.contextPath}/img/favicon.ico"/>
        <style>
            .bs-example{
                margin: 20px;
            }
        </style>

    </head>
    <body>

        <!-- Cuerpo -->
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <h1><span class="glyphicon glyphicon-user"></span>&nbsp;<s:property value="#session['nombre']" /></h1>
                    <s:url id="logoutURL" action="logout" var="logoutURL"></s:url>
                    <a href="<s:property value="#logoutURL"/>"><i class="glyphicon glyphicon-log-out"></i> CERRAR SESIÓN</a>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12">
                    <div class="bs-example">
                        <ul class="nav nav-tabs" id="myTab">
                            <li class="active"><a href="#sectionA" data-toggle="tab"><span class="glyphicon glyphicon-certificate"></span> Nuevos</a></li>
                            <li><a href="#sectionB" data-toggle="tab"><span class="glyphicon glyphicon-check"></span> Revisados</a></li>
                            <li><a href="#sectionC" data-toggle="tab"><span class="glyphicon glyphicon glyphicon-education"></span> Inscritos</a></li>
                            <li><a href="#sectionE" data-toggle="tab"><span class="glyphicon glyphicon-header"></span> Histórico</a></li>
                            <li><a href="#sectionD" data-toggle="tab"><span class="glyphicon glyphicon-hand-down"></span> No inscritos</a></li>
                        </ul>
                        <div class="tab-content">
                            <div id="sectionA" class="tab-pane fade in active"></div>
                            <div id="sectionB" class="tab-pane fade"></div>
                            <div id="sectionC" class="tab-pane fade"></div>
                            <div id="sectionD" class="tab-pane fade"></div>
                            <div id="sectionE" class="tab-pane fade"></div>
                        </div>
                    </div>
                </div>
            </div>        
            <div class="row" >
                <div class="col-sm-12">
                    <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                        <div class="modal-dialog">
                            <div class="modal-content"></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Cuerpo -->
        <script src="${pageContext.request.contextPath}/js/JQuery/jquery-1.11.3.min.js"></script>
        <script src="${pageContext.request.contextPath}/twbs/bootstrap-3.3.5/js/bootstrap.min.js"></script>
        <script>
            $(document).ready(function () {
                $.ajaxSetup({cache: false});
                
                getBuzon("#sectionA");

                $('a[data-toggle="tab"]').on('shown.bs.tab', function (e) {
                    var target = $(e.target).attr("href");
                    getBuzon(target);
                });

                /* Limpiar la ventana modal para volver a usar*/
                $('body').on('hidden.bs.modal', '.modal', function () {
                    $(this).removeData('bs.modal');
                });

            });

            function getBuzon(target)
            {
                $.ajax({
                    url: "buzon_ajax.action",
                    data: {"st": target},
                    error: function (data) {
                        alert("There was a problem");
                    },
                    success: function (data) {
                        $(target).html(data);
                    }
                });
            }
            
            function changeStatus(status)
            {  $("#cambiar_status_status").val(status);
               return true; 
            }
        </script>
    </body>
</html>