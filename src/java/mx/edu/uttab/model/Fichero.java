/**
 *
 * @author Weisß
 */
package mx.edu.uttab.model;

import java.io.Serializable;

public class Fichero implements Serializable {

    private int id;
    private String destino;
    private String nombre;
    private String ruta;
    private String mime;
    private boolean activo;

    public Fichero() {
        this.id = 0;
        this.destino = "";
        this.nombre = "";
        this.ruta = "";
        this.mime = "";
        this.activo = false;
    }

    public Fichero(int id, String destino, String nombre, String ruta, String mime, boolean activo) {
        this.id = id;
        this.destino = destino;
        this.nombre = nombre;
        this.ruta = ruta;
        this.mime = mime;
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

    public String getRuta() {
        return ruta;
    }

    public void setRuta(String ruta) {
        this.ruta = ruta;
    }

    public String getMime() {
        return mime;
    }

    public void setMime(String mime) {
        this.mime = mime;
    }

    public boolean isActivo() {
        return activo;
    }

    public void setActivo(boolean activo) {
        this.activo = activo;
    }

    @Override
    public String toString() {
        return "Fichero{" + "id=" + id + ", destino=" + destino + ", nombre=" + nombre + ", ruta=" + ruta + ", mime=" + mime + ", activo=" + activo + '}';
    }

}
