/**
 *
 * @author Roberto Eder Weiss Juárez
 * @see {@link http://webxico.blogspot.mx/}
 */
package mx.edu.uttab.model.CASE;

import java.io.Serializable;

public class Registro implements Serializable {

    private int id;
    private CalendarioCapacitacion calendario_capacitacion;
    private TipoInscripcion tipo_inscripcion;
    private SectorProductivo sector_productivo;
    private int status;
    private String nombre_empresa;
    private String nombre;
    private String apellido_pat;
    private String apellido_mat;
    private String fecha_nacimiento;
    private String sexo;
    private String email;
    private String tel;
    private String cel;
    private String fecha_registro;
    private String fecha_modificacion;
    private boolean activo;

    public Registro() {
        this.id = 0;
        this.calendario_capacitacion = null;
        this.tipo_inscripcion = null;
        this.sector_productivo = null;
        this.status = 0;
        this.nombre_empresa = "";
        this.nombre = "";
        this.apellido_pat = "";
        this.apellido_mat = "";
        this.fecha_nacimiento = "";
        this.sexo = "";
        this.email = "";
        this.tel = "";
        this.cel = "";
        this.fecha_registro = "";
        this.fecha_modificacion = "";
        this.activo = false;
    }

    public Registro(int id, CalendarioCapacitacion calendario_capacitacion, TipoInscripcion tipo_inscripcion, SectorProductivo sector_productivo, int status, String nombre_empresa, String nombre, String apellido_pat, String apellido_mat, String fecha_nacimiento, String sexo, String email, String tel, String cel, String fecha_registro, String fecha_modificacion, boolean activo) {
        this.id = id;
        this.calendario_capacitacion = calendario_capacitacion;
        this.tipo_inscripcion = tipo_inscripcion;
        this.sector_productivo = sector_productivo;
        this.status = status;
        this.nombre_empresa = nombre_empresa;
        this.nombre = nombre;
        this.apellido_pat = apellido_pat;
        this.apellido_mat = apellido_mat;
        this.fecha_nacimiento = fecha_nacimiento;
        this.sexo = sexo;
        this.email = email;
        this.tel = tel;
        this.cel = cel;
        this.fecha_registro = fecha_registro;
        this.fecha_modificacion = fecha_modificacion;
        this.activo = activo;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public CalendarioCapacitacion getCalendario_capacitacion() {
        return calendario_capacitacion;
    }

    public void setCalendario_capacitacion(CalendarioCapacitacion calendario_capacitacion) {
        this.calendario_capacitacion = calendario_capacitacion;
    }

    public TipoInscripcion getTipo_inscripcion() {
        return tipo_inscripcion;
    }

    public void setTipo_inscripcion(TipoInscripcion tipo_inscripcion) {
        this.tipo_inscripcion = tipo_inscripcion;
    }

    public SectorProductivo getSector_productivo() {
        return sector_productivo;
    }

    public void setSector_productivo(SectorProductivo sector_productivo) {
        this.sector_productivo = sector_productivo;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public String getNombre_empresa() {
        return nombre_empresa;
    }

    public void setNombre_empresa(String nombre_empresa) {
        this.nombre_empresa = nombre_empresa;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getApellido_pat() {
        return apellido_pat;
    }

    public void setApellido_pat(String apellido_pat) {
        this.apellido_pat = apellido_pat;
    }

    public String getApellido_mat() {
        return apellido_mat;
    }

    public void setApellido_mat(String apellido_mat) {
        this.apellido_mat = apellido_mat;
    }

    public String getFecha_nacimiento() {
        return fecha_nacimiento;
    }

    public void setFecha_nacimiento(String fecha_nacimiento) {
        this.fecha_nacimiento = fecha_nacimiento;
    }

    public String getSexo() {
        return sexo;
    }

    public void setSexo(String sexo) {
        this.sexo = sexo;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getTel() {
        return tel;
    }

    public void setTel(String tel) {
        this.tel = tel;
    }

    public String getCel() {
        return cel;
    }

    public void setCel(String cel) {
        this.cel = cel;
    }

    public String getFecha_registro() {
        return this.fecha_registro;
    }

    public void setFecha_registro(String fecha_registro) {
        this.fecha_registro = fecha_registro;
    }

    public String getFecha_modificacion() {
        return fecha_modificacion;
    }

    public void setFecha_modificacion(String fecha_modificacion) {
        this.fecha_modificacion = fecha_modificacion;
    }

    public boolean isActivo() {
        return activo;
    }

    public void setActivo(boolean activo) {
        this.activo = activo;
    }

    @Override
    public String toString() {
        return "Registro{" + "id=" + id + ", calendario_capacitacion=" + calendario_capacitacion + ", tipo_inscripcion=" + tipo_inscripcion + ", sector_productivo=" + sector_productivo + ", status=" + status + ", nombre_empresa=" + nombre_empresa + ", nombre=" + nombre + ", apellido_pat=" + apellido_pat + ", apellido_mat=" + apellido_mat + ", fecha_nacimiento=" + fecha_nacimiento + ", sexo=" + sexo + ", email=" + email + ", tel=" + tel + ", cel=" + cel + ", fecha_registro=" + fecha_registro + ", fecha_modificacion=" + fecha_modificacion + ", activo=" + activo + '}';
    }

}
