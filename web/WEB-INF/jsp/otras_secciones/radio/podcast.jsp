<%-- 
    Document   : podcast
    Created on : 20-abr-2015, 8:40:17
    Author     : Weiss
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" session="false"%>
<div id="sintonia_botones">
    <a href="javascript:void(0);" onclick="getContendView('radio2.action');"><img src="${pageContext.request.contextPath}/img/otras_secciones/radio/btn_radio-min.png" alt="Sintonía UTTAB 102.5 FM &#124; Radio"/></a>&nbsp;&nbsp;&nbsp;&nbsp;
    <a href="javascript:void(0);" onclick="getContendView('quienes_somos.action');"><img src="${pageContext.request.contextPath}/img/otras_secciones/radio/btn_quienes_somos-min.png" alt="Sintonía UTTAB 102.5 FM &#124; Quienes somos"/></a>&nbsp;&nbsp;&nbsp;&nbsp;
    <a href="javascript:void(0);" onclick="getContendView('programacion.action');"><img src="${pageContext.request.contextPath}/img/otras_secciones/radio/btn_programacion-min.png" alt="Sintonía UTTAB 102.5 FM &#124; Programacion"/></a>&nbsp;&nbsp;&nbsp;&nbsp;
    <a href="javascript:void(0);" onclick="getContendView('podcast.action');"><img src="${pageContext.request.contextPath}/img/otras_secciones/radio/btn_podcast-min.png" alt="Sintonía UTTAB 102.5 FM &#124; Podcast" style="opacity:0.8;filter:alpha(opacity=80);"/></a>&nbsp;&nbsp;&nbsp;&nbsp;
    <a href="https://www.youtube.com/channel/UCdIXz23rBhFTQZ69xe26jtQ" target="_blank"><img src="${pageContext.request.contextPath}/img/otras_secciones/radio/btn_youtube-min.png" alt="Sintonía UTTAB 102.5 FM &#124; Canal de Youtube "/></a>&nbsp;&nbsp;&nbsp;&nbsp;
</div>
<div id="sintonia_banner">
    <img src="${pageContext.request.contextPath}/img/otras_secciones/radio/sintonia6-min.png" alt="Podcast"/>
</div>
<div id="sintonia_contenido">
    <div>
        <iframe width="100%" height="422" scrolling="no" frameborder="no" src="https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/playlists/123717827&amp;color=ff5500&amp;auto_play=false&amp;hide_related=false&amp;show_comments=true&amp;show_user=true&amp;show_reposts=false"></iframe>
    </div>
    <div id="sintonia_ajax" style="/*margin-left: 15px; margin-right: 15px;*/ float: right; width:383px; height:422px; background-image: url( ${pageContext.request.contextPath}/img/otras_secciones/radio/background.png)">&nbsp;</div>
</div>
<div style="clear:  both"></div>