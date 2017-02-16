<%-- 
    Document   : conocer
    Created on : 26-sep-2016, 13:03:09
    Author     : Roberto Eder Weiss Juárez
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" session="false"%>
<%@taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html>
<html lang="es">
    <head>
        <title>UTTAB &#124; CONOCER-UTTAB</title>
        <meta charset="UTF-8">
        <meta name="author" content="Depto. Desarrollo de sistemas UTTAB">
        <meta name="description" content="Universidad Tecnológica de Tabasco,CONOCER">
        <meta name="keywords" content="CONOCER,tsu,educación,tecnologías,ingeniería,industrial,tecnológica,uttab,desarrollo,química,procesos,tabasco,universidad,servicios,gastronomía,page,comunicación,negocios,administración,aviso,proyectos,alumnos,escolar,mantenimiento,institucional,programa,competencias">
        <link rel="icon" href="${pageContext.request.contextPath}/img/favicon.ico"/>
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/otras_secciones3.min.css"/>
        <!--[if lt IE 9]>
           <script src="${pageContext.request.contextPath}/bower_components/html5shiv/dist/html5shiv.min.js" type="text/javascript"></script>
       <![endif]-->
    </head>
    <body>
        <main>
            <jsp:include page="../index3Header.min.jsp" flush="true"  />
            <section class="otras_secciones_section">
                <header class="otras_secciones_titulo">
                    <h2><span class="texto_resaltado">Otras secciones</span> /</h2>
                    <h1>CONOCER-UTTAB</h1>
                    <div class="corte"></div>
                </header>
                <article class="otras_secciones_contenido">
                    <section class="otras_secciones_texto">
                        <img src="${pageContext.request.contextPath}/img/otras_secciones/conocer/conocer_03-min.png" alt="CONOCER-UTTAB"/>
                        <p>A lo largo de sus 20 años, la UTTAB se ha distinguido por la calidad e innovación en los servicios que ofrece, tanto en el sector educativo como en el productivo y hacia el público en general.</p>
                        <p>Es por eso que para continuar a la vanguardia y seguir ofertando una amplia gama de servicios a todos los sectores del estado y la región, la UTTAB obtiene la Acreditación como Entidad de Certificación y Evaluación, nombramiento que otorga el Consejo Nacional de Normalización y Certificación de Competencias Laborales (CONOCER).</p>
                        <figure  style="text-align:center">
                            <img src="${pageContext.request.contextPath}/img/otras_secciones/conocer/conocer_07-min.png" alt="CONOCER-UTTAB">
                        </figure>
                        <h4 class="tituloContenido">¿Para qué le sirve la Acreditación como Entidad de Certificación y Evaluación a la UTTAB?</h4>
                        <p>Para evaluar y certificar conjuntamente con el CONOCER, la competencia laboral de las personas y para acreditar Centros de Evaluación y Evaluadores Independientes, de acuerdo con los principios y lineamientos del Sistema Nacional de competencias.</p>
                        <h4 class="tituloContenido">¿Qué es el CONOCER?</h4>
                        <p>El Consejo Nacional de Normalización y Certificación de Competencias Laborales es una entidad paraestatal del Gobierno Federal de México, con un órgano de gobierno de alta relevancia y con participación tripartita (sector gobierno, sector empresarial y sector laboral).</p>
                        <p>Su misión es contribuir a la competitividad económica y al desarrollo educativo de México, con base en el Sistema Nacional de Competencias de las Personas (SNC).</p>
                        <p>El CONOCER es responsable de promover, coordinar y consolidar un Sistema Nacional de Competencias de las Personas para lograr un mayor nivel de competitividad económica, desarrollo educativo y progreso social, con base en el capital humano de México.</p>
                        <p>En el Sistema Nacional de Competencias de las Personas existe un sinnúmero de estándares a evaluar, actualmente la UTTAB cuenta con la autorización para evaluar los siguientes:</p>
                        <ul>
                            <li>Estándar 217: Impartición de cursos de formación del capital humano de manera presencial grupal</li>
                            <li>Estándar 391: Verificación de las condiciones de seguridad e higiene en los centros de trabajo</li>
                        </ul>
                        <p>La UTTAB también tiene la facultad para impartir cursos de estos estándares, sin embargo no es requisito para solicitar la evaluación.</p>
                    </section>
                    <section class="otras_secciones_texto">
                        <div class="ficha_contacto" style="width:628px">
                            <header><h3>Contacto</h3></header>
                            <article>
                                <p>Martha Ileana Ascencio Alcudia</p>
                                <p>Entidad de Certificación y Evaluación, Universidad Tecnológica de Tabasco</p>
                                <p>Conmutador: +52 (993) 3.58.22.22 Ext. 2004 | 2006</p>
                                <p>Correo institucional: <a href="mailto:conocer.dse@uttab.edu.mx">conocer.dse@uttab.edu.mx</a></p>
                            </article>
                        </div>
                    </section>
                </article>
                <div class="corte"></div>
            </section>
            <jsp:include page="../index3Footer.min.jsp" flush="true"  />             
        </main>
    </body>
</html>