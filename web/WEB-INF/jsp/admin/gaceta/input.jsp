<%-- 
    Document   : input
    Created on : 17/12/2013, 09:29:50 AM
    Author     : Weisß
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" session="false"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<%@taglib uri="/struts-jquery-tags" prefix="sj"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="UTF-8">
        <title>UTTAB &#124; Control Sistemas | Gaceta(s)</title>
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
        <script>
            $(document).ready(function () {
                $('#gacetaList').dataTable({
                    responsive: true,
                    "order": [[0, "desc"]],
                    "fnDrawCallback": function (oSettings) {
                        $('[data-toggle="popover"]').popover({placement: 'right', html: true, trigger: 'hover'});
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
            <jsp:include page="../includeMenu.jsp?q=gacetas" flush="true"  />
            <div id="page-wrapper">
                <div class="row">
                    <div class="col-lg-12">
                        <h1 class="page-header">Gaceta(s)</h1>
                    </div>
                    <!-- /.col-lg-12 -->
                </div>
                <div class="row" >
                    <div class="col-lg-12">
                        <s:form action="save" namespace="/SistemasAdmin/gaceta" id="frmGaceta" method="post" role="form">
                            <div class="form-group">
                                <label for="txtIDGaceta">* ID Gaceta:</label>
                                <s:textfield name="id" value="%{gaceta.id != 0 ? gaceta.id:''}" id="txtIDGaceta" size="3" maxLength="3" readonly="true"  tabindex="1" />
                            </div>
                            <!--<div class="form-group">
                                <label for="txtTitulo">Título del ejemplar:</label>
                            <s:textfield name="titulo_ejemplar" value="%{gaceta.id != 0 ? gaceta.titulo_ejemplar:'Ejemplar No. 00' }" id="txtTitulo" size="18" maxLength="15" cssClass="captura" tabindex="2"/>
                        </div>-->
                            <!--<div class="form-group">
                                <label for="txtSubtitulo">Subtítulo del ejemplar:</label>
                            <s:textfield name="subtitulo_ejemplar" value="%{gaceta.id != 0 ? gaceta.subtitulo_ejemplar:'Órgano informativo de la Universidad Tecnológica de Tabasco' }" id="txtSubtitulo" size="60" maxLength="60" cssClass="captura" tabindex="3"/>
                        </div>-->
                            <div class="form-group">
                                <label for="txtFecha">Fecha del ejemplar:</label>
                                <sj:datepicker name="fecha_ejemplar" id="txtFecha" value="%{gaceta.fecha_ejemplar}" label="Select a Date" displayFormat="d M yy" readonly="true" tabindex="4" size="12" maxlength="12" />
                            </div>
                            <div class="form-group">
                                <label for="txtRutaIMG">Ruta imagen:</label>
                                <s:textfield name="img" value="%{gaceta.id != 0 ? gaceta.img:'NULL'}" id="txtRutaIMG" size="42" maxLength="45" readonly="true" cssClass="captura" tabindex="5"/>
                            </div>
                            <div class="form-group">
                                <label for="txtRutaPDF">Ruta pdf:</label>
                                <s:textfield name="pdf" value="%{gaceta.id != 0 ? gaceta.pdf:'NULL'}" id="txtRutaPDF" size="56" maxLength="56" readonly="true" cssClass="captura" tabindex="6"/>
                            </div>
                            <div class="checkbox">
                                <label>
                                    <s:checkbox  name="activo" id="cbxActivo" tabindex="7" value="%{gaceta.activo}"/>
                                    Activo
                                </label>
                            </div>
                            <s:submit id="btnReset" value="Nuevo" cssClass="btn btn-md btn-success" tabindex="8" onclick="return false;"/>
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
                <s:if test="gacetaList.size() > 0">
                    <div class="row">
                        <div class="col-lg-12">
                            <!--<div class="panel-heading">
                                <h2>Gaceta(s)</h2>
                            </div>-->
                            <div class="panel-body">
                                <div class="dataTable_wrapper">
                                    <table class="table table-striped table-bordered table-hover" id="gacetaList">
                                        <thead>
                                            <tr>
                                                <th>ID Gaceta</th>
                                                <!--<th>Título del ejemplar</th>-->
                                                <th>Fecha del ejemplar</th>
                                                <th>Imagen</th>
                                                <th>PDF</th>
                                                <th>Activo</th>
                                                <!--<th>Editar</th>-->
                                                <!--<th>Eliminar</th>-->
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <s:iterator value="gacetaList" status="gacetaStatus">
                                                <tr>
                                                    <td> 
                                                        <s:url id="editURL" action="edit" namespace="/SistemasAdmin/gaceta"><s:param name="id" value="%{id}"></s:param></s:url>
                                                        <s:a href="%{editURL}"> <s:property value="id" /></s:a>
                                                    </td>
                                                        <!--<td><s:property value="titulo_ejemplar" /></td>-->
                                                    <td><s:property value="fecha_ejemplar" /></td>
                                                    <td>
                                                        <s:if test="img.equalsIgnoreCase('NULL')">
                                                            <s:url id="uploadIMGURL" action="form_upload_img" namespace="/SistemasAdmin/gaceta" var="uploadIMGURL"><s:param name="id" value="%{id}"></s:param></s:url>
                                                            <a href="javascript:void(0);" data-toggle="modal" data-remote="<s:property value="#uploadIMGURL"/>" data-target="#mUploadFile">Subir imagen</a>
                                                        </s:if>
                                                        <s:else>
                                                            <s:url id="imgURL" namespace="" action="viewGacetaIMG" var="imgURL"><s:param name="id" value="%{id}"></s:param></s:url>
                                                            <!--<img src="${pageContext.request.contextPath}/img/File-JPG-icon.png" alt="<s:property value="titulo_ejemplar"/>" title="<s:property value="titulo_ejemplar"/>" data-toggle="popover" data-content="<img src='<s:property value="#imgURL"/>&tpm=<%= System.currentTimeMillis() / 1000L%>' alt='<s:property value="titulo_ejemplar"/>' class='img-responsive'/>" class="img-responsive" style="cursor:pointer;"/>-->
                                                            <span class="fa fa-file-image-o" data-toggle="popover" data-title="<s:property value="titulo_ejemplar"/>" data-content="<img src='<s:property value="#imgURL"/>&tpm=<%= System.currentTimeMillis() / 1000L%>' alt='<s:property value="nombre"/>' class='img-responsive'/>"></span>
                                                            <br/>
                                                            <br/>
                                                            <s:url id="uploadIMGURL" action="form_upload_img" namespace="/SistemasAdmin/gaceta" var="uploadIMGURL"><s:param name="id" value="%{id}"></s:param></s:url>
                                                            <a href="javascript:void(0);" data-toggle="modal" data-remote="<s:property value="#uploadIMGURL"/>" data-target="#mUploadFile">Cambiar imagen</a>
                                                        </s:else>
                                                    </td>
                                                    <td>
                                                        <s:if test="pdf.equalsIgnoreCase('NULL')">
                                                            <s:url id="uploadPDFURL" action="form_upload_pdf" namespace="/SistemasAdmin/gaceta" var="uploadPDFURL"><s:param name="id" value="%{id}"></s:param></s:url>
                                                            <a href="javascript:void(0);" data-toggle="modal" data-remote="<s:property value="#uploadPDFURL"/>" data-target="#mUploadFile">Subir PDF</a>
                                                        </s:if>
                                                        <s:else>
                                                            <s:url id="pdfURL" namespace="" action="viewGacetaPDF" var="pdfURL"><s:param name="id" value="%{id}"></s:param></s:url>
                                                            <!--<a href="<s:property value="#pdfURL"/>" target="_blank"><img src="${pageContext.request.contextPath}/img/Files-Pdf-icon.png" alt="<s:property value="titulo_ejemplar"/>" title="<s:property value="titulo_ejemplar"/>"  class="img-responsive"/></a>-->
                                                            <a href="<s:property value="#pdfURL"/>" target="_blank"><span class="fa fa-file-pdf-o"></span></a>
                                                            <br/>
                                                            <br/>
                                                            <s:url id="uploadPDFURL" action="form_upload_pdf" namespace="/SistemasAdmin/gaceta" var="uploadPDFURL"><s:param name="id" value="%{id}"></s:param></s:url>
                                                            <a href="javascript:void(0);" data-toggle="modal" data-remote="<s:property value="#uploadPDFURL"/>" data-target="#mUploadFile">Cambiar PDF</a>
                                                        </s:else>
                                                    </td>
                                                    <td><s:if test="activo"><span class="fa fa-check"></span></s:if><s:else><span class="fa fa-times"></span></s:else></td>
                                                        <!--<td align="center">
                                                    <s:url id="editURL" action="edit" namespace="/SistemasAdmin/gaceta" var="editURL"><s:param name="id" value="%{id}"></s:param></s:url>
                                                    <a href="<s:property value="#editURL"/>"><img src="${pageContext.request.contextPath}/img/icon_pencil-edit.png"/></a>
                                                </td>-->
                                                    <!--<td align="center">
                                                    <s:url id="deleteURL" action="delete" namespace="/SistemasAdmin/gaceta" var="deleteURL"><s:param name="id" value="%{id}"></s:param></s:url>
                                                    <a href="javascript:void(0);" onclick="if (confirm('¿Esta seguro de eliminar <s:property value="titulo_ejemplar" /> (<s:property value="fecha_ejemplar" />)?')) {
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