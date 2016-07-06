/**
 *
 * @author Roberto Eder Weiss Juárez
 * @see {@link http://webxico.blogspot.mx/}
 */
package mx.edu.uttab.model;

import java.io.Serializable;

public class Division implements Serializable {

    private int cve_division;
    private String nombre;
    private String img;
    private boolean activo;

    public Division() {
    }

    public Division(int cve_division) {
        this.cve_division = cve_division;
    }

    public Division(int cve_division, String nombre, String img, boolean activo) {
        this.cve_division = cve_division;
        this.nombre = nombre;
        this.img = img;
        this.activo = activo;
    }

    public int getCve_division() {
        return cve_division;
    }

    public void setCve_division(int cve_division) {
        this.cve_division = cve_division;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }

    public boolean isActivo() {
        return activo;
    }

    public void setActivo(boolean activo) {
        this.activo = activo;
    }

    @Override
    public String toString() {
        return "Division{" + "cve_division=" + cve_division + ", nombre=" + nombre + ", img=" + img + ", activo=" + activo + '}';
    }

}
