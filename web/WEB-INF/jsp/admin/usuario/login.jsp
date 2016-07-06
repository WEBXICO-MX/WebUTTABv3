<%-- 
    Document   : login
    Created on : 08-jun-2015, 11:43:53
    Author     : Weiss
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<%@taglib uri="/struts-jquery-tags" prefix="sj"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <title>UTTAB &#124; Control Sistemas | Login</title>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="shortcut icon" href="${pageContext.request.contextPath}/favicon.ico" type="image/x-icon">
        <link rel="icon" href="${pageContext.request.contextPath}/favicon.ico" type="image/x-icon">
        <!-- Bootstrap Core CSS -->
        <link href="${pageContext.request.contextPath}/twbs/plugins/startbootstrap-sb-admin-2-1.0.5/bower_components/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet"/>
        <!-- MetisMenu CSS -->
        <link href="${pageContext.request.contextPath}/twbs/plugins/startbootstrap-sb-admin-2-1.0.5/bower_components/metisMenu/dist/metisMenu.min.css" rel="stylesheet"/>
        <!-- Custom CSS -->
        <link href="${pageContext.request.contextPath}/twbs/plugins/startbootstrap-sb-admin-2-1.0.5/dist/css/sb-admin-2.css" rel="stylesheet"/>
        <!-- Custom Fonts -->
        <link href="${pageContext.request.contextPath}/twbs/plugins/startbootstrap-sb-admin-2-1.0.5/bower_components/font-awesome/css/font-awesome.min.css" rel="stylesheet"/>
        <sj:head locale="es"/>
        <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
            <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
            <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
        <![endif]-->
    </head>
    <body>
        <div class="container">
            <div class="row">
                <div class="col-md-4 col-md-offset-4">
                    <div class="login-panel panel panel-default">
                        <div class="panel-heading">
                            <h3 class="panel-title">Iniciar sesión</h3>
                        </div>
                        <div class="panel-body">
                            <s:if test="hasActionErrors()">
                                <div class="alert alert-danger"><s:actionerror/></div>
                            </s:if>
                            <s:if test="hasActionMessages()">
                                <div class="alert alert-success"><s:actionmessage/></div>
                            </s:if>
                            <s:form action="login" namespace="/SistemasAdmin/usuarios" id="frmLogin" method="post" role="form">
                                <fieldset>
                                    <div class="form-group">
                                        <label for="txtLogin">Login:</label>
                                        <s:textfield name="login" value="%{usuario.login}" id="txtLogin" size="20" maxLength="20" tabindex="1" />
                                    </div>
                                    <div class="form-group">
                                        <label for="txtPassword">Password:</label>
                                        <s:password name="password" value="%{usuario.password}" id="txtPassword" size="20" maxLength="20" tabindex="2" />
                                    </div>
                                    <s:submit id="btnGrabar" value="Acceder" cssClass="btn btn-lg btn-success btn-block" tabindex="4"/>
                                    <br/>
                                    <div class="form-group">
                                        <ul style=" text-align:left">
                                            <li>Ingrese <strong>usuario</strong> y <strong>contraseña</strong> en los campos de arriba&nbsp;<span class="glyphicon glyphicon-arrow-up"></span></li>
                                        </ul>
                                    </div>
                                </fieldset>
                            </s:form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Bootstrap Core JavaScript -->
        <script src="${pageContext.request.contextPath}/twbs/plugins/startbootstrap-sb-admin-2-1.0.5/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
        <!-- Metis Menu Plugin JavaScript -->
        <script src="${pageContext.request.contextPath}/twbs/plugins/startbootstrap-sb-admin-2-1.0.5/bower_components/metisMenu/dist/metisMenu.min.js"></script>
        <!-- Custom Theme JavaScript -->
        <script src="${pageContext.request.contextPath}/twbs/plugins/startbootstrap-sb-admin-2-1.0.5/dist/js/sb-admin-2.js"></script>
        <script>
            $(document).keypress(function (e) {
                if (e.which === 13) {
                    login();
                }
            });

            function login()
            {
                $("#xAccion").val("login");
                $("#frmLogin").submit();

            }
        </script>
    </body>
</html>
