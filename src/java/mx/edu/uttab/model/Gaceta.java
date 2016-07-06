/**
 *
 * @author Roberto Eder Weiss Juárez
 * @see {@link http://webxico.blogspot.mx/}
 */
package mx.edu.uttab.model;

import java.io.Serializable;

public class Gaceta implements Serializable {

    private int id;
    private String fecha_ejemplar;
    private String dia;
    private String mes;
    private String anio;
    private String img;
    private String pdf;
    private boolean activo;

    public Gaceta() {
        this.id = 0;
        this.fecha_ejemplar = null;
        this.dia = "";
        this.mes = "";
        this.anio = "";
        this.img = "";
        this.pdf = "";
        this.activo = false;
    }

    public Gaceta(int id, String fecha_ejemplar, String dia, String mes, String anio, String img, String pdf, boolean activo) {
        this.id = id;
        this.fecha_ejemplar = fecha_ejemplar;
        this.dia = dia;
        this.mes = mes;
        this.anio = anio;
        this.img = img;
        this.pdf = pdf;
        this.activo = activo;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getFecha_ejemplar() {
        return fecha_ejemplar;
    }

    public void setFecha_ejemplar(String fecha_ejemplar) {
        this.fecha_ejemplar = fecha_ejemplar;
        String[] temp = this.fecha_ejemplar.toUpperCase().split(" ");
        if (Integer.parseInt(temp[0]) > 0 && Integer.parseInt(temp[0]) < 10 && !temp[0].substring(0, 1).equals("0")) {
            this.dia = "0" + temp[0];
        } else {
            this.dia = temp[0];
        }

        this.mes = temp[1];
        this.anio = temp[2];
        this.fecha_ejemplar = this.dia + " " + this.mes + " " + this.anio;
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

    public boolean isActivo() {
        return activo;
    }

    public void setActivo(boolean activo) {
        this.activo = activo;
    }

    public String getDia() {
        return dia;
    }

    public String getMes() {
        return mes;
    }

    public String getAnio() {
        return anio;
    }

    public void setDia(String dia) {
        this.dia = dia;
    }

    public void setMes(String mes) {
        this.mes = mes;
    }

    public void setAnio(String anio) {
        this.anio = anio;
    }

    @Override
    public String toString() {
        return "Gaceta{" + "id=" + id + ", fecha_ejemplar=" + fecha_ejemplar + ", dia=" + dia + ", mes=" + mes + ", anio=" + anio + ", img=" + img + ", pdf=" + pdf + ", activo=" + activo + '}';
    }

}
