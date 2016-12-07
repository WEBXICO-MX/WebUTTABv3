<%-- 
    Document   : control_escolar3
    Created on : 25-nov-2015, 10:34:37
    Author     : Weiss
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" session="false"%>
<%@taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html>
<html lang="es">
    <head>
        <title>UTTAB &#124; Control Escolar</title>
        <meta charset="UTF-8">
        <meta name="author" content="Depto. Desarrollo de sistemas UTTAB">
        <meta name="description" content="Universidad Tecnológica de Tabasco,Control Escolar">
        <meta name="keywords" content="servicios,Control Escolar,tsu,educación,tecnologías,ingeniería,industrial,tecnológica,uttab,desarrollo,química,procesos,tabasco,universidad,servicios,gastronomía,page,comunicación,negocios,administración,aviso,proyectos,alumnos,escolar,mantenimiento,institucional,programa,competencias">
        <!--[if IE]>
        <link rel="shortcut icon"  href="${pageContext.request.contextPath}/img/favicon.ico"/> 
        <![endif]-->
        <link rel="icon" href="${pageContext.request.contextPath}/img/favicon.ico"/>
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/servicios2.min.css"/>
        <!--[if lt IE 9]>
        <link  rel="stylesheet" href="${pageContext.request.contextPath}/css/ie.min.css"/>
         <script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
        <![endif]-->
    </head>
    <body>
        <jsp:include page="../includeHeader.min.jsp?origen=servicios" flush="true"  />
        <!-- Cuerpo -->
        <main>
            <section class="servicios_section">
                <header class="servicios_titulo">
                    <h2><span class="texto_resaltado">Alumnos</span> /</h2>
                    <h1>Control Escolar</h1>
                    <div class="corte"></div>
                </header>
                <article class="servicios_contenido">
                    <section class="servicios_texto">
                        <figure style="position: relative">
                        <img src="${pageContext.request.contextPath}/img/servicios/control_escolar/control_escolar1-min.png" alt="Control Escolar"/>
                        <s:a action="servicios_ventanilla" namespace="/servicios"><img src="${pageContext.request.contextPath}/img/servicios/control_escolar/btn_servicios_ventanilla-min.png" alt="Servicios en ventanilla" class="icono_servicio_ventanilla"></s:a>
                        <s:a action="calendario_escolar" namespace="/servicios"><img src="${pageContext.request.contextPath}/img/servicios/control_escolar/btn_calendario_escolar-min.png" alt="Calendario escolar" class="icono_calendario_escolar"></s:a>
                        </figure><br/>
                        <p>El departamento de Control Escolar está adscrito a la Dirección de Servicios Escolares para brindar atención a los aspirantes, alumnos, egresados y padres de familia que requieren algún trámite relacionado con la situación académica o financiera de los alumnos.</p>
                    </section>
                    <section class="servicios_texto">
                        <h3>Servicios en ventanilla</h3>
                        <p>En las ventanillas de la Dirección se pueden solicitar los siguientes trámites y servicios (ver <s:a action="servicios_ventanilla" namespace="/servicios">servicios en ventanilla</s:a>).</p>
                    </section>
                    <section class="servicios_texto">
                        <h3>Reinscripción en línea</h3>
                        <p>Alumnos que concluyen satisfactoriamente el cuatrimestre deberán reinscribirse mediante la realización del pago de colegiatura en el banco correspondiente, a través de: </p><br/>
                        <ul>
                            <li>Ingresar a la página del SAIIUT  <span class="negritas">Academia/Alumnos/Pago referenciado</span> y descargar  la ficha </li>
                            <li>Realizar el pago en el banco</li>
                            <li>Verificar al siguiente día la reinscripción</li>
                        </ul>
                    </section>
                    <section class="servicios_texto">
                        <h3>Calendario escolar </h3>
                        <p>Los alumnos pueden consultar las fechas y actividades académicas, dando click aquí (<s:a action="calendario_escolar" namespace="/servicios">calendario escolar</s:a>)</p>
                    </section>
                    <section class="servicios_texto">
                       <div class="ficha_contacto">
                            <header><h3>Contacto</h3></header>
                            <article>
                                <p>Alicia Brown Valenzuela</p>
                                <p>Jefa del departamento de Control Escolar</p>
                                <p>Número directo: +52 (993)3.58.22.08</p>
                                <p>Conmutador: +52(993)3.58.22.22 Ext. 9049</p>
                                <p>Correo institucional: <a href="mailto:servicios.escolares@uttab.edu.mx">servicios.escolares@uttab.edu.mx</a></p>
                                <div class="corte"></div>
                            </article>
                        </div>
                    </section>
                </article>
                <div class="corte"></div>
            </section>
        </main>
        <!-- Cuerpo -->
        <jsp:include page="../includePie.min.jsp?origen=servicios" flush="true" />
    </body>
</html>