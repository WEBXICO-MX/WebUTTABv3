/**
 *
 * @author Roberto Eder Weiss Juárez
 * @see {@link http://webxico.blogspot.mx/}
 */
package mx.edu.uttab.model;

import java.io.Serializable;

public class Persona implements Serializable {

    private int id;
    private String destino;
    private String nombre;
    private String puesto;
    private String tel;
    private String email;
    private String img;
    private boolean activo;

    public Persona() {
    }

    public Persona(int id) {
        this.id = id;
    }

    public Persona(int id, String destino, String nombre, String puesto, String tel, String email, String img, boolean activo) {
        this.id = id;
        this.destino = destino;
        this.nombre = nombre;
        this.puesto = puesto;
        this.tel = tel;
        this.email = email;
        this.img = img;
        this.activo = activo;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getDestino() {
        return destino;
    }

    public void setDestino(String destino) {
        this.destino = destino;
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

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }

    public boolean isActivo() {
        return activo;
    }

    public void setActivo(boolean activo) {
        this.activo = activo;
    }

    @Override
    public String toString() {
        return "Persona{" + "id=" + id + ", destino=" + destino + ", nombre=" + nombre + ", puesto=" + puesto + ", tel=" + tel + ", email=" + email + ", img=" + img + ", activo=" + activo + '}';
    }

}
