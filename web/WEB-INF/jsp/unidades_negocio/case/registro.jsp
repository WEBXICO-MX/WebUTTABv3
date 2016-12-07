<%-- 
    Document   : registro
    Created on : 10-sep-2015, 14:43:10
    Author     : Weiss
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" session="false"%>
<%@taglib uri="/struts-tags" prefix="s" %>
<%@taglib uri="/struts-jquery-tags" prefix="sj"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <title>UTTAB &#124; Centro de Atención al Sector Energético &#124; Registro</title>
        <meta charset="UTF-8">
        <meta name="author" content="Depto. Desarrollo de sistemas UTTAB">
        <meta name="description" content="Universidad Tecnológica de Tabasco,Centro de Atención al Sector Energético, Registro">
        <meta name="keywords" content="vinculación,Centro de Atención al Sector Energético,tsu,educación,tecnologías,ingeniería,industrial,tecnológica,uttab,desarrollo,química,procesos,tabasco,universidad,servicios,gastronomía,page,comunicación,negocios,administración,aviso,proyectos,alumnos,escolar,mantenimiento,institucional,programa,competencias">
        <!--[if IE]>
        <link rel="shortcut icon"  href="${pageContext.request.contextPath}/img/favicon.ico"/> 
        <![endif]-->
        <link rel="icon" href="${pageContext.request.contextPath}/img/favicon.ico"/>
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/vinculacion2.min.css"/>
        <sj:head locale="es" jqueryui="true"/>
        <!--[if lt IE 9]>
        <link  rel="stylesheet" href="${pageContext.request.contextPath}/css/ie.min.css"/>
         <script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
        <![endif]-->
    </head>
    <body>
        <jsp:include page="/WEB-INF/jsp/includeHeader.min.jsp?origen=unidades_negocio" flush="true"  />
        <!-- Cuerpo -->
        <main>
            <section class="vinculacion_section">
                <header class="vinculacion_titulo">
                    <h2><span class="texto_resaltado">Vinculación</span> /</h2>
                    <h1>Centro de Atención al Sector Energético</h1>
                    <div class="corte"></div>
                </header>
                <article class="vinculacion_contenido">
                    <section class="vinculacion_texto">
                            <figure style="text-align: right;">
                                <s:url var="backCalendario" action="calendario">
                                <s:param name="id" value="%{c_capacitacion.capacitacion.id}"></s:param>
                                </s:url>
                                <s:a href="%{backCalendario}"><img src="${pageContext.request.contextPath}/img/unidades_negocio/case/btn_regresar.png" alt="Regresar"/></s:a>
                            </figure>
                    </section>
                    <section class="vinculacion_texto">
                        <header><h3 style="text-align: center">Registro</h3></header><br/>
                        <s:if test="hasActionMessages()">
                            <div class="alert alert-success">
                              <button type="button" class="close" data-dismiss="alert">×</button>
                                <strong><s:actionmessage/></strong>
                            </div><br/>
                            <script>
                                setTimeout(function () {
                                    window.location = "inicio.action";
                                }, 2000);
                            </script>
                        </s:if>
                        <s:else>
                            <div class="row">
                                <div class="span6 offset3">
                                    <h4>Información del curso</h4><br/>
                                    <p><span class="negritas">Tipo:</span> <s:property value="c_capacitacion.capacitacion.tipo_capacitacion.nombre"></s:property></p>
                                    <p><span class="negritas">Nombre:</span> <s:property value="c_capacitacion.capacitacion.nombre"></s:property></p>
                                    <p><span class="negritas">Fechas:</span> <span id="txtFechasCurso"></span></p><br/>
                                    <h4>Información para registro</h4><br/>
                                    <s:if test="hasActionErrors()">
                                        <div class="alert alert-error">
                                          <button type="button" class="close" data-dismiss="alert">×</button>
                                            <strong><s:actionerror/></strong>
                                        </div><br/>
                                    </s:if>
                                    <s:form action="guardarRegistro" namespace="/case" method="post" cssClass="form-horizontal">
                                        <s:hidden name="c_capacitacion.id" value="%{c_capacitacion.id}"></s:hidden>
                                        <s:hidden name="registro.calendario_capacitacion.id" value="%{c_capacitacion.id}"></s:hidden>
                                        <s:hidden name="registro.activo" value="true"></s:hidden>
                                        <div class="control-group">
                                            <label class="control-label" for="cmdTipoInscripcion">Tipo registro</label>
                                            <div class="controls">
                                              <s:select name="registro.tipo_inscripcion.id"
                                                      list="t_inscripcionList"
                                                      listKey="id"
                                                      listValue="nombre" cssClass="form-control" id="cmdTipoInscripcion" tabindex="1"
                                                      />
                                            </div>
                                        </div>
                                        <div class="control-group">
                                            <label class="control-label" for="cmdSectorProductivo">Sector productivo</label>
                                            <div class="controls">
                                              <s:select name="registro.sector_productivo.id"
                                                  list="s_productivoList"
                                                  listKey="id"
                                                  listValue="nombre" cssClass="form-control" id="cmdSectorProductivo" tabindex="2"
                                                  />
                                            </div>
                                        </div>
                                        <div class="control-group">
                                            <label class="control-label" for="txEmpresa">Institución/empresa:</label>
                                            <div class="controls">
                                                <s:textfield name="registro.nombre_empresa" id="txEmpresa" size="35" maxlength="50" tabindex="3" cssClass="input-xlarge"/>
                                            </div>
                                        </div>
                                        <div class="control-group">
                                            <label class="control-label" for="txtNombre">Nombre(s):</label>
                                            <div class="controls">
                                              <s:textfield name="registro.nombre" id="txtNombre" size="25" maxlength="50" tabindex="4" cssClass="input-xlarge"/>
                                            </div>
                                        </div>
                                        <div class="control-group">
                                            <label class="control-label" for="txtApellidoPat">Apellido paterno:</label>
                                            <div class="controls">
                                              <s:textfield name="registro.apellido_pat" id="txtApellidoPat" size="25" maxlength="50" tabindex="5"  cssClass="input-xlarge"/>
                                            </div>
                                        </div>
                                        <div class="control-group">
                                            <label class="control-label" for="txtApellidoMat">Apellido materno:</label>
                                            <div class="controls">
                                              <s:textfield name="registro.apellido_mat" id="txtApellidoMat" size="25" maxlength="50" tabindex="6" cssClass="input-xlarge"/>
                                            </div>
                                        </div>
                                        <div class="control-group">
                                            <label class="control-label" for="txtFechaNacimiento">Fecha de nacimiento:</label>
                                            <div class="controls">
                                                <sj:datepicker name="registro.fecha_nacimiento" id="txtFechaNacimiento" label="Select a Date" displayFormat="dd/mm/yy" readonly="true" tabindex="7" size="20" maxlength="17" changeMonth="true" changeYear="true" yearRange="-100:+0" cssClass="input-medium"/>
                                            </div>
                                        </div>   
                                        <div class="control-group">
                                            <div class="controls">
                                               <s:radio label="Sexo" name="registro.sexo" list="#{'M':'Hombre','F':'Mujer'}" tabindex="8" />
                                            </div>
                                        </div>
                                        <div class="control-group">
                                            <label class="control-label" for="txtEmail22">Email:</label>
                                            <div class="controls">
                                                <s:textfield name="registro.email" id="txtEmail22" size="25" maxlength="25" tabindex="10" />
                                            </div>
                                        </div>
                                        <div class="control-group">
                                            <label class="control-label" for="txtTel">Tel:</label>
                                            <div class="controls">
                                                <s:textfield name="registro.tel" id="txtTel" size="25" maxlength="25" tabindex="10" />
                                            </div>
                                        </div>
                                            <div class="control-group">
                                            <label class="control-label" for="txtCel">Cel:</label>
                                            <div class="controls">
                                                <s:textfield name="registro.cel" id="txtCel" size="25" maxlength="25" tabindex="11" />
                                            </div>
                                        </div>
                                        <s:submit id="btnReset" value="Limpiar" cssClass="btn btn-block btn-large btn-primary" tabindex="12"/>
                                        <s:submit id="btnGrabar" value="Registrarme" cssClass="btn-block btn btn-large btn-success" tabindex="13" onclick="return grabar();" />
                                    </s:form>
                                </div>
                            </div>
                        </s:else>
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
        </main>
        <!-- Cuerpo -->
        <jsp:include page="/WEB-INF/jsp/includePie.min.jsp?origen=unidades_negocio&Correo=1" flush="true" />
        <script>
            var month = ["enero", "febrero", "marzo", "abril", "mayo", "junio", "julio", "agosto", "septiembre", "octubre", "noviembre", "diciembre"];
            var mtz = <s:if test="! c_capacitacion.fechas.equalsIgnoreCase('')"><s:property value="c_capacitacion.fechas"></s:property></s:if><s:else>null</s:else>;

                function grabar()
                {
                    var valido = true;
                    var msg = "";
                    if ($("#txEmpresa").val() === "")
                    {
                        msg += "El campo nombre institución/empresa está vacío, ingréselo por favor. \n";
                        valido = false;
                    }
                    if ($("#txtNombre").val() === "")
                    {
                        msg += "El campo nombre está vacío, ingréselo por favor. \n";
                        valido = false;
                    }
                    if ($("#txtApellidoPat").val() === "")
                    {
                        msg += "El campo apellido paterno está vacío, ingréselo por favor. \n";
                        valido = false;
                    }
                    if ($("#txtApellidoMat").val() === "")
                    {
                        msg += "El campo apellido materno está vacío, ingréselo por favor. \n";
                        valido = false;
                    }
                    if ($("#txtFechaNacimiento").val() === "")
                    {
                        msg += "El campo fecha de nacimiento está vacío, ingréselo por favor. \n";
                        valido = false;
                    }
                    if ($("input:checked").length === 0)
                    {
                        msg += "No ha seleccionado un sexo. \n";
                        valido = false;
                    }

                    if ($("#txtEmail22").val() === "")
                    {
                        msg += "El campo email está vacío, ingréselo por favor. \n";
                        valido = false;
                    }
                    if ($("#txtCel").val() === "")
                    {
                        msg += "El campo cel está vacío, ingréselo por favor. \n";
                        valido = false;
                    }

                    if (!valido)
                    {
                        alert(msg);
                    }
                    return valido;
                }

                $(function () {

            <s:if test="! c_capacitacion.fechas.equalsIgnoreCase('')">
                    $("#txtFechasCurso").html(mtz[0].substring(3, 5) + "-" + mtz[mtz.length - 1].substring(3, 5) + " " + month[mtz[0].substring(0, 2) - 1].toUpperCase() + " " + mtz[0].substring(6, 10));
            </s:if>

                });
        </script>
    </body>
</html>