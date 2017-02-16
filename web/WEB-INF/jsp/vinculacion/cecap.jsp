<%-- 
    Document   : cecap.jsp
    Created on : 25/11/2015, 08:54:22 AM
    Author     : NJLN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" session="false"%>
<%@taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html>
<html lang="es">
    <head>
        <title>UTTAB &#124; Centro de Calibración y Pruebas (CECAP)</title>
        <meta charset="UTF-8">
        <meta name="author" content="Depto. Desarrollo de sistemas UTTAB">
        <meta name="description" content="Universidad Tecnológica de Tabasco,Centro de Calibración y Pruebas,CECAP">
        <meta name="keywords" content="vinculación,Centro de Calibración y Pruebas,CECAP,tsu,educación,tecnologías,ingeniería,industrial,tecnológica,uttab,desarrollo,química,procesos,tabasco,universidad,servicios,gastronomía,page,comunicación,negocios,administración,aviso,proyectos,alumnos,escolar,mantenimiento,institucional,programa,competencias">
        <link rel="icon" href="${pageContext.request.contextPath}/img/favicon.ico"/>
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/vinculacion3.min.css"/>
        <!--[if lt IE 9]>
           <script src="${pageContext.request.contextPath}/bower_components/html5shiv/dist/html5shiv.min.js" type="text/javascript"></script>
       <![endif]-->
    </head>
    <body>
        <main>
            <jsp:include page="../index3Header.min.jsp" flush="true"  />
            <section class="vinculacion_section">
                <header class="vinculacion_titulo">
                    <h2><span class="texto_resaltado">Vinculación</span> /</h2>
                    <h1>Centro de Calibración y Pruebas</h1>
                    <div class="corte"></div>
                </header>
                <article class="vinculacion_contenido">
                    <section class="vinculacion_texto">
                        <img src="${pageContext.request.contextPath}/img/vinculacion/cecap/centro-calibración_03-min.png" alt="cecap"/>
                    </section>
                    <section class="vinculacion_texto">
                        <h4 class="tituloContenido">¿Quiénes somos?</h4>
                        
                        <p>El Centro de Calibración y Pruebas - UT (CECAP-UT) brinda servicios confiables de ensayos, calibraciones, asesorías, consultorías, auditorías y capacitaciones, con la finalidad de satisfacer las necesidades de los clientes cumpliendo con lo establecido en la norma ISO/IEC 17025.</p>
                        <p>El CECAP cuenta con un laboratorio de evaluación de la conformidad con reconocimiento de la entidad mexicana de acreditación, a.c. (ema), personal especializado, capacitado y comprometido en el sistema de gestión de la calidad.</p>
                        <p>La entidad mexicana de acreditación, a. c. acredita a la Universidad Tecnológica de Tabasco/Centro de Calibración y Pruebas -UT como:</p>
                        <ul>
                            <li>Laboratorio de ensayo de acuerdo a los requerimientos establecidos en la Norma Mexicana NMX-EC-17025-IMNC-2006 (ISO/IEC 17025:2005) para la actividad de evaluación de la conformidad en la rama de fuentes fijas, no. de acreditación FF-0036-008/09, vigente a partir del 2009-03-20</li>
                            <li>Laboratorio de ensayo de acuerdo a los requerimientos establecidos en la Norma Mexicana NMX-EC-17025-IMNC-2006 (ISO/IEC 17025:2005) para la actividad de evaluación de la conformidad en la rama de ambiente laboral de acreditación no. AL-0475-036/13, vigente a partir del 2013-07-19</li>
                            <li>Laboratorio de calibración de acuerdo a los requerimientos establecidos en la Norma Mexicana NMX-EC-17025-IMNC-2006 (ISO/IEC 17025:2005) para las actividades de evaluación de la conformidad en el área presión no. de acreditación P-116, vigente</li>
                            <li>Laboratorio de calibración de acuerdo a los requerimientos establecidos en la Norma Mexicana NMX-EC-17025-IMNC-2006 (ISO/IEC 17025:2005) para las actividades de evaluación de la conformidad en el área de masa no. de acreditación M-166, vigente</li>
                        </ul>
                        
                        <p>Otros: (aprobación, certificación y registro)</p>
                        <ul>
                            <li>Aprobación de la PROFEPA PFPA-APR-LP-FF-08/10</li>
                            <li>Registro de la STPS: LPSTPS 098/14</li>
                        </ul>
                    </section>
                    <section class="vinculacion_texto">
                        <div class="ficha_contacto" style="width:628px">
                            <header><h3>Contacto</h3></header>
                            <article>
                                <p>Raúl Antonio Salinas Jiménez</p>
                                <p>Encargado del Centro de Calibración y Pruebas</p>
                                <p>Conmutador: +52 (993) 3.58.22.22 Ext. 8201</p>
                                <p>Correo institucional: <a href="mailto:cecap@uttab.edu.mx">cecap@uttab.edu.mx</a> | <a href="mailto:d.especializados@uttab.edu.mx">d.especializados@uttab.edu.mx</a></p>
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