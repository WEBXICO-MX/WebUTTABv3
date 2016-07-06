<%-- 
    Document   : input
    Created on : 27-may-2015, 11:16:01
    Author     : Weiss
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" session="false"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<%@taglib uri="/struts-jquery-tags" prefix="sj"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="UTF-8">
        <title>UTTAB &#124; Control Sistemas | Aviso(s)</title>
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="shortcut icon" href="${pageContext.request.contextPath}/favicon.ico" type="image/x-icon">
        <link rel="icon" href="${pageContext.request.contextPath}/favicon.ico" type="image/x-icon">
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
                $('#avisoList').dataTable({
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
            <jsp:include page="../includeMenu.jsp?q=avisos" flush="true"  />
            <div id="page-wrapper">
                <div class="row">
                    <div class="col-lg-12">
                        <h1 class="page-header">Aviso(s)</h1>
                    </div>
                    <!-- /.col-lg-12 -->
                </div>
                <div class="row" >
                    <div class="col-lg-12">
                        <s:form action="save" namespace="/SistemasAdmin/avisos" id="frmAviso" method="post" role="form">
                            <div class="form-group">
                                <label for="txtIDAviso">* ID Aviso:</label>
                                <s:textfield name="id" value="%{aviso.id != 0 ? aviso.id:''}" id="txtIDAviso" size="3" maxLength="3" readonly="true"  tabindex="1" />
                            </div>
                            <div class="form-group">
                                <label for="txtNombre">Nombre:</label>
                                <s:textfield name="nombre" value="%{aviso.nombre}" id="txtNombre" size="80" maxLength="200" cssClass="captura" tabindex="2"/>
                            </div>
                            <div class="form-group">
                                <label for="txtFechaRealizacion">Fecha realización:</label>
                                <sj:datepicker name="fecha_realizacion" id="txtFechaRealizacion" value="%{aviso.fecha_realizacion}" label="Select a Date" displayFormat="d MM yy" readonly="true" tabindex="3" size="20" maxlength="17" />
                            </div>
                            <div class="form-group">
                                <label for="txtFechaPublicacion">Fecha Publicación:</label>
                                <sj:datepicker name="fecha_publicacion" id="txtFechaPublicacion" value="%{aviso.id != 0 ? aviso.fecha_publicacion: 'today'}" label="Select a Date" displayFormat="d MM yy" readonly="true" tabindex="4" size="20" maxlength="17" />
                            </div>
                            <div class="form-group">
                                <label for="txtLink">Link:</label>
                                <s:textfield name="link" value="%{aviso.id != 0 ? aviso.link:'NULL'}" id="txtLink" size="80" maxLength="150" cssClass="captura" tabindex="5"/>
                            </div>
                            <div class="form-group">
                                <label for="txtRutaIMG">Ruta imagen:</label>
                                <s:textfield name="img" value="%{aviso.id != 0 ? aviso.img:'NULL'}" id="txtRutaIMG" size="42" maxLength="41" readonly="true" cssClass="captura" tabindex="6"/>
                            </div>
                            <div class="form-group">
                                <label for="txtRutaPDF">Ruta pdf:</label>
                                <s:textfield name="pdf" value="%{aviso.id != 0 ? aviso.pdf:'NULL'}" id="txtRutaPDF" size="55" maxLength="51" readonly="true" cssClass="captura" tabindex="7"/>
                            </div>
                            <div class="checkbox">
                                <label>
                                    <s:checkbox  name="activo" id="cbxActivo" tabindex="8" value="%{aviso.activo}"/>
                                    Activo
                                </label>
                            </div>
                            <s:submit id="btnReset" value="Nuevo" cssClass="btn btn-md btn-success" tabindex="9" onclick="return false;"/>
                            <s:submit id="btnGrabar" value="Grabar" cssClass="btn btn-md btn-primary" tabindex="10"/>
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
                <s:if test="avisoList.size() > 0">
                    <div class="row">
                        <div class="col-lg-12">
                            <!--<div class="panel-heading">
                                <h2>Aviso(s)</h2>
                            </div>-->
                            <div class="panel-body">
                                <div class="dataTable_wrapper">
                                    <table class="table table-striped table-bordered table-hover" id="avisoList">
                                        <thead>
                                            <tr>
                                                <th>ID Aviso</th>
                                                <th>Nombre</th>
                                                <th>Fecha de realización</th>
                                                <th>Fecha de publicación</th>
                                                <th>Link</th>
                                                <th>Imagen</th>
                                                <th>PDF</th>
                                                <th>Activo</th>
                                                <!--<th>Editar</th>-->
                                                <!--<th>Eliminar</th>-->
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <s:iterator value="avisoList" status="avisoStatus">
                                                <tr>
                                                    <td> 
                                                        <s:url id="editURL" action="edit" namespace="/SistemasAdmin/avisos"><s:param name="id" value="%{id}"></s:param></s:url>
                                                        <s:a href="%{editURL}"> <s:property value="id" /></s:a>
                                                    </td>
                                                    <td><s:property value="nombre" /></td>
                                                    <td><s:property value="fecha_realizacion" /></td>
                                                    <td><s:property value="fecha_publicacion" /></td>
                                                    <td><s:property value="link" /></td>
                                                    <td>
                                                        <s:if test="img.equalsIgnoreCase('NULL')">
                                                            <s:url id="uploadIMGURL" action="form_upload_img" namespace="/SistemasAdmin/avisos" var="uploadIMGURL"><s:param name="id" value="%{id}"></s:param></s:url>
                                                            <a href="javascript:void(0);" data-toggle="modal" data-remote="<s:property value="#uploadIMGURL"/>" data-target="#mUploadFile">Subir imagen</a>
                                                        </s:if>
                                                        <s:else>
                                                            <s:url id="imgURL" namespace="" action="viewAvisoIMG" var="imgURL"><s:param name="id" value="%{id}"></s:param></s:url>
                                                            <!--<img src="${pageContext.request.contextPath}/img/File-JPG-icon.png" alt="<s:property value="nombre"/>" title="<s:property value="nombre"/>" data-toggle="popover" data-content="<img src='<s:property value="#imgURL"/>&tpm=<%= System.currentTimeMillis() / 1000L%>' alt='<s:property value="nombre"/>' class='img-responsive'/>" class="img-responsive" style="cursor:pointer;"/>-->
                                                            <span class="fa fa-file-image-o" data-toggle="popover" data-title="<s:property value="nombre"/>" data-content="<img src='<s:property value="#imgURL"/>&tpm=<%= System.currentTimeMillis() / 1000L%>' alt='<s:property value="nombre"/>' class='img-responsive'/>"></span>
                                                            <br/>
                                                            <br/>
                                                            <s:url id="uploadIMGURL" action="form_upload_img" namespace="/SistemasAdmin/avisos" var="uploadIMGURL"><s:param name="id" value="%{id}"></s:param></s:url>
                                                            <a href="javascript:void(0);" data-toggle="modal" data-remote="<s:property value="#uploadIMGURL"/>" data-target="#mUploadFile">Cambiar imagen</a>
                                                        </s:else>
                                                    </td>
                                                    <td>
                                                        <s:if test="pdf.equalsIgnoreCase('NULL')">
                                                            <s:url id="uploadPDFURL" action="form_upload_pdf" namespace="/SistemasAdmin/avisos" var="uploadPDFURL"><s:param name="id" value="%{id}"></s:param></s:url>
                                                            <a href="javascript:void(0);" data-toggle="modal" data-remote="<s:property value="#uploadPDFURL"/>" data-target="#mUploadFile">Subir PDF</a>
                                                        </s:if>
                                                        <s:else>
                                                            <s:url id="pdfURL" namespace="" action="viewAvisoPDF" var="pdfURL"><s:param name="id" value="%{id}"></s:param></s:url>
                                                            <a href="<s:property value="#pdfURL"/>" target="_blank"><span class="fa fa-file-pdf-o"></span></a>
                                                            <br/>
                                                            <br/>
                                                            <s:url id="uploadPDFURL" action="form_upload_pdf" namespace="/SistemasAdmin/avisos" var="uploadPDFURL"><s:param name="id" value="%{id}"></s:param></s:url>
                                                            <a href="javascript:void(0);" data-toggle="modal" data-remote="<s:property value="#uploadPDFURL"/>" data-target="#mUploadFile">Cambiar PDF</a>
                                                        </s:else>
                                                    </td>
                                                    <td><s:if test="activo"><span class="fa fa-check"></span></s:if><s:else><span class="fa fa-times"></span></s:else></td>
                                                    <!--<td align="center">
                                                        <s:url id="editURL" action="edit" namespace="/SistemasAdmin/avisos" var="editURL"><s:param name="id" value="%{id}"></s:param></s:url>
                                                        <a href="<s:property value="#editURL"/>"><img src="${pageContext.request.contextPath}/img/icon_pencil-edit.png"/></a>
                                                    </td>-->
                                                    <!--<td align="center">
                                                    <s:url id="deleteURL" action="delete" namespace="/SistemasAdmin/avisos" var="deleteURL"><s:param name="id" value="%{id}"></s:param></s:url>
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