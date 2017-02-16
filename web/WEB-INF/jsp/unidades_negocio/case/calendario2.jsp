<%-- 
    Document   : calendario2
    Created on : 10-mar-2016, 11:28:20
    Author     : Weiss
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" session="false"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <title>UTTAB &#124; Centro de Atención al Sector Energético &#124; Calendario</title>
        <meta charset="UTF-8">
        <meta name="author" content="Depto. Desarrollo de sistemas UTTAB">
        <meta name="description" content="Universidad Tecnológica de Tabasco,Centro de Atención al Sector Energético, Calendario">
        <meta name="keywords" content="vinculación,Centro de Atención al Sector Energético,tsu,educación,tecnologías,ingeniería,industrial,tecnológica,uttab,desarrollo,química,procesos,tabasco,universidad,servicios,gastronomía,page,comunicación,negocios,administración,aviso,proyectos,alumnos,escolar,mantenimiento,institucional,programa,competencias">
        <link rel="icon" href="${pageContext.request.contextPath}/img/favicon.ico"/>
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/vinculacion3.min.css"/>
        <link rel="stylesheet" href="${pageContext.request.contextPath}/js/JQuery/plugins/jquery-ui-1.10.4.custom/css/smoothness/jquery-ui-1.10.4.custom.min.css"/>
        <style>
            .inicio_curso a {
                background-image : url('${pageContext.request.contextPath}/img/unidades_negocio/case/inicioDeCurso.png') !important;
                background-size:39px 28px !important;
                background-repeat:no-repeat !important;
                color: black !important;
                font-weight:bold !important;
            }

            div#datepicker > div { width:auto!important;}
        </style>
        <!--[if lt IE 9]>
           <script src="${pageContext.request.contextPath}/bower_components/html5shiv/dist/html5shiv.min.js" type="text/javascript"></script>
       <![endif]-->
    </head>
    <body>
        <main>
            <jsp:include page="../../index3Header.min.jsp" flush="true"  />
            <section class="vinculacion_section">
                <header class="vinculacion_titulo">
                    <h2><span class="texto_resaltado">Vinculación</span> /</h2>
                    <h1>Centro de Atención al Sector Energético</h1>
                    <div class="corte"></div>
                </header>
                <article class="vinculacion_contenido">
                    <section class="vinculacion_texto">
                        <div style="text-align: right;">
                            <a href="inicio.action"><img src="${pageContext.request.contextPath}/img/unidades_negocio/case/btn_regresar.png" alt="Regresar"/></a>
                        </div>
                    </section>
                    <section class="vinculacion_texto">
                        <header><h3>Calendario <span id="capacitacion_nombre"></span></h3></header>
                        <span id="capacitacion_descripcion"></span>
                        <p class="negritas">Iconografía:</p>
                        <ul>
                            <li><img src="${pageContext.request.contextPath}/img/unidades_negocio/case/inicioDeCurso.png" alt="Inicio de curso" style="width:46px; height: 33px;"/>Inicio de curso</li>
                        </ul>
                        <div id="datepicker" style=" width: auto;"></div>
                    </section>
                    <section class="vinculacion_texto">
                        <div class="ficha_contacto" style="width:500px;">
                            <header><h3>Contacto</h3></header>
                            <article>
                                <p>Alberto de la Cruz Cruz</p>
                                <p>Coordinador de capacitación</p>
                                <p>Número directo: +52 (993) 3.58.22.10</p>
                                <p>Conmutador: +52 (993) 3.58.22.22 Ext. 2017 | 2018</p>
                                <p>Correo institucional: <a href="coordinaciondecapacitacion@uttab.edu.mx">coordinaciondecapacitacion@uttab.edu.mx</a></p>
                            </article>
                        </div>
                    </section>
                </article>
                <div class="corte"></div>
            </section>
            <jsp:include page="../../index3Footer.min.jsp" flush="true"  />             
        </main>
        
        <script src="${pageContext.request.contextPath}/js/JQuery/plugins/jquery-ui-1.10.4.custom/js/jquery-ui-1.10.4.custom.min.js"></script>
        <script>
            var capacitacion_id = <%= request.getParameter("c") != null ? Integer.parseInt(request.getParameter("c")) : 0%>;
            var rest1 = "http://www.uttab.edu.mx/WebCASE/rest/capacitaciones/" + capacitacion_id;
            var availableDates = [];
            var json = null;

            //("0" + date.getDate()).slice(-2) PARA EL DIA        
            //("0" + (date.getMonth() + 1)).slice(-2) PARA EL MES
            function available(date) {
                var mdy = date.getFullYear() + "-" + ("0" + (date.getMonth() + 1)).slice(-2) + "-" + ("0" + date.getDate()).slice(-2);
                if ($.inArray(mdy, availableDates) !== -1) {
                    return [true, "inicio_curso"];
                } else {
                    return[true, ""];
                }
            }

            function buildLink(dateText, inst) {
                var mtz = dateText.split("/");
                var ymd = mtz[2] + "-" + mtz[1] + "-" + mtz[0];
                for (var i = 0; i < json.calendarios_capacitaciones.length; i++)
                {
                    if (ymd === json.calendarios_capacitaciones[i].fecha_inicio)
                    {
                        var url = "registro.action?c=" + json.id + "&cc=" + json.calendarios_capacitaciones[i].id;
                        window.location = url;
                        return;
                    }
                }

            }

            $(document).ready(function () {
                $.ajaxSetup({cache: false});

                $.getJSON(rest1, function (data) {
                    $("#capacitacion_nombre").html(data.nombre);
                    $("#capacitacion_descripcion").html(data.descripcion);
                    json = data;
                    $.each(data.calendarios_capacitaciones, function (i, value) {
                        availableDates.push(value.fecha_inicio);
                    });

                    $('#datepicker').datepicker({
                        numberOfMonths: [3, 4],
                        monthNames: ["Enero", "Febrero", "Marzo", "Abril", "Mayo", "Junio", "Julio", "Agosto", "Septiembre", "Octubre", "Noviembre", "Diciembre"],
                        dayNamesMin: ["Do", "Lu", "Ma", "Mi", "Ju", "Vi", "Sa"],
                        dateFormat: "dd/mm/yy",
                        minDate: new Date(2016, 0, 1),
                        maxDate: new Date(2016, 11, 31),
                        beforeShowDay: available,
                        onSelect: buildLink
                    });
                });


            });

        </script>
    </body>
</html>