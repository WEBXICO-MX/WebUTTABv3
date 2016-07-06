<%-- 
    Document   : buzon_id
    Created on : 23-sep-2015, 14:44:47
    Author     : Weiss
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" session="false"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<div class="modal-header">
    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
    <h4 class="modal-title">Status: <s:if test="registro.status==1">Nuevo</s:if><s:elseif test="registro.status==2">Revisado</s:elseif><s:else>Inscrito</s:else></h4>
    </div>
    <div class="modal-body">
        <div class="te">
        <h2>Información del curso</h2>    
        <p><b>Nombre capacitación:</b> <s:property value="registro.calendario_capacitacion.capacitacion.nombre"/></p>
        <p><b>Fecha(s) de capacitación:</b> <s:property value="registro.calendario_capacitacion.hola"/></p>
        <h2>Información del registro</h2>
        <p><b>Tipo:</b> <s:property value="registro.tipo_inscripcion.nombre"/></p>
        <p><b>Sector productivo:</b> <s:property value="registro.sector_productivo.nombre"/></p>
        <p><b>Institución/Empresa:</b> <s:property value="registro.nombre_empresa"/></p>
        <p><b>Nombre:</b> <s:property value="registro.nombre"/></p>
        <p><b>Apellido paterno:</b> <s:property value="registro.apellido_pat"/></p>
        <p><b>Apellido materno:</b> <s:property value="registro.apellido_mat"/></p>
        <p><b>Fecha de nacimiento:</b> <s:property value="registro.fecha_nacimiento"/></p>
        <p><b>Sexo:</b> <s:property value="registro.sexo"/></p>
        <p><b>Email:</b> <s:property value="registro.email"/></p>
        <p><b>Tel:</b> <s:property value="registro.tel"/></p>
        <p><b>Cel:</b> <s:property value="registro.cel"/></p>
        <s:form action="cambiar_status" namespace="/case" method="post">
            <div class="form-group">
                <s:hidden name="id" value="%{registro.id}"></s:hidden>
                <s:hidden name="status" value="%{registro.status + 1}"></s:hidden>
                <s:if test="registro.status==1">
                    <s:submit id="btn_cambiar_status" value="Cambiar estatus a \"Revisado\"" cssClass="btn btn-success" tabindex="10" onclick="if(confirm('¿Está seguro de cambiar el estatus del registro a \"Revisado\"?')){ return true;}else{ return false;}"/>
                </s:if>
                <s:elseif test="registro.status==2">
                    <s:submit id="btn_cambiar_status" value="Cambiar estatus a \"Inscrito\"" cssClass="btn btn-success" tabindex="10" onclick="if(confirm('¿Está seguro de cambiar el estatus del registro a \"Inscrito\"?')){ return true;}else{ return false;}"/><br><br>
                    <s:submit id="btn_cambiar_status4" value="Cambiar estatus a \"No inscrito\"" cssClass="btn btn-info" tabindex="11" onclick="if(confirm('¿Está seguro de cambiar el estatus del registro a \"No inscrito\"?')){ return changeStatus(4);}else{ return false;}"/>
                </s:elseif>
                <s:elseif test="registro.status==3">
                    <s:submit id="btn_cambiar_status" value="Cambiar estatus a \"Histórico\"" cssClass="btn btn-success" tabindex="10" onclick="if(confirm('¿Está seguro de cambiar el estatus del registro a \"Histórico\"?')){ return changeStatus(5);}else{ return false;}"/>
                </s:elseif>
            </div>
        </s:form>
    </div>
</div>
<div class="modal-footer">
    <button type="button" class="btn btn-default" data-dismiss="modal">Cerrar</button>
</div>