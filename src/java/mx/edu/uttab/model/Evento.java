/**
 *
 * @author Roberto Eder Weiss Juárez
 * @see {@link http://webxico.blogspot.mx/}
 */
package mx.edu.uttab.model;

import java.io.Serializable;

public class Evento implements Serializable {

    private int id;
    private String nombre;
    private String fecha_realizacion;
    private String fecha_publicacion;
    private String img1;
    private String img2;
    private String img3;
    private String img4;
    private String img5;
    private String img6;
    private String efectos2;
    private String efectos3;
    private String efectos4;
    private String efectos5;
    private String efectos6;
    private String pdf;
    private String link;
    private boolean activo;

    public Evento() {
        this.id = 0;
        this.nombre = "";
        this.fecha_realizacion = "";
        this.fecha_publicacion = "";
        this.img1 = "";
        this.img2 = "";
        this.img3 = "";
        this.img4 = "";
        this.img5 = "";
        this.img6 = "";
        this.efectos2 = "";
        this.efectos3 = "";
        this.efectos4 = "";
        this.efectos5 = "";
        this.efectos6 = "";
        this.pdf = "";
        this.link = "";
        this.activo = false;
    }

    public Evento(int id, String nombre, String fecha_realizacion, String fecha_publicacion, String img1, String img2, String img3, String img4, String img5, String img6, String efectos2, String efectos3, String efectos4, String efectos5, String efectos6, String pdf, String link, boolean activo) {
        this.id = id;
        this.nombre = nombre;
        this.fecha_realizacion = fecha_realizacion;
        this.fecha_publicacion = fecha_publicacion;
        this.img1 = img1;
        this.img2 = img2;
        this.img3 = img3;
        this.img4 = img4;
        this.img5 = img5;
        this.img6 = img6;
        this.efectos2 = efectos2;
        this.efectos3 = efectos3;
        this.efectos4 = efectos4;
        this.efectos5 = efectos5;
        this.efectos6 = efectos6;
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

    public String getImg1() {
        return img1;
    }

    public void setImg1(String img1) {
        this.img1 = img1;
    }

    public String getImg2() {
        return img2;
    }

    public void setImg2(String img2) {
        this.img2 = img2;
    }

    public String getImg3() {
        return img3;
    }

    public void setImg3(String img3) {
        this.img3 = img3;
    }

    public String getImg4() {
        return img4;
    }

    public void setImg4(String img4) {
        this.img4 = img4;
    }

    public String getImg5() {
        return img5;
    }

    public void setImg5(String img5) {
        this.img5 = img5;
    }

    public String getImg6() {
        return img6;
    }

    public void setImg6(String img6) {
        this.img6 = img6;
    }

    public String getEfectos2() {
        return efectos2;
    }

    public void setEfectos2(String efectos2) {
        this.efectos2 = efectos2;
    }

    public String getEfectos3() {
        return efectos3;
    }

    public void setEfectos3(String efectos3) {
        this.efectos3 = efectos3;
    }

    public String getEfectos4() {
        return efectos4;
    }

    public void setEfectos4(String efectos4) {
        this.efectos4 = efectos4;
    }

    public String getEfectos5() {
        return efectos5;
    }

    public void setEfectos5(String efectos5) {
        this.efectos5 = efectos5;
    }

    public String getEfectos6() {
        return efectos6;
    }

    public void setEfectos6(String efectos6) {
        this.efectos6 = efectos6;
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
        return "Evento{" + "id=" + id + ", nombre=" + nombre + ", fecha_realizacion=" + fecha_realizacion + ", fecha_publicacion=" + fecha_publicacion + ", img1=" + img1 + ", img2=" + img2 + ", img3=" + img3 + ", img4=" + img4 + ", img5=" + img5 + ", img6=" + img6 + ", efectos2=" + efectos2 + ", efectos3=" + efectos3 + ", efectos4=" + efectos4 + ", efectos5=" + efectos5 + ", efectos6=" + efectos6 + ", pdf=" + pdf + ", link=" + link + ", activo=" + activo + '}';
    }

}