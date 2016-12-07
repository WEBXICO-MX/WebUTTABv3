<%-- 
    Document   : input
    Created on : 27-may-2015, 11:15:54
    Author     : Weiss
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" session="false"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<%@taglib uri="/struts-jquery-tags" prefix="sj"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="UTF-8">
        <title>UTTAB &#124; Control Sistemas | Actividad(es) Universitaria(s)</title>
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
        span.fa {
            font-size: 1.5em;
            cursor:pointer;
        }
        </style>
        <script>
            $(document).ready(function () {
                $('#actividadList').dataTable({
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
            <jsp:include page="../includeMenu.jsp?q=actividades" flush="true"  />
            <div id="page-wrapper">
                <div class="row">
                    <div class="col-lg-12">
                        <h1 class="page-header">Actividad(es) Universitaria(s)</h1>
                    </div>
                    <!-- /.col-lg-12 -->
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
                <div class="row" >
                    <div class="col-lg-12">
                        <s:form action="save" namespace="/SistemasAdmin/actividades" id="frmActividad" method="post" role="form">
                            <div class="form-group">
                                <label for="txtIDActividad">* ID Actividad Universitaria:</label>
                                <s:textfield name="id" value="%{actividad.id != 0 ? actividad.id:''}" id="txtIDActividad" size="3" maxlength="3" readonly="true"  tabindex="1" />
                            </div>
                            <div class="form-group">
                                <label for="txtNombre">Nombre:</label>
                                <s:textfield name="nombre" value="%{actividad.nombre}" id="txtNombre" size="100" maxlength="250"  tabindex="2"/>
                            </div>
                            <div class="form-group">
                                <label for="txtTextPreviewWeb">Text Preview Web:</label>
                                <s:textarea name="text_preview_web" value="%{actividad.text_preview_web}" id="txtTextPreviewWeb" cols="100" rows="7"  tabindex="3"/>
                            </div>
                            <div class="form-group">
                                <label for="txtTextPreview">Text Preview App:</label>
                                <s:textarea name="text_preview" value="%{actividad.text_preview}" id="txtTextPreview" cols="100" rows="7"  tabindex="3"/>
                            </div>
                            <div class="form-group">
                                <label for="txtTextCompleto">Text Completo:</label>
                                <s:textarea name="text_completo" value="%{actividad.text_completo}" id="txtTextCompleto" cols="100" rows="25"  tabindex="4"/>
                            </div>
                            <div class="form-group">
                                <label for="txtFechaRealizacion">Fecha realización:</label>
                                <sj:datepicker name="fecha_realizacion" id="txtFechaRealizacion" value="%{actividad.fecha_realizacion}" label="Select a Date" displayFormat="d MM yy" readonly="true" tabindex="5" size="20" maxlength="17" />
                            </div>
                            <div class="form-group">
                                <label for="txtFechaPublicacion">Fecha Publicación:</label>
                                <sj:datepicker name="fecha_publicacion" id="txtFechaPublicacion" value="%{actividad.id != 0 ? actividad.fecha_publicacion: 'today'}" label="Select a Date" displayFormat="d MM yy" readonly="true" tabindex="6" size="20" maxlength="17" />
                            </div>
                            <div class="form-group">
                                <label for="txtLink">Link:</label>
                                <s:textfield name="link" value="%{actividad.id != 0 ? actividad.link:'NULL'}" id="txtLink" size="80" maxlength="150"  tabindex="7"/>
                            </div>
                            <div class="form-group">
                                <label for="txtRutaIMG">Ruta imagen web:</label>
                                <s:textfield name="img" value="%{actividad.id != 0 ? actividad.img:'NULL'}" id="txtRutaIMG" size="30" maxlength="30" readonly="true"  tabindex="8"/>
                            </div>
                            <div class="form-group">
                                <label for="txtRutaIMGMovil">Ruta imagen app 1:</label>
                                <s:textfield name="img_movil" value="%{actividad.id != 0 ? actividad.img_movil:'NULL'}" id="txtRutaIMGMovil" size="56" maxlength="56" readonly="true"  tabindex="9"/>
                            </div>
                            <div class="form-group">
                                <label for="txtRutaIMGMovil1">Ruta imagen app 2:</label>
                                <s:textfield name="img_movil1" value="%{actividad.id != 0 ? actividad.img_movil1:'NULL'}" id="txtRutaIMGMovil1" size="56" maxlength="56" readonly="true"  tabindex="10"/>
                            </div>
                            <div class="form-group">
                                <label for="txtRutaPDF">Ruta pdf:</label>
                                <s:textfield name="pdf" value="%{actividad.id != 0 ? actividad.pdf:'NULL'}" id="txtRutaPDF" size="40" maxlength="40" readonly="true"  tabindex="11"/>
                            </div>
                            <div class="checkbox">
                                <label>
                                <s:checkbox  name="primario" id="cbxPrimario" tabindex="12" value="%{actividad.primario}"/>
                                ¿Es primario?
                                </label>
                            </div>
                            <div class="checkbox">
                                <label>
                                <s:checkbox  name="activo" id="cbxActivo" tabindex="12" value="%{actividad.activo}"/>
                                Activo
                                </label>
                            </div>
                            <s:submit id="btnReset" value="Nuevo" cssClass="btn btn-md btn-success" tabindex="13" onclick="return false;"/>
                            <s:submit id="btnGrabar" value="Grabar" cssClass="btn btn-md btn-primary" tabindex="14"/>
                        </s:form>
                        <br/>
                    </div>
                </div>
                <s:if test="actividadList.size() > 0">
                    <div class="row">
                        <div class="col-lg-12">
                            <!--<div class="panel-heading">
                                <h2>Actividad(es) Universitaria(s)</h2>
                            </div>-->
                            <div class="panel-body">
                                <div class="dataTable_wrapper">
                                    <table class="table table-striped table-bordered table-hover" id="actividadList">
                                        <thead>
                                            <tr>
                                                <th>ID Actividad Universitaria</th>
                                                <th>Nombre</th>
                                                <th>Fecha de realización</th>
                                                <th>Fecha de publicación</th>
                                                <th>Link</th>
                                                <th>Imagen Web</th>
                                                <th>Imagen App 1</th>
                                                <th>Imagen App 2</th>
                                                <th>PDF</th>
                                                <th>Primario</th>
                                                <th>Activo</th>
                                                <!--<th>Editar</th>-->
                                                <!--<th>Eliminar</th>-->
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <s:iterator value="actividadList" status="avisoStatus">
                                                <tr>
                                                    <td> 
                                                        <s:url var="editURL" action="edit" namespace="/SistemasAdmin/actividades"><s:param name="id" value="%{id}"></s:param></s:url>
                                                        <s:a href="%{editURL}"> <s:property value="id" /></s:a>
                                                        </td>
                                                        <td><s:property value="nombre" /></td>
                                                    <td><s:property value="fecha_realizacion" /></td>
                                                    <td><s:property value="fecha_publicacion" /></td>
                                                    <td><s:property value="link" /></td>
                                                    <td>
                                                        <s:if test="img.equalsIgnoreCase('NULL')">
                                                            <s:url action="form_upload_img" namespace="/SistemasAdmin/actividades" var="uploadIMGWebURL"><s:param name="id" value="%{id}"></s:param></s:url>
                                                            <a href="javascript:void(0);" data-toggle="modal" data-remote="<s:property value="#uploadIMGWebURL"/>&num=1" data-target="#mUploadFile">Subir imagen web</a>
                                                        </s:if>
                                                        <s:else>
                                                            <s:url namespace="" action="viewActividadUniversitariaIMG" var="imgWebURL"><s:param name="id" value="%{id}"></s:param><s:param name="num" value="1"></s:param></s:url>
                                                            <!--<img src="${pageContext.request.contextPath}/img/File-JPG-icon.png" alt="<s:property value="nombre"/>" title="<s:property value="nombre"/>" data-toggle="popover" data-content="<img src='<s:property value="#imgWebURL"/>&tpm=<%= System.currentTimeMillis() / 1000L%>' alt='<s:property value="nombre"/>' class='img-responsive'/>" class="img-responsive" style="cursor:pointer;"/>-->
                                                            <span class="fa fa-file-image-o" data-toggle="popover" data-title="<s:property value="nombre"/>" data-content="<img src='<s:property value="#imgWebURL"/>&tpm=<%= System.currentTimeMillis() / 1000L%>' alt='<s:property value="nombre"/>' class='img-responsive'/>"></span>
                                                            <br/>
                                                            <br/>
                                                            <s:url action="form_upload_img" namespace="/SistemasAdmin/actividades" var="uploadIMGWebURL"><s:param name="id" value="%{id}"></s:param></s:url>
                                                            <a href="javascript:void(0);" data-toggle="modal" data-remote="<s:property value="#uploadIMGWebURL"/>&num=1" data-target="#mUploadFile">Cambiar imagen web</a>
                                                        </s:else>
                                                    </td>
                                                    <td>
                                                        <s:if test="img_movil.equalsIgnoreCase('NULL')">
                                                            <s:url action="form_upload_img" namespace="/SistemasAdmin/actividades" var="uploadIMGMovilURL"><s:param name="id" value="%{id}"></s:param></s:url>
                                                            <a href="javascript:void(0);" data-toggle="modal" data-remote="<s:property value="#uploadIMGMovilURL"/>&num=2" data-target="#mUploadFile">Subir imagen app 1</a>
                                                        </s:if>
                                                        <s:else>
                                                            <s:url namespace="" action="viewActividadUniversitariaIMG" var="imgMovilURL"><s:param name="id" value="%{id}"></s:param><s:param name="num" value="2"></s:param></s:url>
                                                            <!--<img src="${pageContext.request.contextPath}/img/File-JPG-icon.png" alt="<s:property value="nombre"/>" title="<s:property value="nombre"/>" data-toggle="popover" data-content="<img src='<s:property value="#imgMovilURL"/>&tpm=<%= System.currentTimeMillis() / 1000L%>' alt='<s:property value="nombre"/>' class='img-responsive'/>" class="img-responsive" style="cursor:pointer;"/>-->
                                                            <span class="fa fa-file-image-o" data-toggle="popover" data-title="<s:property value="nombre"/>" data-content="<img src='<s:property value="#imgMovilURL"/>&tpm=<%= System.currentTimeMillis() / 1000L%>' alt='<s:property value="nombre"/>' class='img-responsive'/>"></span>
                                                            <br/>
                                                            <br/>
                                                            <s:url action="form_upload_img" namespace="/SistemasAdmin/actividades" var="uploadIMGMovilURL"><s:param name="id" value="%{id}"></s:param></s:url>
                                                            <a href="javascript:void(0);" data-toggle="modal" data-remote="<s:property value="#uploadIMGMovilURL"/>&num=2" data-target="#mUploadFile">Cambiar imagen app 1</a>
                                                        </s:else>
                                                    </td>
                                                    <td>
                                                        <s:if test="img_movil1.equalsIgnoreCase('NULL')">
                                                            <s:url action="form_upload_img" namespace="/SistemasAdmin/actividades" var="uploadIMGMovil1URL"><s:param name="id" value="%{id}"></s:param></s:url>
                                                            <a href="javascript:void(0);" data-toggle="modal" data-remote="<s:property value="#uploadIMGMovil1URL"/>&num=3" data-target="#mUploadFile">Subir imagen app 2</a>
                                                        </s:if>
                                                        <s:else>
                                                            <s:url namespace="" action="viewActividadUniversitariaIMG" var="imgMovil1URL"><s:param name="id" value="%{id}"></s:param><s:param name="num" value="3"></s:param></s:url>
                                                            <!--<img src="${pageContext.request.contextPath}/img/File-JPG-icon.png" alt="<s:property value="nombre"/>" title="<s:property value="nombre"/>" data-toggle="popover" data-content="<img src='<s:property value="#imgMovil1URL"/>&tpm=<%= System.currentTimeMillis() / 1000L%>' alt='<s:property value="nombre"/>' class='img-responsive'/>" class="img-responsive" style="cursor:pointer;"/>-->
                                                            <span class="fa fa-file-image-o" data-toggle="popover" data-title="<s:property value="nombre"/>" data-content="<img src='<s:property value="#imgMovil1URL"/>&tpm=<%= System.currentTimeMillis() / 1000L%>' alt='<s:property value="nombre"/>' class='img-responsive'/>"></span>
                                                            <br/>
                                                            <br/>
                                                            <s:url action="form_upload_img" namespace="/SistemasAdmin/actividades" var="uploadIMGMovil1URL"><s:param name="id" value="%{id}"></s:param></s:url>
                                                            <a href="javascript:void(0);" data-toggle="modal" data-remote="<s:property value="#uploadIMGMovil1URL"/>&num=3" data-target="#mUploadFile">Cambiar imagen app 2</a>
                                                        </s:else>
                                                    </td>
                                                    <td>
                                                        <s:if test="pdf.equalsIgnoreCase('NULL')">
                                                            <s:url action="form_upload_pdf" namespace="/SistemasAdmin/actividades" var="uploadPDFURL"><s:param name="id" value="%{id}"></s:param></s:url>
                                                            <a href="javascript:void(0);" data-toggle="modal" data-remote="<s:property value="#uploadPDFURL"/>" data-target="#mUploadFile">Subir PDF</a>
                                                        </s:if>
                                                        <s:else>
                                                            <s:url namespace="" action="viewActividadUniversitariaPDF" var="pdfURL"><s:param name="id" value="%{id}"></s:param></s:url>
                                                            <a href="<s:property value="#pdfURL"/>" target="_blank"><span class="fa fa-file-pdf-o"></span></a>
                                                            <br/>
                                                            <br/>
                                                            <s:url action="form_upload_pdf" namespace="/SistemasAdmin/actividades" var="uploadPDFURL"><s:param name="id" value="%{id}"></s:param></s:url>
                                                            <a href="javascript:void(0);" data-toggle="modal" data-remote="<s:property value="#uploadPDFURL"/>" data-target="#mUploadFile">Cambiar PDF</a>
                                                        </s:else>
                                                    </td>
                                                    <td><s:if test="primario"><span class="fa fa-key"></span></s:if><s:else><span class="fa fa-meh-o"></span></s:else></td>
                                                    <td><s:if test="activo"><span class="fa fa-check"></span></s:if><s:else><span class="fa fa-times"></span></s:else></td>
                                                        <!--<td align="center">
                                                    <s:url action="edit" namespace="/SistemasAdmin/actividades" var="editURL"><s:param name="id" value="%{id}"></s:param></s:url>
                                                    <a href="<s:property value="#editURL"/>"><img src="${pageContext.request.contextPath}/img/icon_pencil-edit.png"/></a>
                                                </td>-->
                                                    <!--<td align="center">
                                                    <s:url action="delete" namespace="/SistemasAdmin/actividades" var="deleteURL"><s:param name="id" value="%{id}"></s:param></s:url>
                                                    <a href="javascript:void(0);" onclick="if (confirm('¿Esta seguro de eliminar <s:property value="nombre" />')) {
                                                                location.href = '<s:property value="#deleteURL"/>'
                                                            } else {
                                                                return false;
                                                            }"><img src="${pageContext.request.contextPath}/img/Close-2-icon.png"/></a>
                                                </td>-->
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