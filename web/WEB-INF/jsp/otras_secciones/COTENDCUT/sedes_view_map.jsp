<%-- 
    Document   : sedes_view_map
    Created on : 28-ene-2015, 13:30:49
    Author     : Weiss
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%  String img = "";
    String label = "";
    String img2 = "";
    String label2 = "";
    int opcion = Integer.parseInt(request.getParameter("id"));
    switch (opcion) {
        case 1:
            img = "mapa_olimpia_xxi.jpg";
            label = "Olimpia XXI";
            break;
        case 2:
            img = "mapa_ciudad_deportiva.jpg";
            label = "Ciudad Deportiva";
            break;
        case 3:
            img = "mapa_deportivo_ujat.jpg";
            label = "Centro Deportivo Universitario UJAT";
             img2 = "mapa_unidad_central.jpg";
            label2 = "UJAT Unidad Central";
            break;
        case 4:
            img = "mapa_uttab.jpg";
            label = "UTTAB";
            break;
        case 5:
            img = "mapa_zona_cicom.jpg";
            label = "Zona CICOM";
            break;
    }
    
    label = label.toUpperCase();
    label2 = label2.toUpperCase();
%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
        <title>Olimpia XXI</title>
    </head>
    <body>
        <h1 class="text-center"><%=label%></h1>

        <img src="${pageContext.request.contextPath}/img/otras_secciones/COTENDCUT/<%=img%>" alt="<%=label%>" title="<%=label%>" class="img-responsive"/>
        <%if (label2!=""){%>
        <h1 class="text-center"><%=label2%></h1>
        <img src="${pageContext.request.contextPath}/img/otras_secciones/COTENDCUT/<%=img2%>" alt="<%=label2%>" title="<%=label2%>" class="img-responsive"/>
    <%}%>
</body>
</html>
