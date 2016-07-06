/**
 *
 * @author Roberto Eder Weiss Juárez
 * @see {@link http://webxico.blogspot.mx/}
 */
package mx.edu.uttab.model;

import java.io.Serializable;
import java.util.Calendar;

public class CalendarioEventos implements Serializable {

    private int id;
    private String nombre;
    private String descripcion;
    private String lugar_realizacion;
    private String organizador;
    private String costo;
    private String informes;
    private String hora_realizacion;
    private Calendar fecha_realizacion;
    private Calendar fecha_publicacion;
    private boolean activo;

    public CalendarioEventos() {
        this.id = 0;
        this.nombre = "";
        this.descripcion = "";
        this.lugar_realizacion = "";
        this.organizador = "";
        this.costo = "";
        this.informes = "";
        this.hora_realizacion = "";
        this.fecha_realizacion = null;
        this.fecha_publicacion = null;
        this.activo = false;
    }

    public CalendarioEventos(int id, String nombre, String descripcion, String lugar_realizacion, String organizador, String costo, String informes, String hora_realizacion, Calendar fecha_realizacion, Calendar fecha_publicacion, boolean activo) {
        this.id = id;
        this.nombre = nombre;
        this.descripcion = descripcion;
        this.lugar_realizacion = lugar_realizacion;
        this.organizador = organizador;
        this.costo = costo;
        this.informes = informes;
        this.hora_realizacion = hora_realizacion;
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

    public String getLugar_realizacion() {
        return lugar_realizacion;
    }

    public void setLugar_realizacion(String lugar_realizacion) {
        this.lugar_realizacion = lugar_realizacion;
    }

    public String getOrganizador() {
        return organizador;
    }

    public void setOrganizador(String organizador) {
        this.organizador = organizador;
    }

    public String getCosto() {
        return costo;
    }

    public void setCosto(String costo) {
        this.costo = costo;
    }

    public String getInformes() {
        return informes;
    }

    public void setInformes(String informes) {
        this.informes = informes;
    }

    public String getHora_realizacion() {
        return hora_realizacion;
    }

    public void setHora_realizacion(String hora_realizacion) {
        this.hora_realizacion = hora_realizacion;
    }

    public Calendar getFecha_realizacion() {
        return fecha_realizacion;
    }

    public void setFecha_realizacion(Calendar fecha_realizacion) {
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

    public String getFecha_realizacion_formateda() {
        return mx.edu.uttab.util.Utilerias.getCadenaFechaLarga(this.fecha_realizacion);
    }

    public String getFecha_realizacion_css() {
        return mx.edu.uttab.util.Utilerias.getCadenaFechaLarga(this.fecha_realizacion).replace(" ", "_");
    }

    @Override
    public String toString() {
        return "CalendarioEventos{" + "id=" + id + ", nombre=" + nombre + ", descripcion=" + descripcion + ", lugar_realizacion=" + lugar_realizacion + ", organizador=" + organizador + ", costo=" + costo + ", informes=" + informes + ", hora_realizacion=" + hora_realizacion + ", fecha_realizacion=" + fecha_realizacion + ", fecha_publicacion=" + fecha_publicacion + ", activo=" + activo + '}';
    }

}
