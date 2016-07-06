<%-- 
    Document   : uploadPDF
    Created on : 04-jun-2015, 9:21:22
    Author     : Weiss
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" session="false"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<div class="modal-header">
    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
    <h4 class="modal-title">Subir PDF Aviso(s)</h4>
</div>
<div class="modal-body">
    <div class="te">
        Nombre: <s:property value="aviso.nombre"/><br/>
        Fecha de realización: <s:property value="aviso.fecha_realizacion"/><br/><br/>
        <s:form action="upload_pdf" namespace="/SistemasAdmin/avisos" method="POST" enctype="multipart/form-data" >
            <s:file name="fileUpload" label="Select a File to upload" size="40" />
            <s:hidden name="id" value="%{aviso.id}" />
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
