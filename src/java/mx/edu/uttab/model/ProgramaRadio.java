/**
 *
 * @author Roberto Eder Weiss Juárez
 * @see {@link http://webxico.blogspot.mx/}
 */
package mx.edu.uttab.model;

import java.io.Serializable;

public class ProgramaRadio implements Serializable {

    private int id;
    private String color;
    private String fondo;
    private String nombre;
    private boolean activo;

    public ProgramaRadio() {
        this.id = 0;
        this.color = "";
        this.fondo = "";
        this.nombre = "";
        this.activo = false;
    }

    public ProgramaRadio(int id, String color, String fondo, String nombre, boolean activo) {
        this.id = id;
        this.color = color;
        this.fondo = fondo;
        this.nombre = nombre;
        this.activo = activo;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getColor() {
        return color;
    }

    public void setColor(String color) {
        this.color = color;
    }

    public String getFondo() {
        return fondo;
    }

    public void setFondo(String fondo) {
        this.fondo = fondo;
    }

    public String getNombre() {
        return nombre.toLowerCase();
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public boolean isActivo() {
        return activo;
    }

    public void setActivo(boolean activo) {
        this.activo = activo;
    }

    @Override
    public String toString() {
        return "ProgramaRadio{" + "id=" + id + ", color=" + color + ", fondo=" + fondo + ", nombre=" + nombre + ", activo=" + activo + '}';
    }

}