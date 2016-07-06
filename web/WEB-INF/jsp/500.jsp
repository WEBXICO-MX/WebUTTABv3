<%-- 
    Document   : 500
    Created on : 24-nov-2013, 23:25:31
    Author     : Eder Weiss
--%>
<%@page contentType="text/html" pageEncoding="UTF-8" session="false"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="UTF-8">
        <title>UTTAB &#124; Home</title>
        <script>
            function redireccionar() {
                location.href='${pageContext.request.contextPath}/Home.action';
            }
        </script>
    </head>
    <body onLoad="redireccionar();">
    </body>
</html>
