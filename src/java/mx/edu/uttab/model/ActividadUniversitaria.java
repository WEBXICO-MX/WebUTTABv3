/**
 *
 * @author Roberto Eder Weiss Juárez
 * @see {@link http://webxico.blogspot.mx/}
 */
package mx.edu.uttab.model;

import java.io.Serializable;
import org.apache.commons.lang.WordUtils;

public class ActividadUniversitaria implements Serializable {

    private int id;
    private String nombre;
    private String text_preview_web;
    private String text_preview;
    private String text_completo;
    private String fecha_realizacion;
    private String fecha_publicacion;
    private String img;
    private String img_movil;
    private String img_movil1;
    private String pdf;
    private String link;
    private boolean primario;
    private boolean activo;

    public ActividadUniversitaria() {
        this.id = 0;
        this.nombre = "";
        this.text_preview_web = "";
        this.text_preview = "";
        this.text_completo = "";
        this.fecha_realizacion = null;
        this.fecha_publicacion = null;
        this.img = "";
        this.img_movil = "";
        this.img_movil1 = "";
        this.pdf = "";
        this.link = "";
        this.primario = false;
        this.activo = false;
    }

    public ActividadUniversitaria(int id, String nombre, String text_preview_web, String text_preview, String text_completo, String fecha_realizacion, String fecha_publicacion, String img, String img_movil, String img_movil1, String pdf, String link, boolean primario, boolean activo) {
        this.id = id;
        this.nombre = nombre;
        this.text_preview_web = text_preview_web;
        this.text_preview = text_preview;
        this.text_completo = text_completo;
        this.fecha_realizacion = fecha_realizacion;
        this.fecha_publicacion = fecha_publicacion;
        this.img = img;
        this.img_movil = img_movil;
        this.img_movil1 = img_movil1;
        this.pdf = pdf;
        this.link = link;
        this.primario = primario;
        this.activo = activo;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getText_preview_web() {
        return text_preview_web;
    }

    public void setText_preview_web(String text_preview_web) {
        this.text_preview_web = text_preview_web;
    }

    public String getText_preview() {
        return text_preview;
    }

    public void setText_preview(String text_preview) {
        this.text_preview = text_preview;
    }

    public String getText_completo() {
        return text_completo;
    }

    public void setText_completo(String text_completo) {
        this.text_completo = text_completo;
    }

    public String getFecha_realizacion() {
        return WordUtils.capitalize(this.fecha_realizacion, null);
    }

    public void setFecha_realizacion(String fecha_realizacion) {
        this.fecha_realizacion = WordUtils.capitalize(fecha_realizacion, null);
    }

    public String getFecha_publicacion() {
        String tmp[] = this.fecha_publicacion.split(" ");
        String meses[] = {"Enero", "Febrero", "Marzo", "Abril", "Mayo", "Junio", "Julio", "Agosto", "Septiembre", "Octubre", "Noviembre", "Diciembre"};
        String months[] = {"january", "february", "march", "april", "may", "june", "july", "august", "september", "october", "november", "december"};
        int i = 0;

        if (tmp.length > 1) {
            for (String month : months) {
                if (tmp[1].toLowerCase().equals(month)) {
                    this.fecha_publicacion = this.fecha_publicacion.replace(tmp[1], meses[i]);
                    break;
                } else {
                    i++;
                }
            }

        }
        return fecha_publicacion;
    }

    public void setFecha_publicacion(String fecha_publicacion) {
        this.fecha_publicacion = fecha_publicacion;
        String tmp[] = this.fecha_publicacion.split(" ");
        String meses[] = {"Enero", "Febrero", "Marzo", "Abril", "Mayo", "Junio", "Julio", "Agosto", "Septiembre", "Octubre", "Noviembre", "Diciembre"};
        String months[] = {"january", "february", "march", "april", "may", "june", "july", "august", "september", "october", "november", "december"};
        int i = 0;

        if (tmp.length > 1) {
            for (String month : months) {
                if (tmp[1].toLowerCase().equals(month)) {
                    this.fecha_publicacion = this.fecha_publicacion.replace(tmp[1], meses[i]);
                    break;
                } else {
                    i++;
                }
            }

        }
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }

    public String getImg_movil1() {
        return img_movil1;
    }

    public String getImg_movil() {
        return img_movil;
    }

    public void setImg_movil(String img_movil) {
        this.img_movil = img_movil;
    }

    public void setImg_movil1(String img_movil1) {
        this.img_movil1 = img_movil1;
    }

    public String getPdf() {
        return pdf;
    }

    public void setPdf(String pdf) {
        this.pdf = pdf;
    }

    public String getLink() {
        return link;
    }

    public void setLink(String link) {
        this.link = link;
    }

    public boolean isPrimario() {
        return primario;
    }

    public void setPrimario(boolean primario) {
        this.primario = primario;
    }

    public boolean isActivo() {
        return activo;
    }

    public void setActivo(boolean activo) {
        this.activo = activo;
    }

    @Override
    public String toString() {
        return "ActividadUniversitaria{" + "id=" + id + ", nombre=" + nombre + ", text_preview_web=" + text_preview_web + ", text_preview=" + text_preview + ", text_completo=" + text_completo + ", fecha_realizacion=" + fecha_realizacion + ", fecha_publicacion=" + fecha_publicacion + ", img=" + img + ", img_movil=" + img_movil + ", img_movil1=" + img_movil1 + ", pdf=" + pdf + ", link=" + link + ", primario=" + primario + ", activo=" + activo + '}';
    }

}
