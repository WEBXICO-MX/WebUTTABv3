/**
 *
 * @author Roberto Eder Weiss Juárez
 * @see {@link http://webxico.blogspot.mx/}
 */
package mx.edu.uttab.model;

import java.io.Serializable;
import java.util.Calendar;

public class OfertaEmpleo implements Serializable {

    private int id;
    private String nombre_empresa;
    private String img_empresa;
    private String descripcion_oferta;
    private String puesto;
    private String requisitos;
    private String vacantes;
    private Calendar fecha_publicacion;
    private boolean activo;

    public OfertaEmpleo() {
    }

    public OfertaEmpleo(int id) {
        this.id = id;
    }

    public OfertaEmpleo(int id, String nombre_empresa, String img_empresa, String descripcion_oferta, String puesto, String requisitos, String vacantes, Calendar fecha_publicacion, boolean activo) {
        this.id = id;
        this.nombre_empresa = nombre_empresa;
        this.img_empresa = img_empresa;
        this.descripcion_oferta = descripcion_oferta;
        this.puesto = puesto;
        this.requisitos = requisitos;
        this.vacantes = vacantes;
        this.fecha_publicacion = fecha_publicacion;
        this.activo = activo;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNombre_empresa() {
        return nombre_empresa;
    }

    public void setNombre_empresa(String nombre_empresa) {
        this.nombre_empresa = nombre_empresa;
    }

    public String getImg_empresa() {
        return img_empresa;
    }

    public void setImg_empresa(String img_empresa) {
        this.img_empresa = img_empresa;
    }

    public String getDescripcion_oferta() {
        return descripcion_oferta;
    }

    public void setDescripcion_oferta(String descripcion_oferta) {
        this.descripcion_oferta = descripcion_oferta;
    }

    public String getPuesto() {
        return puesto;
    }

    public void setPuesto(String puesto) {
        this.puesto = puesto;
    }

    public String getRequisitos() {
        return requisitos;
    }

    public void setRequisitos(String requisitos) {
        this.requisitos = requisitos;
    }

    public String getVacantes() {
        return vacantes;
    }

    public void setVacantes(String vacantes) {
        this.vacantes = vacantes;
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
        return "OfertaEmpleo{" + "id=" + id + ", nombre_empresa=" + nombre_empresa + ", img_empresa=" + img_empresa + ", descripcion_oferta=" + descripcion_oferta + ", puesto=" + puesto + ", requisitos=" + requisitos + ", vacantes=" + vacantes + ", fecha_publicacion=" + fecha_publicacion + ", activo=" + activo + '}';
    }

}
