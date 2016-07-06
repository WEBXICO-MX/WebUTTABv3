/**
 *
 * @author Roberto Eder Weiss Juárez
 * @see {@link http://webxico.blogspot.mx/}
 */
package mx.edu.uttab.model;

import java.io.Serializable;

public class ContactoOfertaServicio implements Serializable {

    private int id;
    private int tipo;
    private String nombre;
    private String puesto;
    private String tel;
    private String email;
    private String horario;
    private boolean activo;

    public ContactoOfertaServicio() {
    }

    public ContactoOfertaServicio(int id) {
        this.id = id;
    }

    public ContactoOfertaServicio(int id, int tipo, String nombre, String puesto, String tel, String email, String horario, boolean activo) {
        this.id = id;
        this.tipo = tipo;
        this.nombre = nombre;
        this.puesto = puesto;
        this.tel = tel;
        this.email = email;
        this.horario = horario;
        this.activo = activo;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getTipo() {
        return tipo;
    }

    public void setTipo(int tipo) {
        this.tipo = tipo;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getPuesto() {
        return puesto;
    }

    public void setPuesto(String puesto) {
        this.puesto = puesto;
    }

    public String getTel() {
        return tel;
    }

    public void setTel(String tel) {
        this.tel = tel;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getHorario() {
        return horario;
    }

    public void setHorario(String horario) {
        this.horario = horario;
    }

    public boolean isActivo() {
        return activo;
    }

    public void setActivo(boolean activo) {
        this.activo = activo;
    }

    @Override
    public String toString() {
        return "ContactoOfertaServicio{" + "id=" + id + ", tipo=" + tipo + ", nombre=" + nombre + ", puesto=" + puesto + ", tel=" + tel + ", email=" + email + ", horario=" + horario + ", activo=" + activo + '}';
    }

}
