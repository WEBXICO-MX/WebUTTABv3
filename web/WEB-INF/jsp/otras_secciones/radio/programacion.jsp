<%-- 
    Document   : programacion
    Created on : 20-abr-2015, 8:40:04
    Author     : Weiss
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" session="false"%>
<div id="sintonia_botones">
    <a href="javascript:void(0);" onclick="getContendView('radio2.action');"><img src="${pageContext.request.contextPath}/img/otras_secciones/radio/btn_radio-min.png" alt="Sintonía UTTAB 102.5 FM &#124; Radio"/></a>&nbsp;&nbsp;&nbsp;&nbsp;
    <a href="javascript:void(0);" onclick="getContendView('quienes_somos.action');"><img src="${pageContext.request.contextPath}/img/otras_secciones/radio/btn_quienes_somos-min.png" alt="Sintonía UTTAB 102.5 FM &#124; Quienes somos"/></a>&nbsp;&nbsp;&nbsp;&nbsp;
    <a href="javascript:void(0);" onclick="getContendView('programacion.action');"><img src="${pageContext.request.contextPath}/img/otras_secciones/radio/btn_programacion-min.png" alt="Sintonía UTTAB 102.5 FM &#124; Programacion" style="opacity:0.8;filter:alpha(opacity=80);"/></a>&nbsp;&nbsp;&nbsp;&nbsp;
    <a href="javascript:void(0);" onclick="getContendView('podcast.action');"><img src="${pageContext.request.contextPath}/img/otras_secciones/radio/btn_podcast-min.png" alt="Sintonía UTTAB 102.5 FM &#124; Podcast"/></a>&nbsp;&nbsp;&nbsp;&nbsp;
    <a href="https://www.youtube.com/channel/UCdIXz23rBhFTQZ69xe26jtQ" target="_blank"><img src="${pageContext.request.contextPath}/img/otras_secciones/radio/btn_youtube-min.png" alt="Sintonía UTTAB 102.5 FM &#124; Canal de Youtube "/></a>&nbsp;&nbsp;&nbsp;&nbsp;
</div>
<div id="sintonia_banner">
    <img src="${pageContext.request.contextPath}/img/otras_secciones/radio/sintonia4-min.png" alt="Programacion"/>
</div>
<div id="sintonia_contenido">
    <div>
        <img src="${pageContext.request.contextPath}/img/otras_secciones/radio/sintonia5-min.png" alt="Sintonía UTTAB 102.5 FM &#124; Programación"/><br/><br/>
        <p>Nos sentimos orgullosos de ser una opción dentro de la radiodifusión tabasqueña, ofreciéndote diversos géneros, como rock, música mexicana, orquestas, música clásica, entre otros, abarcando un amplio repertorio musical, no sólo del estado sino del mundo, que te permitirá conocer y disfrutar los diferentes ritmos, así como informarte del acontecer educativo y cultural, entrevistas y mucho más.</p><br/>
        <p><b>Escúchanos en el 102.5 de frecuencia modulada o en www.uttab.edu.mx</b></p>
    </div>
    <div id="sintonia_ajax" style="margin-left: 15px; margin-right: 15px; float: right; width:383px; height:422px; background-image: url( ${pageContext.request.contextPath}/img/otras_secciones/radio/background.png)">&nbsp;</div>
    <div style="clear: both"></div>
    <div id="programacion_sintonia" style="width: 100%; margin-left: 0;float: none">
        <table style="width:100%; margin: 0 auto;border-spacing:0; font-weight: normal; font-size: 0.9em;">
            <thead>
                <tr>
                    <th style="width:120px;"></th>
                    <th>Lunes</th>
                    <th>Martes</th>
                    <th>Miércoles</th>
                    <th>Jueves</th>
                    <th>Viernes</th>
                    <th>Sábado</th>
                    <th>Domingo</th>
                </tr>
            </thead>
            <tbody>

                <tr>
                    <td>00:00-02:00</td>
                    <td colspan="7" style="background-color:#ECEDED;color:#000000;">MÚSICA MEXICANA</td>
                </tr>

                <tr>
                    <td>02:00-03:00</td>
                    <td colspan="7" style="background-color:#E3E4E4;color:#000000;">BOSSA NOVA</td>
                </tr>

                <tr>
                    <td>03:00-04:00</td>
                    <td colspan="7" style="background-color:#ECEDED;color:#000000;">SOUNDTRACKS</td>
                </tr>

                <tr>
                    <td>04:00-05:00</td>
                    <td colspan="7" style="background-color:#E3E4E4;color:#000000;">MÚSICA INSTRUMENTAL</td>
                </tr>

                <tr>
                    <td>05:00-06:00</td>
                    <td colspan="7" style="background-color:#ECEDED;color:#000000;">oRQUESTAS</td>
                </tr>

                <tr>
                    <td>06:00-07:00</td>
                    <td colspan="7" style="background-color:#E3E4E4; color:#000000; font-weight: bold;">rOCK AND ROLL</td>
                </tr>

                <tr>
                    <td>07:00-07:30</td>
                    <td colspan="7" style="background-color:#1C355E;color:#FFFFFF;">DESCARGA UNAM</td>
                </tr>

                <tr>
                    <td>07:30-09:30</td>
                    <td colspan="7" style="background-color:#ECEDED;color:#000000;">MÚSICA MEXICANA</td>
                </tr>

                <tr>
                    <td>09:30-10:00</td>
                    <td style="background-color:red;color:white;"> LA OTRA REVOLUCIÒN</td>
                    <td colspan="4" style="background-color:#C85714;color:#FFFFFF;">CON-TACTO INFORMATIVO (REPETICIÓN)</td>
                    <td colspan="2" style="background-color:#C85714;color:#FFFFFF;">RESUMEN CON-TACTO INFORMATIVO</td>
                </tr>

                <tr>
                    <td>10:00-11:00</td>
                    <td colspan="5" style="background-color:#FF7376;color:#FFFFFF;">FLORILEGIO</td>
                    <td colspan="2" style="background-color:#ECEDED;color:#000000;">TROVA</td>
                </tr>

                <tr>
                    <td rowspan="2">11:00-12:00</td>
                    <td colspan="5" rowspan="2"><b>ROCK AND ROLL</b></td>
                    <td colspan="2" style="background-color:#AC3C73;color:#FFFFFF;">LA ENTREVISTA DE LA SEMANA</td>
                </tr>

                <tr>
                    <td colspan="2" rowspan="3" style="background-color:#E3E4E4; color:#000000; font-weight: bold;">SALSA</td>
                </tr>

                <tr>
                    <td>12:00-12:30</td>
                    <td rowspan="2" style="background-color:#ECEDED;color:#000000;">BOSSA NOVA</td>
                    <td rowspan="2" style="background-color:#E3E4E4;color:#000000;" >SOUNDTRACKS</td>
                    <td style="background-color:#ECEDED;color:#000000;">MÚSICA INSTRUMENTAL</td>
                    <td rowspan="2" style="background-color:#E3E4E4;color:#000000;">INTÉRPRETES</td>
                    <td rowspan="2" style="background-color:#ECEDED;color:#000000;">BELL CANTO</td>
                </tr>
                <tr>
                  <td>12:30-13:00</td>
                  <td style="background-color:yellow;color:red;">DEBATE DE 4</td>
                </tr>

                <tr>
                    <td>13:00-14:00</td>
                    <td style="background-color:#E3E4E4;color:#000000;">MÚSICA CLÁSICOS</td>
                    <td style="background-color:#00953B;color:#FFFFFF;">TABASCO Y SUS RAICES</td>
                    <td style="background-color:#E3E4E4;color:#000000;">MÚSICA CLÁSICOS</td>
                    <td style="background-color:#00953B;color:#FFFFFF;">TABASCO Y SUS RAICES</td>
                    <td colspan="3" style="background-color:#E3E4E4;color:#000000;">MÚSICA CLÁSICOS</td>
                </tr>

                <tr>
                    <td>14:00-14:30</td>
                    <td style="background-color:#ECEDED;color:#000000;">BOSSA NOVA</td>
                    <td style="background-color:#E3E4E4;color:#000000;" >SOUNDTRACKS</td>
                    <td style="background-color:#ECEDED;color:#000000;">MÚSICA INSTRUMENTAL</td>
                    <td style="background-color:#E3E4E4;color:#000000;">INTÉRPRETES</td>
                    <td style="background-color:#ECEDED;color:#000000;">BELL CANTO</td>
                    <td style="background-color:#E3E4E4;color:#000000;">ORQUESTAS</td>
                    <td style="background-color:#ECEDED;color:#000000;">BOSSA NOVA</td>
                </tr>

                <tr>
                    <td>14:30-15:00</td>
                    <td colspan="5" style="background-color:#C85714;color:#FFFFFF;">CON-TACTO INFORMATIVO (EN VIVO)</td>
                    <td colspan="2" style="background-color:#C85714;color:#FFFFFF;">RESUMEN CON-TACTO INFORMATIVO</td>
                </tr>

                <tr>
                    <td>15:00-16:00</td>
                    <td colspan="5" rowspan="3" style="background-color:#F2F2F2;color:#000000;"><strong>MÚSICA POP EN ESPAÑOL E INGLÉS</strong></td>
                    <td colspan="2" style="background-color:#F2F2F2;color:#000000;">MÚSICA POP</td>
                </tr>

                <tr>
                    <td>16:00-16:30</td>
                    <td colspan="2" style="background-color:#AC3C73;color:#FFFFFF;">LA ENTREVISTA DE LA SEMANA</td>
                </tr>

                <tr>
                    <td>16:30-17:30</td>
                    <td colspan="2" style="background-color:#ECEDED;color:#000000;">tROVA</td>
                </tr>

                <tr>
                    <td>17:30-18:00</td>
                    <td colspan="7" style="background-color:#1C355E;color:#FFFFFF;">DESCARGA UNAM</td>
                </tr>

                <tr>
                    <td>18:00-19:00</td>
                    <td style="background-color:#ECEDED;color:#000000;">MÚSICA DEL MUNDO</td>
                    <td style="background-color:#E3E4E4;color:#000000;">NEW AGE</td>
                    <td style="background-color:#ECEDED;color:#000000;">MÚSICA DEL MUNDO</td>
                    <td style="background-color:#E3E4E4;color:#000000;">NEW AGE CHILL OUT</td>
                    <td style="background-color:#ECEDED;color:#000000;">MÚSICA DEL MUNDO</td>
                    <td style="background-color:#E3E4E4;color:#000000;">MÉXICO</td>
                    <td style="background-color:#ECEDED;color:#000000;">MÚSICA DEL MUNDO</td>
                </tr>

                <tr>
                    <td>19:00-20:00</td>
                    <td style="background-color:#FFB700;color:#000000;"><strong>ANTAÑO</strong></td>
                    <td style="background-color:#ECEDED;color:#000000;">GRANDES BANDAS</td>
                    <td style="background-color:#FFB700;color:#000000;"><strong>ANTAÑO</strong></td>
                    <td style="background-color:#ECEDED;color:#000000;">GRANDES BANDAS</td>
                    <td style="background-color:#FFB700;color:#000000;"><strong>ANTAÑO</strong></td>
                    <td style="background-color:#FFB700;color:#000000;"><strong>ANTAÑO</strong></td>
                    <td style="background-color:#FFB700;color:#000000;"><strong>ANTAÑO</strong></td>
                </tr>

                <tr>
                    <td>20:00-21:00</td>
                    <td style="background-color:green;color:yellow;">EL LAGARTO CULTO</td>
                    <td style="background-color:#E3E4E4;color:#000000;"><strong>SALSA</strong></td>
                    <td style="background-color:#ECEDED;color:#000000;">JAZZ</td>
                    <td style="background-color:#E3E4E4;color:#000000;"><strong>SALSA</strong></td>
                    <td style="background-color:#ECEDED;color:#000000;">JAZZ</td>
                    <td style="background-color:#E3E4E4;color:#000000;"><strong>SALSA</strong></td>
                    <td style="background-color:#ECEDED;color:#000000;">JAZZ</td>
                </tr>

                <tr>
                    <td>21:00-22:00</td>
                    <td colspan="7" style="background-color:#E3E4E4;color:#000000;">MÚSICA CLÁSICA</td>
                </tr>

                <tr>
                    <td>22:00-22:30</td>
                    <td rowspan="2" style="background-color:#E3E4E4;color:#000000;">NEW AGE CHILL OUT</td>
                    <td style="background-color:red;color:white;">LA OTRA REVOLUCIÒN</td>
                    <td rowspan="2" style="background-color:#E3E4E4;color:#000000;">NEW AGE CHILL OUT</td>
                    <td style="background-color:red;color:white;">LA OTRA REVOLUCIÒN</td>
                    <td colspan="2" rowspan="2" style="background-color:#E3E4E4;color:#000000;">NEW AGE CHILL OUT</td>
                    <td rowspan="2" style="background-color:#000000;color:#FFFFFF;">HORA NACIONAL</td>
                </tr>
                <tr>
                  <td>22:30-23:00</td>
                  <td style="background-color:#E3E4E4;color:#000000;">NEW AGE CHILL OUT</td>
                  <td style="background-color:#E3E4E4;color:#000000;">NEW AGE CHILL OUT</td>
                </tr>

                <tr>
                    <td>23:00-00:00</td>
                    <td colspan="7" style="background-color:#ECEDED;color:#000000;">DE ANTRO: DANCE, ELECTRÓNICO Y MÁS</td>
                </tr>

            </tbody>
        </table>
    </div>
</div>
<div style="clear:  both"></div>