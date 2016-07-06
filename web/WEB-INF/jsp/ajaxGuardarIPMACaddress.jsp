<%@page contentType="text/html" pageEncoding="UTF-8" session="false"%>
<%@page import="leerdirectorio.Archivo"%>
<%@page import="mx.edu.uttab.util.Utilerias"%>
<%@page import="java.util.Calendar"%>
<%@page import="java.net.NetworkInterface"%>
<%@page import="java.net.InetAddress"%>
<%
    Archivo ar = new Archivo();
    String direccion = getServletContext().getRealPath("WEB-INF/lista_IPs_MACaddress.txt");

    InetAddress inetAddress;
    StringBuilder sb = new StringBuilder();
    String ipAddress = "", macAddress = "";
    int i = 0;
    try {
        inetAddress = InetAddress.getLocalHost();
        ipAddress = inetAddress.getHostAddress();
        NetworkInterface network = NetworkInterface.getByInetAddress(inetAddress);
        byte[] hw = network.getHardwareAddress();
        for (i = 0; i < hw.length; i++) {
            sb.append(String.format("%02X%s", hw[i], (i < hw.length - 1) ? "-" : ""));
        }
        macAddress = sb.toString();
    } catch (Exception e) {
        macAddress = "-";
    }

    if (request.getParameter("xAccion") != null) {
        if (request.getParameter("xAccion").equals("webxico")) {
            ar.concatenar(direccion, ipAddress + "," + macAddress + "," + Utilerias.getCadenaFechaHora(Calendar.getInstance()));

        }
    }
%>