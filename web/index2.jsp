<%-- 
    Document   : index2
    Created on : 06-oct-2015, 14:12:42
    Author     : Weiss
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <title>UTTAB &#124; Universidad Tecnológica de Tabasco</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!--[if IE]>
        <link rel="shortcut icon"  href="img/favicon.ico"/> 
        <![endif]-->
        <link rel="icon" href="img/favicon.ico"/>
        <link href="twbs/bootstrap-3.3.5/css/bootstrap.min.css" rel="stylesheet"/>
        <style>
            img.img-responsive { margin: 0 auto;}
        </style>
    </head>
    <body>
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <p class="visible-xs-block">extra small devices</p>
                    <p class="visible-sm-block">small devices</p>
                    <p class="visible-md-block">medium devices</p>
                    <p class="visible-lg-block">large devices</p>
                </div>
            </div>
            <!-- Actividades Universitarias -->
            <section class="row">
                <div class="col-md-12">
                    <div class="row">
                        <div class="col-md-12">
                            <h1 class="visible-md visible-lg">Actividades Universitarias</h1>
                            <h1 class="visible-xs visible-sm  text-center">Actividades Universitarias</h1>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-5">
                           <img src="/WebUTTABv3/viewActividadUniversitariaIMG.action?id=331" alt="Mi universidad me gUsTa" class="img-responsive">
                           <h2 class="visible-md visible-lg text-muted">Mi universidad me gUsTa</h2>
                           <h2 class="visible-xs visible-sm  text-center text-muted">Mi universidad me gUsTa</h2>
                           <p class="text-justify">La Unidad de Mejora Continua organizó la “2da. Semana de la Calidad y la Mejora Continua” del 28 de septiembre al 2 de octubre. La comunidad universitaria participó en las diversas dinámicas y concursos que se llevaron a cabo para fortalecer la filosofía de la gestión excelente.</p>
                           <input type="button" class="btn btn-success" value="Ver noticia ..."/>
                        </div>
                        <div class="col-md-7">
                            <div class="row">
                                <div class="col-md-6">
                                    <img src="/WebUTTABv3/viewActividadUniversitariaIMG.action?id=330" alt="Eficiencia energética y arquitectura bioclimática" class="img-responsive">
                                    <h2 class="visible-md visible-lg text-muted">Eficiencia energética y arquitectura bioclimática</h2>
                                    <h2 class="visible-xs visible-sm  text-center text-muted">Eficiencia energética y arquitectura bioclimática</h2>
                                    <p class="text-justify">Esta Casa de Estudios fue sede de la etapa selectiva...</p>
                                    <input type="button" class="btn btn-success" value="Ver noticia ..."/>
                                </div>
                                <div class="col-md-6">
                                    <img src="/WebUTTABv3/viewActividadUniversitariaIMG.action?id=329" alt="Turismo: potencial del desarrollo socioeconómico" class="img-responsive">
                                    <h2 class="visible-md visible-lg text-muted">Turismo: potencial del desarrollo socioeconómico</h2>
                                    <h2 class="visible-xs visible-sm  text-center text-muted">Turismo: potencial del desarrollo socioeconómico</h2>
                                    <p class="text-justify">El Día Mundial del Turismo se conmemora ...</p>
                                    <input type="button" class="btn btn-success" value="Ver noticia ..."/>
                                </div>
                                <div class="col-md-6">
                                    <img src="/WebUTTABv3/viewActividadUniversitariaIMG.action?id=328" alt="Bienestar comunitario a través de proyectos sociales" class="img-responsive">
                                    <h2 class="visible-md visible-lg text-muted">Bienestar comunitario a través de proyectos sociales</h2>
                                    <h2 class="visible-xs visible-sm  text-center text-muted">Bienestar comunitario a través de proyectos sociales</h2>
                                    <p class="text-justify">La Secretaría de Vinculación llevó a cabo ...</p>
                                    <input type="button" class="btn btn-success" value="Ver noticia ..."/>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <!-- Actividades Universitarias -->
            <!-- Banners -->
            <!--<section class="row">
                <div class="col-md-12">
                    <div class="row">
                        <div class="col-md-6">
                            <img src="img/banners/CISCO.jpg" alt="CISCO"/>
                        </div>
                        <div class="col-md-6">
                            <img src="img/banners/btn_registro-lic.png" alt="REGISTRO PARA EGRESADOS DE TSU, CONTINUIDAD DE ESTUDIOS, ENE-ABR 2016 " class="img-responsive"/>
                        </div>
                        <div class="clearfix visible-md visible-lg"></div>
                        <div class="col-md-3">
                            <img src="img/banners/boton sintonia.jpg" alt="Sintonía UTTAB" class="img-responsive"/>
                        </div>
                        <div class="col-md-3">
                            <img src="img/banners/boton emprendedores.jpg" alt="Centro de Incubación y Desarrollo de Negocios" class="img-responsive"/>
                        </div>
                        <div class="col-md-3">
                            <img src="img/banners/boton saiiut.jpg" alt="SAIIUT" class="img-responsive"/>
                        </div>
                        <div class="col-md-3">
                            <img src="img/banners/UT VIRTUAL2.png" alt="UT Virtual" class="img-responsive"/>
                        </div>
                        <div class="clearfix visible-md visible-lg"></div>
                        
                        <div class="col-md-3">
                            <img src="img/banners/banner_gaceta.png" alt="Gaceta UTTAB Ejemplar Nº 53" class="img-responsive"/>
                        </div>
                        <div class="col-md-3">
                            <img src="img/banners/banner_SIIE.jpg" alt="Sistema Institucional de Información y Estadística" class="img-responsive"/>
                        </div>
                        <div class="col-md-3">
                            <img src="img/banners/banner_cisco.png" alt="CENTRO DE ENTRENAMIENTO Y SOPORTE CISCO" class="img-responsive"/>
                        </div>
                        <div class="col-md-3">
                            <img src="img/banners/banner_ciut.png" alt="CIUT | Centro de idiomas UT" class="img-responsive"/>
                        </div>
                        <div class="clearfix visible-md visible-lg"></div>
                    </div>
                </div>
                <div class="clearfix visible-md"></div>
            </section>-->
            <!-- Banners -->
        </div>
        <script src="js/JQuery/jquery-1.11.3.min.js"></script>
        <script src="twbs/bootstrap-3.3.5/js/bootstrap.min.js"></script>
    </body>
</html>
