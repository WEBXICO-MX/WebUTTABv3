/**
 *
 * @author Roberto Eder Weiss Juárez
 * @see {@link http://webxico.blogspot.mx/}
 */
package mx.edu.uttab.model;

import java.io.Serializable;

public class Materia implements Serializable{

    private Carrera cve_carerra;
    private int cuatrimestre;
    private String nombre;

    public Materia() {
    }

    public Materia(Carrera cve_carerra, int cuatrimestre, String nombre) {
        this.cve_carerra = cve_carerra;
        this.cuatrimestre = cuatrimestre;
        this.nombre = nombre;
    }

    public Carrera getCve_carerra() {
        return cve_carerra;
    }

    public void setCve_carerra(Carrera cve_carerra) {
        this.cve_carerra = cve_carerra;
    }

    public int getCuatrimestre() {
        return cuatrimestre;
    }

    public void setCuatrimestre(int cuatrimestre) {
        this.cuatrimestre = cuatrimestre;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    @Override
    public String toString() {
        return "Materia{" + "cve_carerra=" + cve_carerra + ", cuatrimestre=" + cuatrimestre + ", nombre=" + nombre + '}';
    }

}
