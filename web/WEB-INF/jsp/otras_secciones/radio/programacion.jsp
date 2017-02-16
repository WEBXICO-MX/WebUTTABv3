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
        <img src="${pageContext.request.contextPath}/img/otras_secciones/radio/sintonia5-min.png" alt="Sintonía UTTAB 102.5 FM &#124; Programación"/>
        <p>Nos sentimos orgullosos de ser una opción dentro de la radiodifusión tabasqueña, ofreciéndote diversos géneros, como rock, música mexicana, orquestas, música clásica, entre otros, abarcando un amplio repertorio musical, no sólo del estado sino del mundo, que te permitirá conocer y disfrutar los diferentes ritmos, así como informarte del acontecer educativo y cultural, entrevistas y mucho más.</p><br/>
        <p><b>Escúchanos en el 102.5 de frecuencia modulada o en www.uttab.edu.mx</b></p>
    </div>
    <div id="sintonia_ajax" style="/*margin-left: 15px; margin-right: 15px;*/ float: right; width:383px; height:422px; background-image: url( ${pageContext.request.contextPath}/img/otras_secciones/radio/background.png)">&nbsp;</div>
    <div style="clear: both"></div>
    <div id="programacion_sintonia" style="width: 100%; margin-left: 0;float: none">
        ﻿<table class="tabla_programacion">
            <thead>
                <tr>
                    <td style="width:120px;">&nbsp;</td>
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
                    <td>00:00-00:30</td>
                    <td rowspan="4"><p>MEXICANA FEMENINO<br />
                        </p>
                        <p></p></td>
                    <td rowspan="4"><p>MEXICANA MASCULINO<br />
                        </p>
                        <p></p></td>
                    <td rowspan="4"><p>MEXICANA INSTRUMENTAL<br />
                        </p>
                        <p></p></td>
                    <td rowspan="4"><p>MEXICANA FOLKLORICO<br />
                        </p>
                        <p></p></td>
                    <td rowspan="2">MEXICANA FEMENINO<br /></td>
                    <td rowspan="2">MEXICANA INSTRUMENTAL<br /></td>
                    <td>MEXICANA FEMENINO<br /></td>
                </tr>
                <tr>
                    <td>00:30-01:00</td>
                    <td>MEXICANA MASCULINO<br /></td>
                </tr>
                <tr>
                    <td>01:00-01:30</td>
                    <td rowspan="2">MEXICANA MASCULINO<br /></td>
                    <td rowspan="2">MEXICANA FOLKLORICO<br /></td>
                    <td>MEXICANA INSTRUMENTAL<br /></td>
                </tr>
                <tr>
                    <td>01:30-02:00</td>
                    <td>MEXICANA FOLKLORICO<br /></td>
                </tr>
                <tr>
                    <td>02:00-02:30</td>
                    <td colspan="7" rowspan="2">BARRA INSTRUMENTAL</td>
                </tr>
                <tr>
                    <td>02:30-03:00</td>
                </tr>
                <tr>
                    <td>03:00-03:30</td>
                    <td colspan="7" rowspan="2">BARRA ORQUESTA</td>
                </tr>
                <tr>
                    <td>03:30-04:00</td>
                </tr>
                <tr>
                    <td>04:00-04:30</td>
                    <td colspan="7" rowspan="2">BARRA BOSSA</td>
                </tr>
                <tr>
                    <td>04:30-05:00</td>
                </tr>
                <tr>
                    <td>05:00-05:30</td>
                    <td colspan="7" rowspan="2">BARRA CINE</td>
                </tr>
                <tr>
                    <td>05:30-06:00</td>
                </tr>
                <tr>
                    <td>06:00-06:30</td>
                    <td rowspan="2">ROCK EN INGLÉS<br /></td>
                    <td rowspan="2">ROCK EN ESPAÑOL<br /></td>
                    <td rowspan="2">ROCK EN INGLÉS<br /></td>
                    <td rowspan="2">ROCK EN ESPAÑOL<br /></td>
                    <td rowspan="2">ROCK EN INGLÉS<br /></td>
                    <td rowspan="2">ROCK EN ESPAÑOL<br /></td>
                    <td rowspan="2">ROCK EN INGLÉS<br /></td>
                </tr>
                <tr>
                    <td>06:30-07:00</td>
                </tr>
                <tr>
                    <td>07:00-07:30</td>
                    <td colspan="7" style="background-color: navajowhite">DESCARGA UNAM</td>
                </tr>
                <tr>
                    <td>07:30-08:00</td>
                    <td rowspan="4"><p>MEXICANA FEMENINO<br />
                        </p>
                        <p></p></td>
                    <td rowspan="4"><p>MEXICANA MASCULINO<br />
                        </p>
                        <p></p></td>
                    <td rowspan="4"><p>MEXICANA INSTRUMENTAL<br />
                        </p>
                        <p></p></td>
                    <td rowspan="4"><p>MEXICANA FOLKLORICO<br />
                        </p>
                        <p></p></td>
                    <td rowspan="2">MEXICANA FEMENINO <br /></td>
                    <td rowspan="2">MEXICANA INSTRUMENTAL<br /></td>
                    <td>MEXICANA FEMENINO</td>
                </tr>
                <tr>
                    <td>08:00-08:30</td>
                    <td>MEXICANA MASCULINO<br /></td>
                </tr>
                <tr>
                    <td>08:30-09:00</td>
                    <td rowspan="2">MEXICANA MASCULINO<br /></td>
                    <td rowspan="2">MEXICANA FOLKLORICO<br /></td>
                    <td>MEXICANA INSTRUMENTAL<br /></td>
                </tr>
                <tr>
                    <td>09:00-09:30</td>
                    <td>MEXICANA FOLKLORICO<br /></td>
                </tr>
                <tr>
                    <td>09:30-10:00</td>
                    <td style="background-color: navajowhite">LA OTRA REVOLUCIÓN</td>
                    <td colspan="4" style="background-color: navajowhite">CON-TACTO INFORMATIVO (REPETICIÓN) </td>
                    <td colspan="2" style="background-color: navajowhite">RESUMEN CON-TACTO INFORMATIVO </td>
                </tr>
                <tr>
                    <td>10:00-10:30</td>
                    <td colspan="5" rowspan="2" style="background-color: navajowhite">FLORILEGIO <br /></td>
                    <td colspan="2" rowspan="2">BARRA MÚSICA DE TROVA <br /></td>
                </tr>
                <tr>
                    <td>10:30-11:00</td>
                </tr>
                <tr>
                    <td>11:00-11:30</td>
                    <td rowspan="2">ROCK EN ESPAÑOL<br /></td>
                    <td rowspan="2">ROCK EN INGLÉS<br /></td>
                    <td rowspan="2">ROCK EN ESPAÑOL<br /></td>
                    <td rowspan="2">ROCK EN INGLÉS<br /></td>
                    <td rowspan="2">ROCK EN ESPAÑOL<br /></td>
                    <td colspan="2" style="background-color: navajowhite">LA ENTREVISTA DE LA SEMANA </td>
                </tr>
                <tr>
                    <td>11:30-12:00</td>
                    <td colspan="2" rowspan="3">BARRA MUSICAL SALSA <br />
                        <br /></td>
                </tr>
                <tr>
                    <td>12:00-12:30</td>
                    <td>BARRA BOSSA</td>
                    <td rowspan="2">BARRA CINE<br /></td>
                    <td>BARRA INSTRUMENTAL</td>
                    <td rowspan="2">BARRA INTÉRPRETES<br /></td>
                    <td>BARRA INTÉRPRETES BELL</td>
                </tr>
                <tr>
                    <td>12:30-13:00</td>
                    <td style="background-color: navajowhite">CONEXIÓN EMPRESARIAL</td>
                    <td style="background-color: navajowhite">DEBATE DE 4</td>
                    <td style="background-color: navajowhite">ES TU TURNO</td>
                </tr>
                <tr>
                    <td>13:00-13:30</td>
                    <td rowspan="2">BARRA MUSICAL CLÁSICOS<br /></td>
                    <td rowspan="2" style="background-color: navajowhite">TABASCO  Y SUS RAICES<br /></td>
                    <td rowspan="2">BARRA MUSICAL CLÁSICOS<br /></td>
                    <td rowspan="2" style="background-color: navajowhite">TABASCO  Y SUS RAICES<br /></td>
                    <td rowspan="2">BARRA MUSICAL CLÁSICOS<br /></td>
                    <td rowspan="2" style="background-color: navajowhite">TABASCO  Y SUS RAICES<br /></td>
                    <td rowspan="2">BARRA MUSICAL CLÁSICOS<br /></td>
                </tr>
                <tr>
                    <td>13:30-14:00</td>
                </tr>
                <tr>
                    <td>14:00-14:30</td>
                    <td colspan="7">BARRA BOSSA </td>
                </tr>
                <tr>
                    <td>14:30-15:00</td>
                    <td colspan="5" style="background-color: navajowhite">CON-TACTO INFORMATIVO (EN VIVO) </td>
                    <td colspan="2" style="background-color: navajowhite">RESUMEN CON-TACTO INFORMATIVO </td>
                </tr>
                <tr>
                    <td>15:00-15:30</td>
                    <td colspan="5" rowspan="5">BARRA MUSICAL PARA CHAVOS <br />
                        <br />
                        <br />
                        <br /></td>
                    <td colspan="2" rowspan="2">BARRA MUSICAL PARA CHAVOS <br /></td>
                </tr>
                <tr>
                    <td>15:30-16:00</td>
                </tr>
                <tr>
                    <td>16:00-16:30</td>
                    <td colspan="2" style="background-color: navajowhite">LA ENTREVISTA DE LA SEMANA </td>
                </tr>
                <tr>
                    <td>16:30-17:00</td>
                    <td colspan="2" rowspan="2">BARRA MÚSICA DE TROVA <br /></td>
                </tr>
                <tr>
                    <td>17:00-17:30</td>
                </tr>
                <tr>
                    <td>17:30-18:00</td>
                    <td colspan="7" style="background-color: navajowhite">DESCARGA UNAM </td>
                </tr>
                <tr>
                    <td>18:00-18:30</td>
                    <td rowspan="2">BARRA MÚSICA DEL MUNDO<br /></td>
                    <td rowspan="2">BARRA MUSICAL NEW AGE<br /></td>
                    <td rowspan="2">BARRA MÚSICA DEL MUNDO<br /></td>
                    <td rowspan="2">BARRA MUSICAL NEW AGE<br /></td>
                    <td rowspan="2">BARRA MÚSICA DEL MUNDO<br /></td>
                    <td rowspan="2">BARRA MUSICAL NEW AGE<br /></td>
                    <td rowspan="2">BARRA MÚSICA DEL MUNDO<br /></td>
                </tr>
                <tr>
                    <td>18:30-19:00</td>
                </tr>
                <tr>
                    <td>19:00-19:30</td>
                    <td rowspan="2" style="background-color: navajowhite">ANTAÑO (DANZON)<br /></td>
                    <td rowspan="2">BARRA MUSICAL GRANDES BANDAS<br /></td>
                    <td rowspan="2" style="background-color: navajowhite">ANTAÑO<br /></td>
                    <td rowspan="2">BARRA MUSICAL GRANDES BANDAS<br /></td>
                    <td rowspan="2" style="background-color: navajowhite">ANTAÑO (TRIOS)<br /></td>
                    <td rowspan="2" style="background-color: navajowhite">ANTAÑO (DANZON)<br /></td>
                    <td rowspan="2" style="background-color: navajowhite">ANTAÑO (TRIOS)<br /></td>
                </tr>
                <tr>
                    <td>19:30-20:00</td>
                </tr>
                <tr>
                    <td>20:00-20:30</td>
                    <td rowspan="2" style="background-color: navajowhite">EL LAGARTO CULTO<br /></td>
                    <td rowspan="2">BARRA MUSICAL SALSA<br /></td>
                    <td rowspan="2">BARRA MUSICAL JAZZ<br /></td>
                    <td rowspan="2">BARRA MUSICAL SALSA<br /></td>
                    <td rowspan="2">BARRA MUSICAL JAZZ<br /></td>
                    <td rowspan="2">BARRA MUSICAL SALSA<br /></td>
                    <td rowspan="2">BARRA MUSICAL JAZZ<br /></td>
                </tr>
                <tr>
                    <td>20:30-21:00</td>
                </tr>
                <tr>
                    <td>21:00-21:30</td>
                    <td colspan="7" rowspan="2">BARRA MUSICAL CLÁSICOS <br /></td>
                </tr>
                <tr>
                    <td>21:30-22:00</td>
                </tr>
                <tr>
                    <td>22:00-22:30</td>
                    <td>&nbsp;</td>
                    <td style="background-color: navajowhite">CONEXIÓN EMPRESARIAL</td>
                    <td style="background-color: navajowhite">ES TU TURNO</td>
                    <td style="background-color: navajowhite">DEBATE DE 4</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td style="background-color: #D1D2D4">HORA NACIONAL</td>
                </tr>
                <tr>
                    <td>22:30-23:00</td>
                    <td colspan="7">BARRA MUSICAL NEW AGE (SINTONÍA) </td>
                </tr>
                <tr>
                    <td>23:00-23:30</td>
                    <td colspan="7" rowspan="2">BARRA MUSICAL DE ANTRO <br /></td>
                </tr>
                <tr>
                    <td>23:30-24:00</td>
                </tr>
            </tbody>
        </table>
    </div>
</div>
<div style="clear:  both"></div>