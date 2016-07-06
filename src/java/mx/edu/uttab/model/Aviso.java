/**
 *
 * @author Roberto Eder Weiss Juárez
 * @see {@link http://webxico.blogspot.mx/}
 */

package mx.edu.uttab.model;

import java.io.Serializable;

public class Aviso implements Serializable {

    private int id;
    private String nombre;
    private String fecha_realizacion;
    private String fecha_publicacion;
    private String img;
    private String pdf;
    private String link;
    private boolean activo;

    public Aviso() {
        this.id = 0;
        this.nombre = "";
        this.fecha_realizacion = null;
        this.fecha_publicacion = null;
        this.img = "";
        this.pdf = "";
        this.link = "";
        this.activo = false;
    }

    public Aviso(int id, String nombre, String fecha_realizacion, String fecha_publicacion, String img, String pdf, String link, boolean activo) {
        this.id = id;
        this.nombre = nombre;
        this.fecha_realizacion = fecha_realizacion;
        this.fecha_publicacion = fecha_publicacion;
        this.img = img;
        this.pdf = pdf;
        this.link = link;
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

    public String getFecha_realizacion() {
        return fecha_realizacion;
    }

    public void setFecha_realizacion(String fecha_realizacion) {
        this.fecha_realizacion = fecha_realizacion;
    }

    public String getFecha_publicacion() {
        return fecha_publicacion;
    }

    public void setFecha_publicacion(String fecha_publicacion) {
        this.fecha_publicacion = fecha_publicacion;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
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

    public boolean isActivo() {
        return activo;
    }

    public void setActivo(boolean activo) {
        this.activo = activo;
    }

    @Override
    public String toString() {
        return "Aviso{" + "id=" + id + ", nombre=" + nombre + ", fecha_realizacion=" + fecha_realizacion + ", fecha_publicacion=" + fecha_publicacion + ", img=" + img + ", pdf=" + pdf + ", link=" + link + ", activo=" + activo + '}';
    }

}
