<%-- 
    Document   : input
    Created on : 27-may-2015, 11:16:09
    Author     : Weiss
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" session="false"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<%@taglib uri="/struts-jquery-tags" prefix="sj"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="UTF-8">
        <title>UTTAB &#124; Control Sistemas | Eventos(s)</title>
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="shortcut icon" href="${pageContext.request.contextPath}/favicon.ico" type="image/x-icon">
        <link rel="icon" href="${pageContext.request.contextPath}/favicon.ico" type="image/x-icon">
        <!-- Bootstrap Core CSS -->
        <link href="${pageContext.request.contextPath}/twbs/plugins/startbootstrap-sb-admin-2-1.0.5/bower_components/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet"/>
        <!-- MetisMenu CSS -->
        <link href="${pageContext.request.contextPath}/twbs/plugins/startbootstrap-sb-admin-2-1.0.5/bower_components/metisMenu/dist/metisMenu.min.css" rel="stylesheet"/>
        <!-- DataTables CSS -->
        <link href="${pageContext.request.contextPath}/twbs/plugins/startbootstrap-sb-admin-2-1.0.5/bower_components/datatables-plugins/integration/bootstrap/3/dataTables.bootstrap.css" rel="stylesheet">
        <!-- DataTables Responsive CSS -->
        <link href="${pageContext.request.contextPath}/twbs/plugins/startbootstrap-sb-admin-2-1.0.5/bower_components/datatables-responsive/css/dataTables.responsive.css" rel="stylesheet">
        <!-- Custom CSS -->
        <link href="${pageContext.request.contextPath}/twbs/plugins/startbootstrap-sb-admin-2-1.0.5/dist/css/sb-admin-2.css" rel="stylesheet"/>
        <!-- Custom Fonts -->
        <link href="${pageContext.request.contextPath}/twbs/plugins/startbootstrap-sb-admin-2-1.0.5/bower_components/font-awesome/css/font-awesome.min.css" rel="stylesheet"/>
        <!-- jQuery -->
        <sj:head locale="es" jqueryui="true"/>
        <!-- Bootstrap Core JavaScript -->
        <script src="${pageContext.request.contextPath}/twbs/plugins/startbootstrap-sb-admin-2-1.0.5/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
        <!-- Metis Menu Plugin JavaScript -->
        <script src="${pageContext.request.contextPath}/twbs/plugins/startbootstrap-sb-admin-2-1.0.5/bower_components/metisMenu/dist/metisMenu.min.js"></script>
        <!-- DataTables JavaScript -->
        <script src="${pageContext.request.contextPath}/twbs/plugins/startbootstrap-sb-admin-2-1.0.5/bower_components/datatables/media/js/jquery.dataTables.min.js"></script>
        <script src="${pageContext.request.contextPath}/twbs/plugins/startbootstrap-sb-admin-2-1.0.5/bower_components/datatables-plugins/integration/bootstrap/3/dataTables.bootstrap.min.js"></script>
        <!-- Custom Theme JavaScript -->
        <script src="${pageContext.request.contextPath}/twbs/plugins/startbootstrap-sb-admin-2-1.0.5/dist/js/sb-admin-2.js"></script>
        <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
            <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
            <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
        <![endif]-->
        <style>
            table tbody tr td:first-child { width: 3%;}
            table tbody tr td:nth-child(2) { width: 30%;}
            table tbody tr td:nth-child(5) { width: 25%;}
        </style>
        <script>
            $(document).ready(function () {
                $('#eventoList').dataTable({
                    responsive: true,
                    "order": [[0, "desc"]],
                    "fnDrawCallback": function (oSettings) {
                        $('[data-toggle="popover"]').popover({placement: 'top', html: true, trigger: 'hover'});
                    }
                });

                /* Botón Nuevo */
                $("#btnReset").click(function () {
                    location.href = "input.action";
                });

                /* Limpiar la ventana modal para volver a usar*/
                $('body').on('hidden.bs.modal', '.modal', function () {
                    $(this).removeData('bs.modal');
                });

            });
        </script>
    </head>
    <body>
        <div id="wrapper">
            <jsp:include page="../includeMenu.jsp?q=eventos" flush="true"  />
            <div id="page-wrapper">
                <div class="row">
                    <div class="col-lg-12">
                        <h1 class="page-header">Evento(s)</h1>
                    </div>
                    <!-- /.col-lg-12 -->
                </div>
                <div class="row" >
                    <div class="col-lg-12">
                        <s:form action="save" namespace="/SistemasAdmin/eventos" id="frmEvento" method="post" role="form">
                            <div class="form-group">
                                <label for="txtIDEvento">* ID Evento:</label>
                                <s:textfield name="id" value="%{evento.id != 0 ? evento.id:''}" id="txtIDEvento" size="3" maxLength="3" readonly="true"  tabindex="1" />
                            </div>
                            <div class="form-group">
                                <label for="txtNombre">Nombre:</label>
                                <s:textfield name="nombre" value="%{evento.nombre}" id="txtNombre" size="100" maxLength="200"  tabindex="2"/>
                            </div>
                            <div class="form-group">
                                <label for="txtFechaRealizacion">Fecha realización:</label>
                                <sj:datepicker name="fecha_realizacion" id="txtFechaRealizacion" value="%{evento.fecha_realizacion}" label="Select a Date" displayFormat="d MM yy" readonly="true" tabindex="3" size="20" maxlength="17" />
                            </div>
                            <div class="form-group">
                                <label for="txtFechaPublicacion">Fecha Publicación:</label>
                                <sj:datepicker name="fecha_publicacion" id="txtFechaPublicacion" value="%{evento.id != 0 ? evento.fecha_publicacion: 'today'}" label="Select a Date" displayFormat="d MM yy" readonly="true" tabindex="4" size="20" maxlength="17"  />
                            </div>
                            <div class="form-group">
                                <label for="txtRutaIMG1">Ruta imagen 1:</label>
                                <s:textfield name="img1" value="%{evento.id != 0 ? evento.img1:'NULL'}" id="txtRutaIMG1" size="42" maxLength="41" readonly="true"  tabindex="5"/>
                            </div>
                            <div class="form-group">
                                <label for="txtRutaIMG2">Ruta imagen 2:</label>
                                <s:textfield name="img2" value="%{evento.id != 0 ? evento.img2:'NULL'}" id="txtRutaIMG2" size="42" maxLength="41" readonly="true"  tabindex="6"/>
                            </div>
                            <div class="form-group">
                                <label for="txtRutaIMG3">Ruta imagen 3:</label>
                                <s:textfield name="img3" value="%{evento.id != 0 ? evento.img3:'NULL'}" id="txtRutaIMG3" size="42" maxLength="41" readonly="true"  tabindex="7"/>
                            </div>
                            <div class="form-group">
                                <label for="txtRutaIMG4">Ruta imagen 4:</label>
                                <s:textfield name="img4" value="%{evento.id != 0 ? evento.img4:'NULL'}" id="txtRutaIMG4" size="42" maxLength="41" readonly="true"  tabindex="8"/>
                            </div>
                            <div class="form-group">
                                <label for="txtEfectos2">Efecto imagen 2:</label>
                                <s:textfield name="efectos2" value="%{evento.id != 0 ? evento.efectos2:'durationin: 2300; easingin: easeOutQuad; slidedirection: right; delayin: 1500'}" id="txtEfectos2" size="85" maxLength="85" tabindex="9"/>
                            </div>
                            <div class="form-group">
                                <label for="txtEfectos3">Efecto imagen 3:</label>
                                <s:textfield name="efectos3" value="%{evento.id != 0 ? evento.efectos3:'durationin: 2500; easingin: easeOutQuad; slidedirection: left; delayin: 1800'}" id="txtEfectos3" size="85" maxLength="85" tabindex="10"/>
                            </div>
                            <div class="form-group">
                                <label for="txtEfectos4">Efecto imagen 4:</label>
                                <s:textfield name="efectos4" value="%{evento.id != 0 ? evento.efectos4:'durationin: 2500; easingin: easeOutQuad; slidedirection: top; delayin: 1800'}" id="txtEfectos4" size="85" maxLength="85" tabindex="11"/>
                            </div>
                            <div class="form-group">
                                <label for="txtRutaPDF">Ruta pdf:</label>
                                <s:textfield name="pdf" value="%{evento.id != 0 ? evento.pdf:'NULL'}" id="txtRutaPDF" size="55" maxLength="51" readonly="true"  tabindex="12"/>
                            </div>
                            <div class="form-group">
                                <label for="txtLink">Link:</label>
                                <s:textfield name="link" value="%{evento.id != 0 ? evento.link:'NULL'}" id="txtLink" size="100" maxLength="200"  tabindex="13"/>
                            </div>
                            <div class="checkbox">
                                <label>
                                    <s:checkbox  name="activo" id="cbxActivo" tabindex="10" value="%{evento.activo}"/>
                                    Activo
                                </label>
                            </div>
                            <s:submit id="btnReset" value="Nuevo" cssClass="btn btn-md btn-success" tabindex="14" onclick="return false;"/>
                            <s:submit id="btnGrabar" value="Grabar" cssClass="btn btn-md btn-primary" tabindex="15"/>
                        </s:form>
                        <br/>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-12">
                        <s:if test="hasActionErrors()">
                            <div class="alert alert-danger"><s:actionerror/></div>
                        </s:if>
                        <s:if test="hasActionMessages()">
                            <div class="alert alert-success"><s:actionmessage/></div>
                        </s:if>
                    </div>
                </div>
                <s:if test="eventoList.size() > 0">
                    <div class="row">
                        <div class="col-lg-12">
                            <!--<div class="panel-heading">
                                <h2>Evento(s)</h2>
                            </div>-->
                            <div class="panel-body">
                                <div class="dataTable_wrapper">
                                    <table class="table table-striped table-bordered table-hover" id="eventoList">
                                        <thead>
                                            <tr>
                                                <th>ID Evento</th>
                                                <th>Nombre</th>
                                                <th>Fecha de realización</th>
                                                <th>Fecha de publicación</th>
                                                <th>Imagenes</th>
                                                <th>PDF</th>
                                                <th>Link</th>
                                                <th>Activo</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <s:iterator value="eventoList" status="eventoStatus">
                                                <tr>
                                                    <td> 
                                                        <s:url id="editURL" action="edit" namespace="/SistemasAdmin/eventos"><s:param name="id" value="%{id}"></s:param></s:url>
                                                        <s:a href="%{editURL}"> <s:property value="id" /></s:a>
                                                        </td>
                                                        <td><s:property value="nombre" /></td>
                                                    <td><s:property value="fecha_realizacion" /></td>
                                                    <td><s:property value="fecha_publicacion" /></td>
                                                    <td>
                                                        <s:if test="img1.equalsIgnoreCase('NULL')">
                                                            <s:url id="uploadIMG1" action="form_upload_img" namespace="/SistemasAdmin/eventos" var="uploadIMG1"><s:param name="id" value="%{id}"></s:param></s:url>
                                                            <a href="javascript:void(0);" data-toggle="modal" data-remote="<s:property value="#uploadIMG1"/>&num=1" data-target="#mUploadFile">Subir imagen 1</a><br/>
                                                        </s:if>
                                                        <s:else>
                                                            <s:url id="img1URL" namespace="" action="viewEventoIMG" var="img1URL"><s:param name="id" value="%{id}"></s:param><s:param name="num" value="1"></s:param></s:url>
                                                            <span class="fa fa-file-image-o" data-toggle="popover" data-title="<s:property value="nombre"/>" data-content="<img src='<s:property value="#img1URL"/>&tpm=<%= System.currentTimeMillis() / 1000L%>' alt='<s:property value="nombre"/>' class='img-responsive'/>"></span>
                                                            <!-- SE INTENTO MANDA EL PARAMETRO "num" DE LA SIGUIENTE FORMA <s:param name="num" value="1"></s:param> PERO NO LLEGABA DE MANERA CORRECTA EL PARAMETRO CUANDO ERA INYECTADO POR AJAX, LLEGABA COMO &amp;num=1-->
                                                                <!-- ASI QUE LA PROPIEDAD "data-remote" SE LE TUVO QUE CONCATENAR &num=1-->
                                                            <s:url id="uploadIMG1" action="form_upload_img" namespace="/SistemasAdmin/eventos" var="uploadIMG1"><s:param name="id" value="%{id}"></s:param></s:url>
                                                            <a href="javascript:void(0);" data-toggle="modal" data-remote="<s:property value="#uploadIMG1"/>&num=1" data-target="#mUploadFile">Cambiar imagen 1</a><br/>
                                                        </s:else>

                                                        <s:if test="img2.equalsIgnoreCase('NULL')">
                                                            <s:url id="uploadIMG2" action="form_upload_img" namespace="/SistemasAdmin/eventos" var="uploadIMG2"><s:param name="id" value="%{id}"></s:param></s:url>
                                                            <a href="javascript:void(0);" data-toggle="modal" data-remote="<s:property value="#uploadIMG2"/>&num=2" data-target="#mUploadFile">Subir imagen 2</a><br/>
                                                        </s:if>
                                                        <s:else>
                                                            <s:url id="img2URL" namespace="" action="viewEventoIMG" var="img2URL"><s:param name="id" value="%{id}"></s:param><s:param name="num" value="2"></s:param></s:url>
                                                            <span class="fa fa-file-image-o" data-toggle="popover" data-title="<s:property value="nombre"/>" data-content="<img src='<s:property value="#img2URL"/>&tpm=<%= System.currentTimeMillis() / 1000L%>' alt='<s:property value="nombre"/>' class='img-responsive'/>"></span>
                                                            <!-- SE INTENTO MANDA EL PARAMETRO "num" DE LA SIGUIENTE FORMA <s:param name="num" value="2"></s:param> PERO NO LLEGABA DE MANERA CORRECTA EL PARAMETRO CUANDO ERA INYECTADO POR AJAX, LLEGABA COMO &amp;num=1-->
                                                                <!-- ASI QUE LA PROPIEDAD "data-remote" SE LE TUVO QUE CONCATENAR &num=2-->
                                                            <s:url id="uploadIMG2" action="form_upload_img" namespace="/SistemasAdmin/eventos" var="uploadIMG2"><s:param name="id" value="%{id}"></s:param></s:url>
                                                            <a href="javascript:void(0);" data-toggle="modal" data-remote="<s:property value="#uploadIMG2"/>&num=2" data-target="#mUploadFile">Cambiar imagen 2</a><br/>
                                                        </s:else>

                                                        <s:if test="img3.equalsIgnoreCase('NULL')">
                                                            <s:url id="uploadIMG3" action="form_upload_img" namespace="/SistemasAdmin/eventos" var="uploadIMG3"><s:param name="id" value="%{id}"></s:param></s:url>
                                                            <a href="javascript:void(0);" data-toggle="modal" data-remote="<s:property value="#uploadIMG3"/>&num=3" data-target="#mUploadFile">Subir imagen 3</a><br/>
                                                        </s:if>
                                                        <s:else>
                                                            <s:url id="img3URL" namespace="" action="viewEventoIMG" var="img3URL"><s:param name="id" value="%{id}"></s:param><s:param name="num" value="3"></s:param></s:url>
                                                            <span class="fa fa-file-image-o" data-toggle="popover" data-title="<s:property value="nombre"/>" data-content="<img src='<s:property value="#img3URL"/>&tpm=<%= System.currentTimeMillis() / 1000L%>' alt='<s:property value="nombre"/>' class='img-responsive'/>"></span>
                                                            <!-- SE INTENTO MANDA EL PARAMETRO "num" DE LA SIGUIENTE FORMA <s:param name="num" value="3"></s:param> PERO NO LLEGABA DE MANERA CORRECTA EL PARAMETRO CUANDO ERA INYECTADO POR AJAX, LLEGABA COMO &amp;num=1-->
                                                                <!-- ASI QUE LA PROPIEDAD "data-remote" SE LE TUVO QUE CONCATENAR &num=3-->
                                                            <s:url id="uploadIMG3" action="form_upload_img" namespace="/SistemasAdmin/eventos" var="uploadIMG3"><s:param name="id" value="%{id}"></s:param></s:url>
                                                            <a href="javascript:void(0);" data-toggle="modal" data-remote="<s:property value="#uploadIMG3"/>&num=3" data-target="#mUploadFile">Cambiar imagen 3</a><br/>
                                                        </s:else>

                                                        <s:if test="img4.equalsIgnoreCase('NULL') || img4.equalsIgnoreCase('')">
                                                            <s:url id="uploadIMG4" action="form_upload_img" namespace="/SistemasAdmin/eventos" var="uploadIMG4"><s:param name="id" value="%{id}"></s:param></s:url>
                                                            <a href="javascript:void(0);" data-toggle="modal" data-remote="<s:property value="#uploadIMG4"/>&num=4" data-target="#mUploadFile">Subir imagen 4</a><br/>
                                                        </s:if>
                                                        <s:else>
                                                            <s:url id="img4URL" namespace="" action="viewEventoIMG" var="img4URL"><s:param name="id" value="%{id}"></s:param><s:param name="num" value="4"></s:param></s:url>
                                                            <span class="fa fa-file-image-o" data-toggle="popover" data-title="<s:property value="nombre"/>" data-content="<img src='<s:property value="#img4URL"/>&tpm=<%= System.currentTimeMillis() / 1000L%>' alt='<s:property value="nombre"/>' class='img-responsive'/>"></span>
                                                            <!-- SE INTENTO MANDA EL PARAMETRO "num" DE LA SIGUIENTE FORMA <s:param name="num" value="4"></s:param> PERO NO LLEGABA DE MANERA CORRECTA EL PARAMETRO CUANDO ERA INYECTADO POR AJAX, LLEGABA COMO &amp;num=1-->
                                                                <!-- ASI QUE LA PROPIEDAD "data-remote" SE LE TUVO QUE CONCATENAR &num=3-->
                                                            <s:url id="uploadIMG4" action="form_upload_img" namespace="/SistemasAdmin/eventos" var="uploadIMG4"><s:param name="id" value="%{id}"></s:param></s:url>
                                                            <a href="javascript:void(0);" data-toggle="modal" data-remote="<s:property value="#uploadIMG4"/>&num=4" data-target="#mUploadFile">Cambiar imagen 4</a><br/>
                                                        </s:else>
                                                    </td>
                                                    <td>
                                                        <s:if test="pdf.equalsIgnoreCase('NULL')">
                                                            <s:url id="uploadPDFURL" action="form_upload_pdf" namespace="/SistemasAdmin/eventos" var="uploadPDFURL"><s:param name="id" value="%{id}"></s:param></s:url>
                                                            <a href="javascript:void(0);" data-toggle="modal" data-remote="<s:property value="#uploadPDFURL"/>" data-target="#mUploadFile">Subir PDF</a>
                                                        </s:if>
                                                        <s:else>
                                                            <s:url id="pdfURL" namespace="" action="viewEventoPDF" var="pdfURL"><s:param name="id" value="%{id}"></s:param></s:url>
                                                            <!--<a href="<s:property value="#pdfURL"/>" target="_blank"><img src="${pageContext.request.contextPath}/img/Files-Pdf-icon.png" alt="<s:property value="nombre"/>" title="<s:property value="nombre"/>"  class="img-responsive"/></a>-->
                                                            <a href="<s:property value="#pdfURL"/>" target="_blank"><span class="fa fa-file-pdf-o"></span></a>
                                                            <br/>
                                                            <br/>
                                                            <s:url id="uploadPDFURL" action="form_upload_pdf" namespace="/SistemasAdmin/eventos" var="uploadPDFURL"><s:param name="id" value="%{id}"></s:param></s:url>
                                                            <a href="javascript:void(0);" data-toggle="modal" data-remote="<s:property value="#uploadPDFURL"/>" data-target="#mUploadFile">Cambiar PDF</a>
                                                        </s:else>
                                                    </td>
                                                    <td><s:if test="link.equalsIgnoreCase('NULL')">NULL</s:if><s:else><a href="<s:property value="link"/>" target="_blank"><span class="fa fa-external-link"></span></a></s:else></td>
                                                    <td><s:if test="activo"><span class="fa fa-check"></span></s:if><s:else><span class="fa fa-times"></span></s:else></td>
                                                    </tr>
                                            </s:iterator>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </s:if>
                <div class="row">
                    <div class="col-md-12">
                        <div class="modal fade" id="mUploadFile" tabindex="-1" role="dialog" aria-labelledby="mUploadFileLabel" aria-hidden="true">
                            <div class="modal-dialog">
                                <div class="modal-content"></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>