/**
 *
 * @author Roberto Eder Weiss Juárez
 * @see {@link http://webxico.blogspot.mx/}
 */
package mx.edu.uttab.model.CASE;

import java.io.Serializable;

public class Capacitacion implements Serializable{

    private int id;
    private TipoCapacitacion tipo_capacitacion;
    private String nombre;
    private String descripcion;
    private boolean activo;

    public Capacitacion() {
        this.id = 0;
        this.tipo_capacitacion = null;
        this.nombre = "";
        this.descripcion = "";
        this.activo = false;
    }

    public Capacitacion(int id, TipoCapacitacion tipo_capacitacion, String nombre, String descripcion, boolean activo) {
        this.id = id;
        this.tipo_capacitacion = tipo_capacitacion;
        this.nombre = nombre;
        this.descripcion = descripcion;
        this.activo = activo;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public TipoCapacitacion getTipo_capacitacion() {
        return tipo_capacitacion;
    }

    public void setTipo_capacitacion(TipoCapacitacion tipo_capacitacion) {
        this.tipo_capacitacion = tipo_capacitacion;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public boolean isActivo() {
        return activo;
    }

    public void setActivo(boolean activo) {
        this.activo = activo;
    }

    @Override
    public String toString() {
        return "CaseCapacitacion{" + "id=" + id + ", tipo_capacitacion=" + tipo_capacitacion + ", nombre=" + nombre + ", descripcion=" + descripcion + ", activo=" + activo + '}';
    }

}