<%-- 
    Document   : uploadIMG
    Created on : 04-jun-2015, 12:36:57
    Author     : Weiss
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" session="false"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<div class="modal-header">
    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
    <h4 class="modal-title">
        <s:if test="num == 1">Subir imagen 1 | Evento(s)</s:if>
        <s:elseif test="num == 2">Subir imagen 2 | Evento(s)</s:elseif>
        <s:elseif test="num == 3">Subir imagen 3 | Evento(s)</s:elseif>
        <s:elseif test="num == 4">Subir imagen 4 | Evento(s)</s:elseif>
        <s:elseif test="num == 5">Subir imagen 5 | Evento(s)</s:elseif>
        <s:elseif test="num == 6">Subir imagen 6 | Evento(s)</s:elseif>
    </h4>
</div>
<div class="modal-body">
    <div class="te">
        Nombre: <s:property value="evento.nombre"/><br/><br/>
        <br/>
        <br/>
        <s:form action="upload_img" namespace="/SistemasAdmin/eventos" method="POST" enctype="multipart/form-data" >
            <s:file name="fileUpload" label="Select a File to upload" size="40" />
            <s:hidden name="id" value="%{evento.id}" />
            <s:hidden name="num" value="%{num}" />
            <br/>
            <s:submit value="Upload" name="submit" cssClass="btn btn-lg btn-primary"/>
        </s:form>
        <br/>
        <s:if test="hasActionErrors()">
            <div class="alert alert-danger"><s:actionerror/></div>
        </s:if>
    </div>
</div> 
<div class="modal-footer">
    <button type="button" class="btn btn-default" data-dismiss="modal">Cerrar</button>
</div>
