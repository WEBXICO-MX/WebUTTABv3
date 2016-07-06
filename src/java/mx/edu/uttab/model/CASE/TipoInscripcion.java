/**
 *
 * @author Roberto Eder Weiss Juárez
 * @see {@link http://webxico.blogspot.mx/}
 */
package mx.edu.uttab.model.CASE;

import java.io.Serializable;

public class TipoInscripcion implements Serializable {

    private int id;
    private String nombre;
    private boolean activo;

    public TipoInscripcion() {
        this.id = 0;
        this.nombre = "";
        this.activo = false;
    }

    public TipoInscripcion(int id, String nombre, boolean activo) {
        this.id = id;
        this.nombre = nombre;
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

    public boolean isActivo() {
        return activo;
    }

    public void setActivo(boolean activo) {
        this.activo = activo;
    }

    @Override
    public String toString() {
        return "CaseTipoCapacitacion{" + "id=" + id + ", nombre=" + nombre + ", activo=" + activo + '}';
    }

}