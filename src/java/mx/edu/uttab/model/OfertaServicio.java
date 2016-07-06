/**
 *
 * @author Roberto Eder Weiss Juárez
 * @see {@link http://webxico.blogspot.mx/}
 */
package mx.edu.uttab.model;

import java.io.Serializable;
import java.util.Calendar;

public class OfertaServicio implements Serializable {

    private int id;
    private TipoOfertaServicio tipo;
    private String nombre;
    private String img;
    private String descripcion;
    private String fecha_realizacion;
    private Calendar fecha_publicacion;
    private boolean activo;

    public OfertaServicio() {
    }

    public OfertaServicio(int id) {
        this.id = id;
    }

    public OfertaServicio(int id, TipoOfertaServicio tipo, String nombre, String img, String descripcion, String fecha_realizacion, Calendar fecha_publicacion, boolean activo) {
        this.id = id;
        this.tipo = tipo;
        this.nombre = nombre;
        this.img = img;
        this.descripcion = descripcion;
        this.fecha_realizacion = fecha_realizacion;
        this.fecha_publicacion = fecha_publicacion;
        this.activo = activo;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public TipoOfertaServicio getTipo() {
        return tipo;
    }

    public void setTipo(TipoOfertaServicio tipo) {
        this.tipo = tipo;
    }

    public String getNombre() {
        return nombre;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
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

    public String getFecha_realizacion() {
        return fecha_realizacion;
    }

    public void setFecha_realizacion(String fecha_realizacion) {
        this.fecha_realizacion = fecha_realizacion;
    }

    public Calendar getFecha_publicacion() {
        return fecha_publicacion;
    }

    public void setFecha_publicacion(Calendar fecha_publicacion) {
        this.fecha_publicacion = fecha_publicacion;
    }

    public boolean isActivo() {
        return activo;
    }

    public void setActivo(boolean activo) {
        this.activo = activo;
    }

    @Override
    public String toString() {
        return "OfertaServicio{" + "id=" + id + ", tipo=" + tipo + ", nombre=" + nombre + ", img=" + img + ", descripcion=" + descripcion + ", fecha_realizacion=" + fecha_realizacion + ", fecha_publicacion=" + fecha_publicacion + ", activo=" + activo + '}';
    }

}
