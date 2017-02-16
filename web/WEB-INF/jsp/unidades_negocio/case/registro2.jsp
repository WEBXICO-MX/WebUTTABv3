<%-- 
    Document   : registro2
    Created on : 10-mar-2016, 13:20:26
    Author     : Weiss
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" session="false"%>
<%
    int c = request.getParameter("c") != null ? Integer.parseInt(request.getParameter("c")) : 0;
    int cc = request.getParameter("cc") != null ? Integer.parseInt(request.getParameter("cc")) : 0;
%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <title>UTTAB &#124; Centro de Atención al Sector Energético &#124; Registro</title>
        <meta charset="UTF-8">
        <meta name="author" content="Depto. Desarrollo de sistemas UTTAB">
        <meta name="description" content="Universidad Tecnológica de Tabasco,Centro de Atención al Sector Energético, Registro">
        <meta name="keywords" content="vinculación,Centro de Atención al Sector Energético,tsu,educación,tecnologías,ingeniería,industrial,tecnológica,uttab,desarrollo,química,procesos,tabasco,universidad,servicios,gastronomía,page,comunicación,negocios,administración,aviso,proyectos,alumnos,escolar,mantenimiento,institucional,programa,competencias">
        <link rel="icon" href="${pageContext.request.contextPath}/img/favicon.ico"/>
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/vinculacion3.min.css"/>
        <link href="${pageContext.request.contextPath}/js/JQuery/plugins/jquery-ui-1.10.4.custom/css/smoothness/jquery-ui-1.10.4.custom.min.css" rel="stylesheet"/>
        <!--[if lt IE 9]>
           <script src="${pageContext.request.contextPath}/bower_components/html5shiv/dist/html5shiv.min.js" type="text/javascript"></script>
       <![endif]-->
    </head>
    <body>
        <main>
            <jsp:include page="../../index3Header.min.jsp" flush="true"  />
            <section class="vinculacion_section">
                <header class="vinculacion_titulo">
                    <h2><span class="texto_resaltado">Vinculación</span> /</h2>
                    <h1>Centro de Atención al Sector Energético</h1>
                    <div class="corte"></div>
                </header>
                <article class="vinculacion_contenido">
                    <section class="vinculacion_texto">
                        <figure style="text-align: right;">
                            <a href="calendario.action?c=<%= c%>"><img src="${pageContext.request.contextPath}/img/unidades_negocio/case/btn_regresar.png" alt="Regresar"/></a>
                        </figure>
                    </section>
                    <section class="vinculacion_texto">
                        <header><h3 style="text-align: center">Registro</h3></header><br/>

                        <div class="row">
                            <div class="span6 offset3">
                                <h4>Información de la capacitación</h4><br/>
                                <p><span class="negritas">Nombre:</span> <span id="txtNombreCapacitacion"></span></p>
                                <p><span class="negritas">Fechas:</span> <span id="txtFechasCapacitacion"></span></p><br/>
                                <h4>Información para registro</h4><br/>
                                <!--  Personas -->
                                <form action="" method="post" class="form-horizontal" id="frmRegistroPersona" name="frmRegistroPersona">
                                    <div class="control-group">
                                        <label class="control-label" for="nombre">Nombre(s):</label>
                                        <div class="controls">
                                            <input type="text" name="nombre" id="nombre" size="25" maxlength="50" class="input-xlarge"/>
                                        </div>
                                    </div>
                                    <div class="control-group">
                                        <label class="control-label" for="ap_paterno">Apellido paterno:</label>
                                        <div class="controls">
                                            <input type="text" name="ap_paterno" id="ap_paterno" size="25" maxlength="50" class="input-xlarge"/>
                                        </div>
                                    </div>
                                    <div class="control-group">
                                        <label class="control-label" for="ap_materno">Apellido materno:</label>
                                        <div class="controls">
                                            <input type="text" name="ap_materno" id="ap_materno" size="25" maxlength="50" class="input-xlarge"/>
                                        </div>
                                    </div>
                                    <div class="control-group">
                                        <label class="control-label" for="fecha_nacimiento">Fecha de nacimiento:</label>
                                        <div class="controls">
                                            <input type="text" name="fecha_nacimiento" id="fecha_nacimiento" size="10" maxlength="10" class="input-medium date-picker"/>
                                            <input type="checkbox"  name="activo" id="activo" checked="checked" value="true" style="visibility: hidden;"/>
                                        </div>
                                    </div>
                                    <div class="control-group">
                                        <div class="controls">
                                            Masculino <input type="radio" name="sexo" value="M"/>
                                            Femenino<input type="radio" name="sexo" value="F"/>
                                        </div>
                                    </div>
                                    <!--<input type="button" value="Limpiar" class="btn btn-block btn-large btn-primary"/>-->
                                    <input type="submit"  value="Registrar persona" class="btn btn-block btn-large btn-success"/>
                                </form>
                                <!--  Personas -->

                                <!--  Medios de comunicación -->
                                <form action="" method="post" class="form-horizontal" id="frmRegistroMedioComunicacion" name="frmRegistroMedioComunicacion" style="display:none;">
                                    <div class="control-group">
                                        <label class="control-label" for="valor"><span id="SpanTipoMedioComunicacion">Dato:</span></label>
                                        <div class="controls">
                                            <input type="hidden" name="persona_id" id="persona_id" value="0"/>
                                            <input type="text" name="valor" id="valor" size="30" maxlength="50" class="input-xlarge"/>
                                        </div>
                                    </div>
                                    <div class="control-group">
                                        <label class="control-label" for="tipo_medio_comunicacion_id">Tipo medio de comunicación</label>
                                        <div class="controls">
                                            <select name="tipo_medio_comunicacion_id" id="tipo_medio_comunicacion_id" disabled="disabled" onchange="getMedioComunicacion(this.id);">
                                                <option value="0">----- Elija una opción -----</option>
                                            </select>
                                            <input type="checkbox"  name="activo" id="activo2" checked="checked" value="true" style="visibility: hidden;"/>
                                        </div>
                                    </div> 
                                    <!--<input type="button" value="Limpiar" class="btn btn-block btn-large btn-primary"/>-->
                                    <input type="submit"  value="Registrar medio de comunicación" class="btn btn-block btn-large btn-success"/>
                                    <a href="javascript:void(0);" onclick="seguirAdelanteConRegistroCapacitacion();" id="seguirAdelanteConRegistro" style="display: none; text-align: center; color: blue;">Seguir adelante con el registro para la capacitación &gt;&gt;&gt;</a>
                                </form>
                                <!--  Medios de comunicación -->

                                <!--  Registro capacitaciones -->
                                <form action="" method="post" class="form-horizontal" id="frmRegistroCapacitacion" name="frmRegistroCapacitacion" style="display:none;">
                                    <div class="control-group">
                                        <label class="control-label" for="activo">Tipo de inscripción</label>
                                        <div class="controls">
                                            <input type="hidden" name="persona_id" id="persona_id2" value="0"/>
                                            <input type="hidden" name="calendario_capacitacion_id" id="calendario_capacitacion_id"  value="<%= cc%>"/>
                                            <input type="hidden" name="status_id" id="status_id" value="1"/>
                                            <input type="hidden" name="fecha_registro" id="fecha_registro" value="2016-03-16T12:08:56.235-0700"/>
                                            <select name="tipo_inscripcion_id" id="tipo_inscripcion_id" disabled="disabled">
                                                <option value="0">----- Elija una opción -----</option>
                                            </select>
                                            <input type="checkbox"  name="activo" id="activo4" checked="checked" value="true" style="visibility: hidden;"/>
                                        </div>
                                    </div>
                                    <div class="control-group">
                                        <label class="control-label" for="activo">Empresa</label>
                                        <div class="controls">
                                            <select name="empresa_id" id="empresa_id" disabled="disabled" onchange="getEmpresa(this.id);">
                                                <option value="0">----- Elija una opción -----</option>
                                            </select>
                                            <a href="#myModal" data-toggle="modal" id="agregar_empresa" style="display:none; text-align: center;color:blue;">Agregar Empresa &gt;&gt;&gt;</a>
                                        </div>
                                    </div> 
                                    <!--<input type="button" value="Limpiar" class="btn btn-block btn-large btn-primary"/>-->
                                    <input type="submit"  value="Registrarme a capacitación" class="btn btn-block btn-large btn-success"/>
                                </form>
                                <!--  Registro capacitaciones -->
                                <span id="txtMensaje" style="color: blue"></span>
                            </div>
                        </div>
                        <div class="row">
                            <!-- Modal -->
                            <div id="myModal" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                                    <h3 id="myModalLabel">Agregar Empresa</h3>
                                </div>
                                <div class="modal-body">
                                    <!--  Empresa -->
                                    <form action="" method="post" class="form-horizontal" id="frmRegistroEmpresa" name="frmRegistroEmpresa">
                                        <div class="control-group">
                                            <label class="control-label" for="nombre">Nombre:</label>
                                            <div class="controls">
                                                <input type="text" name="nombre" id="nombre2" size="30" maxlength="50" class="input-xlarge"/>
                                            </div>
                                        </div>
                                        <div class="control-group">
                                            <label class="control-label" for="activo">Sector productivo</label>
                                            <div class="controls">
                                                <select name="sector_productivo_id" id="sector_productivo_id" disabled="disabled">
                                                    <option value="0">----- Elija una opción -----</option>
                                                </select>
                                                <input type="checkbox"  name="activo" id="activo3" checked="checked" value="true" style="visibility: hidden;"/>
                                            </div>
                                        </div> 
                                        <!--<input type="button" value="Limpiar" class="btn btn-block btn-large btn-primary"/>-->
                                        <input type="submit"  value="Registrar Empresa" class="btn btn-block btn-large btn-success"/>
                                    </form>
                                    <!--  Empresa -->
                                </div>
                                <div class="modal-footer">
                                    <button class="btn" data-dismiss="modal" aria-hidden="true">Close</button>
                                    <!--<button class="btn btn-primary">Save changes</button>-->
                                </div>
                            </div>
                            <!-- Modal -->
                        </div>
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
            <jsp:include page="../../index3Footer.min.jsp" flush="true"  />                                 
        </main>
        
        <script src="${pageContext.request.contextPath}/js/JQuery/plugins/jquery-ui-1.10.4.custom/js/jquery-ui-1.10.4.custom.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/twitter-bootstrap/2.2.1/js/bootstrap.min.js"></script>
        <script>
            var c = <%= c%>;
            var cc = <%= cc%>;
            var rest0 = "http://www.uttab.edu.mx/WebCASE/rest/capacitaciones/" + c;
            var rest1 = "http://www.uttab.edu.mx/WebCASE/rest/persona";
            var rest2 = "http://www.uttab.edu.mx/WebCASE/rest/tiposmedioscomunicacion";
            var rest3 = "http://www.uttab.edu.mx/WebCASE/rest/mediocomunicacion";
            var rest4 = "http://www.uttab.edu.mx/WebCASE/rest/tiposinscripciones";
            var rest5 = "http://www.uttab.edu.mx/WebCASE/rest/empresas";
            var rest6 = "http://www.uttab.edu.mx/WebCASE/rest/sectoresproductivos";
            var rest7 = "http://www.uttab.edu.mx/WebCASE/rest/registroCapacitacion";
            var rest8 = "http://www.uttab.edu.mx/WebCASE/rest/empresa";

            $.fn.serializeObject = function ()
            {
                var o = {};
                var a = this.serializeArray();
                console.log(a);
                $.each(a, function () {
                    if (o[this.name] !== undefined) {
                        if (!o[this.name].push) {
                            o[this.name] = [o[this.name]];
                        }
                        o[this.name].push(this.value || '');
                    } else {
                        if (this.name === "persona_id" || this.name === "tipo_medio_comunicacion_id" || this.name === "calendario_capacitacion_id" || this.name === "tipo_inscripcion_id" || this.name === "empresa_id" || this.name === "status_id" || this.name === "sector_productivo_id")
                        {
                            o[this.name] = {"id": this.value};
                        }
                        else
                        {
                            o[this.name] = this.value || '';
                        }
                    }
                });
                return o;
            };

            function getMedioComunicacion(id)
            {
                if (!($("#" + id + " option:selected").val() === "0"))
                {
                    $("#SpanTipoMedioComunicacion").html("Ingrese " + $("#" + id + " option:selected").text());
                }
                else
                {
                    $("#SpanTipoMedioComunicacion").html("Dato: ");
                }

            }

            function getEmpresa(id)
            {
                if ($("#" + id + " option:selected").val() === "2016")
                {
                    $("#agregar_empresa").fadeIn();
                }
                else
                {
                    $("#agregar_empresa").fadeOut();
                }
            }

            function seguirAdelanteConRegistroCapacitacion()
            {
                $.getJSON(rest4, function (data) {
                    var html3 = "<option value=\"0\">----- Elija una opción -----</option>";
                    $.each(data, function (i, val) {
                        html3 += "<option value=\"" + val.id + "\">" + val.nombre + "</option>";
                    });
                    $("#tipo_inscripcion_id").html(html3);
                    $("#tipo_inscripcion_id").prop("disabled", false);

                    $.getJSON(rest5, function (data) {
                        var html4 = "<option value=\"0\">----- Elija una opción -----</option>";
                        $.each(data, function (i, val) {
                            html4 += "<option value=\"" + val.id + "\">" + val.nombre + "</option>";
                        });
                        html4 += "<option value=\"2016\">***** NO ENCUENTRO MI EMPRESA *****</option>";
                        $("#empresa_id").html(html4);
                        $("#empresa_id").prop("disabled", false);

                        $("#frmRegistroMedioComunicacion").fadeOut();
                        $("#frmRegistroCapacitacion").fadeIn();
                    });


                });
            }

            $(document).ready(function () {
                $.ajaxSetup({cache: false});
                
                $(".date-picker").datepicker({
				yearRange : "-70:+0",
				changeMonth : true,
				changeYear : true,
				dateFormat : 'yy-mm-dd'
			});

                $('#myModal').on('shown', function () {
                      $.getJSON(rest6, function (data) {
                        var html5 = "<option value=\"0\">----- Elija una opción -----</option>";
                        $.each(data, function (i, val) {
                            html5 += "<option value=\"" + val.id + "\">" + val.nombre + "</option>";
                        });
                        $("#sector_productivo_id").html(html5);
                        $("#sector_productivo_id").prop("disabled", false);
                    });
                });

                $.getJSON(rest0, function (data) {
                    $("#txtNombreCapacitacion").html(data.nombre);

                    $.each(data.calendarios_capacitaciones, function (i, val) {
                        if (val.id === cc)
                        {
                            $("#txtFechasCapacitacion").html("inicio: " + val.fecha_inicio + " | fin: " + val.fecha_fin);
                        }
                    });


                });

                $('#frmRegistroPersona').submit(function (e) {
                    e.preventDefault();
                    var json = JSON.stringify($('#frmRegistroPersona').serializeObject());
                    if (validaRegistroPersona())
                    {
                        $.ajax({
                            url: rest1,
                            type: "post",
                            data: json,
                            contentType: "application/json; charset=utf-8",
                            success: function (data, textStatus, jqXHR) {
                                alert("'" + (data.nombre + " " + data.ap_paterno + " " + data.ap_materno) + "' registrado con éxito, ahora ingrese sus medios de comunicación.");
                                $("#persona_id").val(data.id);
                                $("#persona_id2").val(data.id);
                                $.getJSON(rest2, function (data) {
                                    var html2 = "<option value=\"0\">----- Elija una opción -----</option>";
                                    $.each(data, function (i, val) {
                                        html2 += "<option value=\"" + val.id + "\">" + val.nombre + "</option>";
                                    });
                                    $("#tipo_medio_comunicacion_id").html(html2);
                                    $("#tipo_medio_comunicacion_id").prop("disabled", false);

                                    $('#frmRegistroPersona').fadeOut();
                                    $("#frmRegistroMedioComunicacion").fadeIn();
                                });

                            }, error: function (jqXHR, textStatus, errorThrown) {
                                console.log(jqXHR);
                                console.log(textStatus);
                                console.log(errorThrown);
                            }
                        });
                    }
                });



                $('#frmRegistroMedioComunicacion').submit(function (e) {
                    e.preventDefault();
                    var json = JSON.stringify($('#frmRegistroMedioComunicacion').serializeObject());
                    if (validaRegistroMedioComunicacion())
                    {
                        $.ajax({
                            url: rest3,
                            type: "post",
                            data: json,
                            contentType: "application/json; charset=utf-8",
                            success: function (data, textStatus, jqXHR) {
                                console.log(data);
                                $("#seguirAdelanteConRegistro").fadeIn();
                                if (confirm("El dato " + data.valor + " fue guardado con exito, ¿ desea agregar otro medio de comunicación? "))
                                {
                                    $("#SpanTipoMedioComunicacion").html("Dato: ");
                                    $("#valor").val("");
                                    $("#tipo_medio_comunicacion_id").val(0);
                                }
                                else
                                {
                                    seguirAdelanteConRegistroCapacitacion();
                                }
                            }, error: function (jqXHR, textStatus, errorThrown) {
                                console.log(jqXHR);
                                console.log(textStatus);
                                console.log(errorThrown);
                            }
                        });
                    }
                });


                $('#frmRegistroCapacitacion').submit(function (e) {
                    e.preventDefault();
                    var json = JSON.stringify($('#frmRegistroCapacitacion').serializeObject());
                    if (validaRegistroCapacitacion())
                    {
                        $.ajax({
                            url: rest7,
                            type: "post",
                            data: json,
                            contentType: "application/json; charset=utf-8",
                            success: function (data, textStatus, jqXHR) {
                                $("#frmRegistroCapacitacion").fadeOut();
                                $("#txtMensaje").html("<h2>Se ha registrado correctamente a la capacitación, en breve nos pondremos en contacto con usted. Muchas gracias.</h2>");

                            }, error: function (jqXHR, textStatus, errorThrown) {
                                console.log(jqXHR);
                                console.log(textStatus);
                                console.log(errorThrown);
                            }
                        });
                    }
                });
                
                $('#frmRegistroEmpresa').submit(function (e) {
                    e.preventDefault();
                    var json = JSON.stringify($('#frmRegistroEmpresa').serializeObject());
                    if (validaRegistroEmpresa())
                    {
                        $.ajax({
                            url: rest8,
                            type: "post",
                            data: json,
                            contentType: "application/json; charset=utf-8",
                            success: function (data, textStatus, jqXHR) {
                                seguirAdelanteConRegistroCapacitacion();                                
                                $("#agregar_empresa").fadeOut();
                                alert("La empresa '"+data.nombre+"' ha sido registrada con éxito, ahora puede buscarla y seleccionarla.");
                                $('#myModal').modal('hide');

                            }, error: function (jqXHR, textStatus, errorThrown) {
                                console.log(jqXHR);
                                console.log(textStatus);
                                console.log(errorThrown);
                            }
                        });
                    }
                });



            });

            function validaRegistroPersona()
            {
                var valido = true;
                var msg = "";
                if ($("#nombre").val() === "")
                {
                    msg += "El campo nombre está vacío, ingréselo por favor. \n";
                    valido = false;
                }
                if ($("#ap_paterno").val() === "")
                {
                    msg += "El campo apellido paterno está vacío, ingréselo por favor. \n";
                    valido = false;
                }
                if ($("#ap_materno").val() === "")
                {
                    msg += "El campo apellido materno está vacío, ingréselo por favor. \n";
                    valido = false;
                }
                if ($("#fecha_nacimiento").val() === "")
                {
                    msg += "El campo fecha de nacimiento está vacío, ingréselo por favor. \n";
                    valido = false;
                }
                if ($('input[name=sexo]:checked').length <= 0)
                {
                    msg += "No ha seleccionado un sexo. \n";
                    valido = false;
                }

                if (!valido)
                {
                    alert(msg);
                }

                return valido;

            }

            function validaRegistroMedioComunicacion()
            {
                var valido = true;
                var msg = "";
                if ($("#persona_id").val() === "0")
                {
                    msg += "No hay un id valido para la persona. \n";
                    valido = false;
                }
                if ($("#valor").val() === "")
                {
                    msg += "El campo dato está vacío, ingréselo por favor. \n";
                    valido = false;
                }
                if ($("#tipo_medio_comunicacion_id").val() === "0")
                {
                    msg += "Selecciones un tipo de medio de comunicación por favor. \n";
                    valido = false;
                }

                if (!valido)
                {
                    alert(msg);
                }

                return valido;

            }

            function validaRegistroCapacitacion()
            {
                var valido = true;
                var msg = "";
                if ($("#persona_id2").val() === "0")
                {
                    msg += "No hay un id valido para la persona. \n";
                    valido = false;
                }
                if ($("#calendario_capacitacion_id").val() === "0")
                {
                    msg += "No hay un id valido para el calendario de capacitación. \n";
                    valido = false;
                }
                if ($("#status_id").val() === "0")
                {
                    msg += "No hay un id valido para el status. \n";
                    valido = false;
                }
                if ($("#fecha_registro").val() === "")
                {
                    msg += "Fecha de registro invalida. \n";
                    valido = false;
                }
                if ($("#tipo_inscripcion_id").val() === "0")
                {
                    msg += "Selecciones un tipo de inscripción por favor. \n";
                    valido = false;
                }
                if ($("#empresa_id").val() === "0")
                {
                    msg += "Selecciones una empresa por favor. \n";
                    valido = false;
                }

                if (!valido)
                {
                    alert(msg);
                }

                return valido;

            }
            
            function validaRegistroEmpresa()
            {
                var valido = true;
                var msg = "";
                if ($("#nombre2").val() === "")
                {
                    msg += "El campo nombre esta vacio, ingreselo por favor. \n";
                    valido = false;
                }
                if ($("#sector_productivo_id").val() === "0")
                {
                    msg += "Seleccione un sector productivo por favor. \n";
                    valido = false;
                }


                if (!valido)
                {
                    alert(msg);
                }

                return valido;

            }
        </script>
    </body>
</html>
