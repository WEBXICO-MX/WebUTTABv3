/**
 *
 * @author Roberto Eder Weiss Juárez
 * @see {@link http://webxico.blogspot.mx/}
 */
package mx.edu.uttab.model;

import java.io.Serializable;

public class Contacto implements Serializable {

    private int id;
    private String nombre;
    private String contenido;
    private boolean activo;

    public Contacto() {
    }

    public Contacto(int id, String nombre, String contenido, boolean activo) {
        this.id = id;
        this.nombre = nombre;
        this.contenido = contenido;
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

    public String getContenido() {
        return contenido;
    }

    public void setContenido(String contenido) {
        this.contenido = contenido;
    }

    public boolean isActivo() {
        return activo;
    }

    public void setActivo(boolean activo) {
        this.activo = activo;
    }

    @Override
    public String toString() {
        return "Contacto{" + "id=" + id + ", nombre=" + nombre + ", contenido=" + contenido + ", activo=" + activo + '}';
    }

}
