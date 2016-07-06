<%-- 
    Document   : uploadIMG
    Created on : 05-jun-2015, 13:29:27
    Author     : Weiss
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" session="false"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<div class="modal-header">
    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
    <h4 class="modal-title">
        <s:if test="num == 1">Subir imagen web | Actividad(es) Universitaria(s)</s:if>
        <s:elseif test="num == 2">Subir imagen app 1 | Actividad(es) Universitaria(s)</s:elseif>
        <s:elseif test="num == 3">Subir imagen app 2 | Actividad(es) Universitaria(s)</s:elseif>
        </h4>
    </div>
    <div class="modal-body">
        <div class="te">
            Nombre: <s:property value="actividad.nombre"/><br/><br/>
        <s:form action="upload_img" namespace="/SistemasAdmin/actividades" method="POST" enctype="multipart/form-data" >
            <s:file name="fileUpload" label="Select a File to upload" size="40" />
            <s:hidden name="id" value="%{actividad.id}" />
            <s:hidden name="num" value="%{num}" />
            <br/>
            <s:submit value="Upload" name="submit" cssClass="btn btn-lg btn-primary"/>
        </s:form>
        <br/>
        <br/>
        <s:if test="hasActionErrors()">
            <div class="alert alert-danger"><s:actionerror/></div>
        </s:if>
    </div>
</div> 
<div class="modal-footer">
    <button type="button" class="btn btn-default" data-dismiss="modal">Cerrar</button>
</div>