<%-- 
    Document   : login
    Created on : 22-sep-2015, 12:35:44
    Author     : Weiss
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" session="false"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <title>UTTAB &#124; Centro de Atención al Sector Energético | Acceso</title>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="author" content="Depto. Desarrollo de sistemas UTTAB">
        <meta name="description" content="Universidad Tecnológica de Tabasco,Centro de Calibración y Pruebas">
        <meta name="keywords" content="tsu,educación,tecnologías,ingeniería,industrial,tecnológica,uttab,desarrollo,química,procesos,tabasco,universidad,servicios,gastronomía,page,comunicación,negocios,administración,aviso,proyectos,alumnos,escolar,mantenimiento,institucional,programa,competencias">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css"/>
        <!--[if IE]>
        <link rel="shortcut icon"  href=""${pageContext.request.contextPath}/img/favicon.ico"/> 
        <![endif]-->
        <link rel="icon" href="${pageContext.request.contextPath}/img/favicon.ico"/>
    </head>
    <body>
        <!-- Cuerpo -->
        <div class="container">
            <div class="row">
                <div class="col-sm-3">&nbsp;</div>
                <div class="col-sm-6">
                    <h1 class="text-center">Universidad Tecnol&oacute;gica de Tabasco</h1><br/>
                    <s:if test="hasActionErrors()">
                        <div class="alert alert-danger"><s:actionerror/></div>
                    </s:if>
                    <s:if test="hasActionMessages()">
                        <div class="alert alert-success"><s:actionmessage/></div>
                    </s:if>
                    <s:form action="login" namespace="/case" id="frmLogin" method="post" role="form" cssClass="form-horizontal">
                        <div class="form-group">
                            <label for="txtLogin" class="col-lg-2 control-label">Usuario:</label>
                            <div class="col-lg-10">
                            <s:textfield name="login" value="%{usuario.login}" id="txtLogin" size="20" maxLength="20" tabindex="1" cssClass="form-control" placeholder="Usuario" />
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="txtPassword" class="col-lg-2 control-label">Contraseña:</label>
                            <div class="col-lg-10">
                                <s:password name="password" value="%{usuario.password}" id="txtPassword" size="20" maxLength="20" tabindex="2" cssClass="form-control" placeholder="Contraseña"/>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-lg-offset-2 col-lg-10">
                                <s:submit id="btnGrabar" value="Acceder" cssClass="btn btn-success btn-lg btn-block" tabindex="4"/>
                            </div>
                        </div>
                </s:form>
            </div>
            <div class="col-sm-3">&nbsp;</div>
        </div>
    </div>
    <!-- Cuerpo -->
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
</body>
</html>