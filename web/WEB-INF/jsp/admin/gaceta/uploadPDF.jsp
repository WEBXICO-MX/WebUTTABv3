<%-- 
    Document   : uploadPDF
    Created on : 03-jun-2015, 14:58:16
    Author     : Weiss
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" session="false"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<div class="modal-header">
    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
    <h4 class="modal-title">Subir PDF Gaceta(s)</h4>
</div>
<div class="modal-body">
    <div class="te">
        Gaceta UTTAB N° <s:property value="gaceta.id"/> | <s:property value="gaceta.fecha_ejemplar"/><br/><br/>
        <s:form action="upload_pdf" namespace="/SistemasAdmin/gaceta" method="POST" enctype="multipart/form-data" >
            <s:file name="fileUpload" label="Select a File to upload" size="40" />
            <s:hidden name="id" value="%{gaceta.id}" />
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