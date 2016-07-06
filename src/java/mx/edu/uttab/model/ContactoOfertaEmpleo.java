/**
 *
 * @author Roberto Eder Weiss Juárez
 * @see {@link http://webxico.blogspot.mx/}
 */
package mx.edu.uttab.model;

import java.io.Serializable;

public class ContactoOfertaEmpleo implements Serializable {

    private int id;
    private String nombre;
    private String puesto;
    private String tel;
    private String email;
    private String horario;
    private boolean activo;

    public ContactoOfertaEmpleo() {
    }

    public ContactoOfertaEmpleo(int id) {
        this.id = id;
    }

    public ContactoOfertaEmpleo(int id, String nombre, String puesto, String tel, String email, String horario, boolean activo) {
        this.id = id;
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
        return "ContactoOfertaEmpleo{" + "id=" + id + ", nombre=" + nombre + ", puesto=" + puesto + ", tel=" + tel + ", email=" + email + ", horario=" + horario + ", activo=" + activo + '}';
    }



}
