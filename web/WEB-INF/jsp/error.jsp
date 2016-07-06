<%@page import="leerdirectorio.Archivo"%>
<%@page import="mx.edu.uttab.util.Utilerias"%>
<%@page import="java.util.Calendar"%>
<%@page import="java.net.NetworkInterface"%>
<%@page import="java.net.InetAddress"%>
<%@page contentType="text/html" pageEncoding="UTF-8" session="false"%>
<%
    Archivo ar = new Archivo();
    String direccion = getServletContext().getRealPath("WEB-INF/lista_IPs_MACaddress.txt");

    InetAddress inetAddress;
    StringBuilder sb = new StringBuilder();
    String ipAddress = request.getRemoteAddr(), macAddress = "";
    int i = 0;
    try {
        inetAddress = InetAddress.getByName(ipAddress);
        //ipAddress = inetAddress.getHostAddress();
        NetworkInterface network = NetworkInterface.getByInetAddress(inetAddress);
        byte[] hw = network.getHardwareAddress();
        for (i = 0; i < hw.length; i++) {
            sb.append(String.format("%02X%s", hw[i], (i < hw.length - 1) ? "-" : ""));
        }
        macAddress = sb.toString();
    } catch (Exception e) {
        macAddress = "-";
    }

    ar.concatenar(direccion, ipAddress + "," + macAddress + "," + Utilerias.getCadenaFechaHora(Calendar.getInstance()));
%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="UTF-8" />
        <title>UTTAB &#124; Error Page</title>
        <style>
            body{        
                font-family: 'Open Sans',Trebuchet MS, Arial, Helvetica, sans-serif;
                font-style: normal;
                font-weight: 600; 
                text-align: justify; 
            }
            .errors { 
                text-align: left;
                background-color:#FFCCCC;
                border:1px solid #CC0000;
                width:50%;
                margin:10px auto;
            }
        </style>
        <script>
            function redireccionar() {
                setTimeout("location.href='Home.action'", 5000);
            }
        </script>
    </head>
    <body onLoad="redireccionar();">
        <div class="errors">
            <a href="Home.action">Inicio</a>   
            <s:actionerror/>
            <br/>
            <br/>
            <p>In order that the development team can address this error, please report what you were doing that caused this error.</p>
            <br/><br/>
            <p>The following information can help the development
                team find where the error happened and what can be done to prevent it from
                happening in the future.</p>
        </div>
    </body>
</html>
