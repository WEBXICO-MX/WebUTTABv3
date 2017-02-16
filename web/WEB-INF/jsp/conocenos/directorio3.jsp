<%-- 
    Document   : directorio3
    Created on : 27-sep-2016, 12:28:53
    Author     : Roberto Eder Weiss Juárez
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" session="false"%>
<%@taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html>
<html lang="es">
    <head>
        <title>UTTAB &#124; Directorio</title>
        <meta charset="UTF-8">
        <meta name="author" content="Depto. Desarrollo de sistemas UTTAB">
        <meta name="description" content="Universidad Tecnológica de Tabasco,Directorio">
        <meta name="keywords" content="conócenos,directorio,tsu,educación,tecnologías,ingeniería,industrial,tecnológica,uttab,desarrollo,química,procesos,tabasco,universidad,servicios,gastronomía,page,comunicación,negocios,administración,aviso,proyectos,alumnos,escolar,mantenimiento,institucional,programa,competencias">
        <link rel="icon" href="${pageContext.request.contextPath}/img/favicon.ico"/>
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/conocenos3.min.css"/>
        <style>
            #direccion_informatica, #servicios_escolares, #planeacion_evaluacion, #administracion_finanzas ,
            #secretaria_vinculacion, #secretaria_academica
            { font-weight: bold; color:#0e547f;}
            a[href^='mailto:'] { font-weight: bold;}
            
            .conocenos_texto { width: 100%;}
            p.nombre_completo { height: 50px;}
            p.nombre_puesto{ height: 70px;}
            p.nombre_completo2 { height: 30px;}
            p.nombre_puesto2{ height: 50px;}
            p.extension{ height: 25px;}
            p.email{ height: 25px;}
        </style>
        <!--[if lt IE 9]>
            <script src="${pageContext.request.contextPath}/bower_components/html5shiv/dist/html5shiv.min.js" type="text/javascript"></script>
        <![endif]-->
    </head>
    <body>
        <main>
            <jsp:include page="../index3Header.min.jsp" flush="true"  />
            <section class="conocenos_section">
                <header class="conocenos_titulo">
                    <h2><span class="texto_resaltado">Conócenos</span> /</h2>
                    <h1>Directorio</h1>
                    <div class="corte"></div>
                </header>
                <article class="conocenos_contenido">
                    <section class="conocenos_texto">                       
                        <article>
                            <header style="text-align: center;"><h3>Rectoría</h3></header>
                            <hr>
                            <table style="text-align: center; margin:0 auto;">
                                <tbody>
                                    <tr>                                        
                                        <td>                                            
                                            <img src="${pageContext.request.contextPath}/img/conocenos/directorio/01_fernando_calzada_02.png" alt="Fernando Calzada Falcón"/>
                                            <p>Fernando Calzada Falcón</p>
                                            <p>Rector</p>
                                            <p>Ext. 9002</p>
                                            <p><a href="mailto:fcalzadaf@uttab.edu.mx">fcalzadaf@uttab.edu.mx</a></p>

                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                            <header style="text-align: center;"><h3>Áreas de apoyo de Rectoría</h3></header>
                            <hr>
                            <table style="text-align: center; margin:0 auto;">
                                <tbody>
                                    <tr>
                                        <td>
                                            <img src="${pageContext.request.contextPath}/img/conocenos/directorio/23_Rigoberto_Ochoa_Murillo.png" alt="Rigoberto Ochoa Murillo"/>
                                            <p>Rigoberto Ochoa Murillo</p>
                                            <p>Titular de la Unidad de Acceso a la Información</p>
                                            <p>Ext. 9009</p>
                                            <p><a href="mailto:transparencia@uttab.edu.mx">transparencia@uttab.edu.mx</a></p>
                                        </td>
                                        <td>
                                            <img src="${pageContext.request.contextPath}/img/conocenos/directorio/02_ana_luisa_miranda.png" alt="Ana Luisa Miranda Acopa"/>
                                            <p>Ana Luisa Miranda Acopa</p>
                                            <p>Secretaria Técnica</p>
                                            <p>Ext. 9002</p>
                                            <p><a href="mailto:secretariatecnica@uttab.edu.mx">secretariatecnica@uttab.edu.mx</a></p>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <img src="${pageContext.request.contextPath}/img/conocenos/directorio/05_paulino_zapata_02.png" alt="Paulino Zapata Arias"/>
                                            <p>Paulino Zapata Arias</p>
                                            <p>Abogado General</p>
                                            <p>Ext. 9007</p>
                                            <p><a href="mailto:abogadogral@uttab.edu.mx">abogadogral@uttab.edu.mx</a></p>
                                        </td>
                                        <td>
                                            <img src="${pageContext.request.contextPath}/img/conocenos/directorio/04_roberto_ordonez_herrera.png" alt="Roberto Ordóñez Herrera"/>
                                            <p>Roberto Ordóñez Herrera</p>
                                            <p>Contralor Interno</p>
                                            <p>Ext. 9010</p>
                                            <p><a href="mailto:contraloria@uttab.edu.mx">contraloria@uttab.edu.mx</a></p>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <img src="${pageContext.request.contextPath}/img/conocenos/directorio/sin_foto2.jpg" width="67"  height="67" alt="Xanath Alexandra Rebolledo González"/>
                                            <p>Xanath Alexandra Rebolledo González</p>
                                            <p>Encargada de la Unidad de Promoción Universitaria</p>
                                            <p>Ext. 9047</p>
                                            <p><a href="mailto:unidaddepromocion@uttab.edu.mx">unidaddepromocion@uttab.edu.mx</a></p>
                                        </td>
                                        <td>
                                            <img src="${pageContext.request.contextPath}/img/conocenos/directorio/sin_foto2.jpg" width="67"  height="67" alt="Consuelo León Peralta"/>
                                            <p>Consuelo León Peralta</p>
                                            <p>Encargada de la Unidad de Mejora Continua</p>
                                            <p>Ext. 9017</p>
                                            <p><a href="mailto:mejoracontinua@uttab.edu.mx">mejoracontinua@uttab.edu.mx</a></p>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </article>
                        
                    </section>
                    <section class="conocenos_texto">
                        <header style="text-align: center;"><h3>Secretaría académica</h3></header>
                        <hr>
                        <article>
                            <table style="text-align: center; margin:0 auto;">
                                <tbody>
                                    <tr>
                                        <td>
                                            <img src="${pageContext.request.contextPath}/img/conocenos/directorio/15_sergio_octavio.jpg" alt="Sergio Octavio Valle Mijangos"/>
                                            <p>Sergio Octavio Valle Mijangos</p>
                                            <p>Secretario</p>
                                            <p>Ext. 1002</p>
                                            <p><a href="mailto:academica@uttab.edu.mx">academica@uttab.edu.mx</a></p>
                                            <p><a href="#areas_secretaria_academica" onclick="mostrar(this.id);" id="secretaria_academica">Ver más (+)</a></p>                                            
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                            <header style="text-align: center;"><h3>Directores de las divisiones académicas</h3></header>
                            <hr>
                            <table style="text-align: center; margin:0 auto;">
                                <tbody>
                                    <tr>
                                        <td style="width:20%; vertical-align: top;">
                                            <img src="${pageContext.request.contextPath}/img/conocenos/directorio/19_marcel_ruiz_02.png" alt="Marcel Ruiz Martínez" width="67" height="67"/>
                                            <p>Marcel Ruiz Martínez</p>
                                            <p>Admon. y Gest. de Proy.</p>
                                            <p class="extension">Ext. 5008</p>
                                            <p class="email"><a href="mailto:d.agep@uttab.edu.mx">d.agep@uttab.edu.mx</a></p>
                                        </td>
                                        <td style="width:20%; vertical-align: top;"><img src="${pageContext.request.contextPath}/img/conocenos/directorio/01_escobedo_cazan.jpg" alt="Luis Alberto Escobedo Cazan" width="67" height="67"/>
                                            <p>Luis A.Escobedo Cazan</p>
                                            <p>Procesos Industriales</p>
                                            <p class="extension">Ext. 1000</p>
                                            <p class="email"><a href="mailto:d.ppymi@uttab.edu.mx">d.ppymi@uttab.edu.mx</a></p>
                                        </td>
                                        <td style="width:20%; vertical-align: top;">
                                            <img src="${pageContext.request.contextPath}/img/conocenos/directorio/18_Jose_Alfredo_Irineo_Mijangos.png" alt="José Alfredo Irineo Mijangos" width="67" height="67"/>
                                            <p>José A. Irineo Mijangos</p>
                                            <p>Química</p>
                                            <p class="extension">Ext. 3003</p>
                                            <p class="email"><a href="mailto:d.quimica@uttab.edu.mx">d.quimica@uttab.edu.mx</a></p>
                                        </td>
                                        <td style="width:20%; vertical-align: top;">
                                            <img src="${pageContext.request.contextPath}/img/conocenos/directorio/16_jose_luis_02.png" alt="José Luis Martínez Rivera" width="67" height="67"/>
                                            <p>José L. Martínez Rivera</p>
                                            <p>Tec. de la Inf. y Com.</p>
                                            <p class="extension">Ext. 8000</p>
                                            <p class="email"><a href="mailto:d.tic@uttab.edu.mx">d.tic@uttab.edu.mx</a></p>
                                        </td>
                                        <td style="width:20%; vertical-align: top;">
                                            <img src="${pageContext.request.contextPath}/img/conocenos/directorio/01_sara_trejo.jpg" alt="Sara Trejo González" width="67" height="67"/>
                                            <p> Sara Trejo González</p>
                                            <p>Turismo y Gastronomía</p>
                                            <p class="extension">Ext. 7000</p>
                                            <p class="email"><a href="mailto:d.tur_gas@uttab.edu.mx">d.tur_gas@uttab.edu.mx</a></p>
                                        </td>                                        
                                    </tr>
                                </tbody>
                            </table>
                            <div style="width:100%;display:none;" id="areas_secretaria_academica">
                                <header style="text-align: center;"><h3>Áreas de apoyo de la Secretaría académica</h3></header>
                                <hr>
                                <table style="text-align:center; margin: 0 auto;">
                                    <tbody>
                                        <tr>
                                            <td style="width:50%">
                                                <img src="${pageContext.request.contextPath}/img/conocenos/directorio/03_mario_ferrer_02.png" alt="Mario Ferrer Ramis"/>
                                                <p>Mario Ferrer Ramis</p>
                                                <p>Subdirector de Servicios Educativos</p>
                                                <p>Ext. 1004</p>
                                                <p><a href="mailto:seducativos@uttab.edu.mx">seducativos@uttab.edu.mx</a></p>
                                                <div style="width:100%;">
                                                    <table style="text-align: center; margin: 0 auto;">
                                                        <tbody>
                                                            <tr>
                                                                <td>
                                                                    <img src="${pageContext.request.contextPath}/img/conocenos/directorio/sin_foto2.jpg" width="67"  height="67" alt="María del Carmen de la Torre Hidalgo"/>
                                                                    <p>María del Carmen de la Torre Hidalgo</p>
                                                                    <p>Jefa del departamento de Servicios de Apoyo al Estudiante</p>
                                                                    <p>Ext. 1010</p>
                                                                    <p><a href="mailto:estudiantiles@uttab.edu.mx">estudiantiles@uttab.edu.mx</a></p>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                    <img src="${pageContext.request.contextPath}/img/conocenos/directorio/sin_foto2.jpg" width="67"  height="67" alt="Soledad Cecilia Rodríguez Pares"/>
                                                                    <p>Soledad Cecilia Rodríguez Pares</p>
                                                                    <p>Jefa del departamento de Servicios Bibliotecarios</p>
                                                                    <p>Ext. 4000</p>
                                                                    <p><a href="mailto:biblioteca@uttab.edu.mx">biblioteca@uttab.edu.mx</a></p>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                    <img src="${pageContext.request.contextPath}/img/conocenos/directorio/24_emilio_vidal.jpg" alt="Emilio Muñoz Vidal"/>
                                                                    <p>Emilio Muñoz Vidal</p>
                                                                    <p>Encargado del departamento de Laboratorios</p>
                                                                    <p>Ext. 3002</p>
                                                                    <p><a href="mailto:c.laboratorios@uttab.edu.mx">c.laboratorios@uttab.edu.mx</a></p>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                    <img src="${pageContext.request.contextPath}/img/conocenos/directorio/sin_foto2.jpg" width="67"  height="67" alt="Isabel Cristina Balcázar Peralta"/>
                                                                    <p>Isabel Cristina Balcázar Peralta</p>
                                                                    <p>Departamento de Actividades Culturales y Deportivas</p>
                                                                    <p>Ext. 8100</p>
                                                                    <p><a href="mailto:daculturales@uttab.edu.mx">daculturales@uttab.edu.mx</a></p>
                                                                </td>
                                                            </tr>
                                                        </tbody>
                                                    </table>                                                                    
                                                </div>
                                            </td>
                                            <td style="width:50%;vertical-align:top">
                                                <img src="${pageContext.request.contextPath}/img/conocenos/directorio/sin_foto2.jpg" width="67"  height="67" alt="Sergio Octavio Valle Mijangos"/>
                                                <p>Guido Fidel Flores Pérez</p>
                                                <p>Subdirector de Gestión Educativa</p>
                                                <p>Ext. 1008</p>
                                                <p><a href="mailto:sgeducativa@uttab.edu.mx">sgeducativa@uttab.edu.mx</a></p>
                                                <div style="width:100%;">
                                                    <table style="text-align: center; margin: 0 auto;">
                                                        <tbody>
                                                            <tr>
                                                                <td>
                                                                    <img src="${pageContext.request.contextPath}/img/conocenos/directorio/sin_foto2.jpg" width="67"  height="67" alt="Erica del Carmen Salazar López"/>
                                                                    <p>Erica del Carmen Salazar López</p>
                                                                    <p>Departamento de Investigación y Desarrollo</p>
                                                                    <p>Ext. 1009</p>
                                                                    <p><a href="mailto:investigacion@uttab.edu.mx">investigacion@uttab.edu.mx</a></p>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                    <img src="${pageContext.request.contextPath}/img/conocenos/directorio/sin_foto2.jpg" width="67"  height="67" alt="Ramón Ramón Castillo"/>
                                                                    <p>Ramón Ramón Castillo</p>
                                                                    <p>Departamento de Gestión Académica</p>
                                                                    <p>Ext. 1007</p>
                                                                    <p><a href="mailto:dacademica@uttab.edu.mx">dacademica@uttab.edu.mx</a></p>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                    <img src="${pageContext.request.contextPath}/img/conocenos/directorio/21_laura_beatriz_romero_02.jpg" alt="Laura Beatriz Romero Hernández"/>
                                                                    <p>Laura Beatriz Romero Hernández</p>
                                                                    <p>Jefa del departamento de Innovación Educativa</p>
                                                                    <p>Ext. 1012</p>
                                                                    <p><a href="mailto:c.edistancia@uttab.edu.mx">c.edistancia@uttab.edu.mx</a></p>
                                                                </td>
                                                            </tr>
                                                        </tbody>
                                                    </table>                                                                    
                                                </div>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div> 
                        </article>
                        
                    </section>
                    <section class="conocenos_texto">
                        <header style="text-align: center;"><h3>Secretaría de vinculación</h3></header>
                        <hr>
                        <article>
                            <table style="text-align: center; margin: 0 auto;">
                                <tbody>
                                    <tr>
                                        <td colspan="3">
                                            <img src="${pageContext.request.contextPath}/img/conocenos/directorio/02_ricardo_moheno_02.png" alt="Ricardo Amado Moheno Barrueta"/>
                                            <p>Ricardo Amado Moheno Barrueta</p>
                                            <p>Secretario</p>
                                            <p>Ext. 2000</p>
                                            <p><a href="mailto:vinculacion@uttab.edu.mx">vinculacion@uttab.edu.mx</a></p>
                                            <p><a href="#areas_enlace_empresarial" onclick="mostrar(this.id);" id="secretaria_vinculacion">Ver más (+)</a></p>  
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="vertical-align:top">
                                            <img src="${pageContext.request.contextPath}/img/conocenos/directorio/11_australia_vallejo_02.png" alt="Australia Vallejo Hidalgo"/>
                                            <p>Australia Vallejo Hidalgo</p>
                                            <p>Directora de Enlace Empresarial</p>
                                            <p>Ext. 2011</p>
                                            <p><a href="mailto:d.desarrollo@uttab.edu.mx">d.desarrollo@uttab.edu.mx</a></p>
                                            <div style="width:100%;display:none;" id="areas_enlace_empresarial">
                                                <table style="text-align:center; margin: 0 auto;">
                                                    <tr>
                                                        <td style="width: 50%">
                                                            <img src="${pageContext.request.contextPath}/img/conocenos/directorio/sin_foto2.jpg" width="67"  height="67" alt="José Alfredo Moreno Díaz"/>
                                                            <p class="nombre_completo2">José Alfredo Moreno Díaz</p>
                                                            <p class="nombre_puesto2">Jefe del departamento de Desarrollo Empresarial</p>
                                                            <p class="extension">Ext. 2015</p>
                                                            <p class="email"><a href="mailto:emprendedores@uttab.edu.mx">emprendedores@uttab.edu.mx</a></p>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td style="width: 50%">
                                                            <img src="${pageContext.request.contextPath}/img/conocenos/directorio/sin_foto2.jpg" width="67"  height="67" alt="Ana Maria Gómez Hernández"/>
                                                            <p>Ana Maria Gómez Hernández</p>
                                                            <p>Jefa del departamento de Seguimiento a Egresados y Educación Continua</p>
                                                            <p>Ext. 2008</p>
                                                            <p><a href="mailto:egresadoscontinua@uttab.edu.mx">egresadoscontinua@uttab.edu.mx</a></p>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </div>
                                        </td>
                                        <td style="vertical-align:top">
                                            <img src="${pageContext.request.contextPath}/img/conocenos/directorio/09_laura_beatriz_guzman_02.png" alt="Laura Beatriz Gúzman Priego"/>
                                            <p>Laura Beatriz Guzmán Priego</p>
                                            <p>Directora de Servicios Especializados</p>
                                            <p>Ext. 2005</p>
                                            <p><a href="mailto:d.especializados@uttab.edu.mx">d.especializados@uttab.edu.mx</a></p>
                                            <div style="width:100%;display:none;" id="areas_servicios_especializados">
                                                <table style="text-align:center; margin: 0 auto;">                                                    
                                                    <tr>
                                                        <td style="width:50%">
                                                            <img src="${pageContext.request.contextPath}/img/conocenos/directorio/sin_foto2.jpg" width="67"  height="67" alt="Lizeth Argüelles Beltrán"/>
                                                            <p class="nombre_completo2">Lizeth Argüelles Beltrán</p>
                                                            <p class="nombre_puesto2">Jefa del departamento de Capacitación Profesional</p>
                                                            <p class="extension">Ext. 2004</p>
                                                            <p class="email"><a href="mailto:capacitacion@uttab.edu.mx">capacitacion@uttab.edu.mx</a></p>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td style="width: 50%">
                                                            <!--<img src="${pageContext.request.contextPath}/img/conocenos/directorio/sin_foto2.jpg" width="67"  height="67" alt="Nombre completo"/>
                                                            <p>Nombre completo</p>
                                                            <p>Jefe del departamento de Servicios Tecnológicos</p>
                                                            <p>Teléfonos</p>
                                                            <p>Email</p>-->
                                                        </td>
                                                    </tr>
                                                </table>
                                            </div>
                                        </td>
                                        <td style="vertical-align:top">
                                            <img src="${pageContext.request.contextPath}/img/conocenos/directorio/10_lenin_gonzalez_02.png" alt="Lenin González Baños"/>
                                            <p>Lenin González Baños</p>
                                            <p>Director de Difusión Universitaria</p>
                                            <p>Ext. 8002</p>
                                            <p><a href="mailto:d.euniversitaria@uttab.edu.mx">d.euniversitaria@uttab.edu.mx</a></p>
                                            <div style="width:100%;display:none;" id="areas_difusion_universitaria">
                                                <table style="text-align:center; margin: 0 auto;">
                                                    <tr>
                                                        <td style="width:50%">
                                                            <img src="${pageContext.request.contextPath}/img/conocenos/directorio/sin_foto2.jpg" width="67"  height="67" alt="Anakaren Hernández González"/>
                                                            <p class="nombre_completo2">Anakaren Hernández González</p>
                                                            <p class="nombre_puesto2">Encargada del departamento de Diseño e Imagen</p>
                                                            <p class="extension">Ext. 8006</p>
                                                            <p class="email"><a href="mailto:editorial@uttab.edu.mx">editorial@uttab.edu.mx</a></p>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td style="width:50%">
                                                            <!--<img src="${pageContext.request.contextPath}/img/conocenos/directorio/sin_foto2.jpg" width="67"  height="67" alt="Nombre completo"/>
                                                            <p>Nombre completo</p>
                                                            <p>Jefe del departamento de Producción Audiovisual</p>
                                                            <p>Teléfonos</p>
                                                            <p>Email</p>-->
                                                        </td>
                                                    </tr>
                                                </table>
                                            </div>
                                        </td>
                                    </tr>                                    
                                </tbody>
                            </table>
                        </article>
                        
                    </section>
                    <section class="conocenos_texto">
                        <header style="text-align: center;"><h3>Dirección de administración y finanzas</h3></header>
                        <hr>
                        <article>
                            <table style="text-align: center; margin:0 auto;">
                                <tbody>
                                    <tr>
                                        <td><img src="${pageContext.request.contextPath}/img/conocenos/directorio/06_Sergio_Hermilo_Jimenez_Torres.jpeg" alt="Sergio Hermilo Jiménez Torres"/>
                                            <p>Sergio Hermilo Jiménez Torres</p>
                                            <p>Director</p>
                                            <p>Ext. 9018</p>
                                            <p><a href="mailto:administracion@uttab.edu.mx">administracion@uttab.edu.mx</a></p>
                                            <p><a href="#areas_administracion_finanzas" onclick="mostrar(this.id);" id="administracion_finanzas">Ver más (+)</a></p>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <div style="width:100%;display:none;" id="areas_administracion_finanzas">
                                                <table style="text-align: center; margin:0 auto;">
                                                    <!--<tr>
                                                        <td colspan="5"><img src="${pageContext.request.contextPath}/img/conocenos/directorio/sin_foto2.jpg" width="67"  height="67" alt="Nombre completo"/>
                                                            <p>Nombre completo</p>
                                                            <p>Subdirección de Enlace Administrativo</p>
                                                            <p>Teléfonos</p>
                                                            <p>Email</p>
                                                        </td>
                                                    </tr>-->
                                                    <tr>
                                                        <td style="width:20%; vertical-align: top;"><img src="${pageContext.request.contextPath}/img/conocenos/directorio/sin_foto2.jpg" width="67"  height="67" alt="Alfonso Boylan León"/>
                                                            <p class="nombre_completo">Alfonso Boylan León</p>
                                                            <p class="nombre_puesto">Encargado del departamento de Recursos Humanos</p>
                                                            <p class="extension">Ext. 9034</p>
                                                            <p class="email"><a href="mailto:rhumanos@uttab.edu.mx">rhumanos@uttab.edu.mx</a></p>
                                                        </td>
                                                        <td style="width:20%;vertical-align: top;"><img src="${pageContext.request.contextPath}/img/conocenos/directorio/sin_foto2.jpg" width="67"  height="67" alt="Sonia del Carmen Pérez Gallegos"/>
                                                            <p class="nombre_completo">Sonia del Carmen Pérez Gallegos</p>
                                                            <p class="nombre_puesto">Jefa del departamento de Contabilidad</p>
                                                            <p class="extension">Ext. 9022</p>
                                                            <p class="email"><a href="mailto:contabilidad@uttab.edu.mx">contabilidad@uttab.edu.mx</a></p>
                                                        </td>
                                                        <td style="width:20%;vertical-align: top;"><img src="${pageContext.request.contextPath}/img/conocenos/directorio/sin_foto2.jpg" width="67"  height="67" alt="Jesús Baeza Vidal"/>
                                                            <p class="nombre_completo">Jesús Baeza Vidal</p>
                                                            <p class="nombre_puesto">Jefe del departamento de Recursos Materiales</p>
                                                            <p class="extension">Ext. 9024</p>
                                                            <p class="email"><a href="mailto:rec.mat@uttab.edu.mx">rec.mat@uttab.edu.mx</a></p>
                                                        </td>
                                                        <td style="width:20%;vertical-align: top;"><img src="${pageContext.request.contextPath}/img/conocenos/directorio/sin_foto2.jpg" width="67"  height="67" alt="José Mauricio Alarcón Román"/>
                                                            <p class="nombre_completo">José Mauricio Alarcón Román</p>
                                                            <p class="nombre_puesto">Encargado del departamento de Programación y Presupuesto</p>
                                                            <p class="extension">Ext. 9029</p>
                                                            <p class="email" style="margin-right:10px;"><a href="mailto:presupuesto@uttab.edu.mx">presupuesto@uttab.edu.mx</a></p>
                                                        </td>
                                                        <td style="width:20%;vertical-align: top;"><img src="${pageContext.request.contextPath}/img/conocenos/directorio/sin_foto2.jpg" width="67"  height="67" alt="Sergio Aníbal Contreras Carrillo"/>
                                                            <p class="nombre_completo">Sergio Aníbal Contreras Carrillo</p>
                                                            <p class="nombre_puesto">Jefe del departamento de Mantenimiento y Servicios Generales</p>
                                                            <p class="extension">Ext. 1101</p>
                                                            <p class="email"><a href="mailto:mantenimiento@uttab.edu.mx">mantenimiento@uttab.edu.mx</a></p>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </div>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </article>
                        
                    </section>
                    <section class="conocenos_texto">
                        <header style="text-align: center;"><h3>Dirección de planeación y evaluación</h3></header>
                        <hr>
                        <article>
                            <table style="text-align: center; margin:0 auto;">
                                <tbody>
                                    <tr>
                                        <td><img src="${pageContext.request.contextPath}/img/conocenos/directorio/13_piotr_aleksander_dobrosin_02.png" alt="Piotr Aleksander Dobrosin Ziemba"/>
                                            <p>Piotr Aleksander Dobrusin Ziemba</p>
                                            <p>Director</p>
                                            <p>Ext. 9013</p>
                                            <p><a href="mailto:d.planeacion@uttab.edu.mx">d.planeacion@uttab.edu.mx</a></p>
                                            <p><a href="#areas_planeacion_evaluacion" onclick="mostrar(this.id);" id="planeacion_evaluacion">Ver más (+)</a></p>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <div style="width:100%;display:none;" id="areas_planeacion_evaluacion">
                                                <table style="text-align: center; margin:0 auto;">
                                                    <tr>
                                                        <td style="width: 50%">
                                                            <img src="${pageContext.request.contextPath}/img/conocenos/directorio/sin_foto2.jpg" width="67"  height="67" alt="Rosa Aurora Ortiz León"/>
                                                            <p class="nombre_completo2">Rosa Aurora Ortiz León</p>
                                                            <p class="nombre_puesto2">Jefa del departamento de Desarrollo y Evaluación Institucional</p>
                                                            <p class="extension">Ext. 9015</p>
                                                            <p class="email"><a href="mailto:evaluacion@uttab.edu.mx">evaluacion@uttab.edu.mx</a></p>
                                                        </td>
                                                        <td style="width: 50%">
                                                            <img src="${pageContext.request.contextPath}/img/conocenos/directorio/sin_foto2.jpg" width="67"  height="67" alt="Jose de Jesus García Hernández"/>
                                                            <p class="nombre_completo2">Jose de Jesus García Hernández</p>
                                                            <p class="nombre_puesto2">Encargado del departamento de Información y Estadística</p>
                                                            <p class="extension">Ext. 9016</p>
                                                            <p class="email"><a href="mailto:estadistica@uttab.edu.mx">estadistica@uttab.edu.mx</a></p>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </div>
                                        </td>
                                    </tr>

                                </tbody>
                            </table>
                        </article>
                        
                    </section>
                    <section class="conocenos_texto">
                        <header style="text-align: center;"><h3>Dirección de servicios escolares</h3></header>
                        <hr>
                        <article>
                            <table style="text-align: center; margin:0 auto;">
                                <tbody>
                                    <tr>
                                        <td><img src="${pageContext.request.contextPath}/img/conocenos/directorio/07_lorena_rodriguez_02.png" alt="Lorena Rodríguez Juárez"/>
                                            <p>Lorena Rodríguez Juárez</p>
                                            <p>Directora</p>
                                            <p>Ext. 9038</p>
                                            <p><a href="mailto:d.escolares@uttab.edu.mx">d.escolares@uttab.edu.mx</a></p>
                                            <p><a href="#areas_servicios_escolares" onclick="mostrar(this.id);" id="servicios_escolares">Ver más (+)</a></p>
                                        </td>                                        
                                    </tr>
                                    <tr>
                                        <td>
                                            <div style="width:100%;display:none;" id="areas_servicios_escolares">
                                                <table style="text-align: center; margin:0 auto;">
                                                    <tr>
                                                        <td style="width:50%">
                                                            <img src="${pageContext.request.contextPath}/img/conocenos/directorio/sin_foto2.jpg" width="67"  height="67" alt="Alicia Brown Valenzuela"/>
                                                            <p class="nombre_completo2">Alicia Brown Valenzuela</p>
                                                            <p class="nombre_puesto2">Jefa del departamento de Control Escolar</p>
                                                            <p class="extension">Ext. 9049</p>
                                                            <p class="email"><a href="mailto:servicios.escolares@uttab.edu.mx">servicios.escolares@uttab.edu.mx</a></p>
                                                        </td>
                                                        <td style="width:50%">
                                                            <img src="${pageContext.request.contextPath}/img/conocenos/directorio/sin_foto2.jpg" width="67"  height="67" alt="Silvia Vidal Rodriguez"/>
                                                            <p class="nombre_completo2">Silvia Vidal Rodriguez</p>
                                                            <p class="nombre_puesto2">Jefe del departamento de Becas y Titulación</p>
                                                            <p class="extension">Ext. 9041</p>
                                                            <p class="email"><a href="mailto:titulación@uttab.edu.mx">titulación@uttab.edu.mx</a></p>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </div>
                                        </td>
                                    </tr>                                    
                                </tbody>
                            </table>
                        </article>
                        
                    </section>
                    <section class="conocenos_texto">
                        <header style="text-align: center;"><h3>Dirección de informática</h3></header>
                        <hr>
                        <article>
                            <table style="text-align: center; margin:0 auto;">
                                <tbody>
                                    <tr>
                                        <td><img src="${pageContext.request.contextPath}/img/conocenos/directorio/08_juan_alberto_camacho_02.png" alt="Juan Alberto Camacho Ochoa"/>
                                            <p>Juan Alberto Camacho Ochoa</p>
                                            <p>Director</p>
                                            <p>Ext. 9043</p>
                                            <p><a href="mailto:d.informatica@uttab.edu.mx">d.informatica@uttab.edu.mx</a></p>
                                            <p><a href="#areas_direccion_informatica" onclick="mostrar(this.id);" id="direccion_informatica">Ver más (+)</a></p>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <div style="width:100%;display:none;" id="areas_direccion_informatica">
                                                <table style="text-align: center; margin:0 auto;">
                                                    <tr>
                                                        <td style="width:50%;vertical-align: top;">
                                                            <img src="${pageContext.request.contextPath}/img/conocenos/directorio/sin_foto2.jpg" width="67"  height="67" alt="Jorge José Jiménez del Cueto"/>
                                                            <p class="nombre_completo2">Jorge José Jiménez del Cueto</p>
                                                            <p class="nombre_puesto2">Jefe del departamento de Sistemas</p>
                                                            <p class="extension">Ext. 5002</p>
                                                            <p class="email"><a href="mailto:sistemas@uttab.edu.mx">sistemas@uttab.edu.mx</a></p>
                                                        </td>
                                                        <td style="width:50%;vertical-align: top;">
                                                            <img src="${pageContext.request.contextPath}/img/conocenos/directorio/sin_foto2.jpg" width="67"  height="67" alt="Jorge Pimentel Soriano"/>
                                                            <p class="nombre_completo2">Jorge Pimentel Soriano</p>
                                                            <p class="nombre_puesto2">Jefe del departamento de Soporte Técnico y Redes</p>
                                                            <p class="extension">Ext. 5000</p>
                                                            <p class="email"><a href="mailto:soporte@uttab.edu.mx">soporte@uttab.edu.mx</a></p>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </div>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </article>
                        
                    </section>
                    <section class="conocenos_texto">
                        <header style="text-align: center;"><h3>Centro de Atención al Sector Energético</h3></header>
                        <hr>
                        <article>
                            <table style="text-align: center; margin:0 auto;">
                                <tbody>
                                    <tr>
                                        <td><img src="${pageContext.request.contextPath}/img/conocenos/directorio/14_guillermo oliver_02.jpg" alt="Juan Alberto Camacho Ochoa"/>
                                            <p>Guillermo Oliver González Rodríguez</p>
                                            <p>Director</p>
                                            <p>Ext. 2017</p>
                                            <p><a href="mailto:case@uttab.edu.mx">case@uttab.edu.mx</a></p>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </article>
                        
                    </section>
                    <section class="conocenos_texto">
                        <p>*Lada internacional +52, lada nacional (993)</p>
                    </section>
                </article>
                <div class="corte"></div>
            </section>
            <jsp:include page="../index3Footer.min.jsp" flush="true"  />
        </main>
        
        <script src="${pageContext.request.contextPath}/js/conocenos/directorio3.min.js"></script>
    </body>
</html>
