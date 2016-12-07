/**
 *
 * @author Roberto Eder Weiss Juárez
 * @see {@link http://webxico.blogspot.mx/}
 */
package mx.edu.uttab.model;

import java.io.Serializable;

public class Carrera implements Serializable {

    private int cve_carrera;
    private Division cve_division;
    private String nombre;
    private int tipo;
    private String icono;
    private String img;
    private String url;
    private String informacion_extra;

    public Carrera() {
    }

    public Carrera(int cve_carrera) {
        this.cve_carrera = cve_carrera;
    }

    public Carrera(int cve_carrera, Division cve_division, String nombre, int tipo, String icono, String img, String url, String informacion_extra) {
        this.cve_carrera = cve_carrera;
        this.cve_division = cve_division;
        this.nombre = nombre;
        this.tipo = tipo;
        this.icono = icono;
        this.img = img;
        this.url = url;
        this.informacion_extra = informacion_extra;
    }

    public int getCve_carrera() {
        return cve_carrera;
    }

    public void setCve_carrera(int cve_carrera) {
        this.cve_carrera = cve_carrera;
    }

    public Division getCve_division() {
        return cve_division;
    }

    public void setCve_division(Division cve_division) {
        this.cve_division = cve_division;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public int getTipo() {
        return tipo;
    }

    public void setTipo(int tipo) {
        this.tipo = tipo;
    }

    public String getIcono() {
        return icono;
    }

    public void setIcono(String icono) {
        this.icono = icono;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public String getInformacion_extra() {
        return informacion_extra;
    }

    public void setInformacion_extra(String informacion_extra) {
        this.informacion_extra = informacion_extra;
    }

    @Override
    public String toString() {
        return "Carrera{" + "cve_carrera=" + cve_carrera + ", cve_division=" + cve_division + ", nombre=" + nombre + ", tipo=" + tipo + ", icono=" + icono + ", img=" + img + ", url=" + url + ", informacion_extra=" + informacion_extra + '}';
    }

}
