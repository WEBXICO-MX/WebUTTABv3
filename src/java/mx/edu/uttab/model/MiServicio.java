/**
 *
 * @author Roberto Eder Weiss Juárez
 * @see {@link http://webxico.blogspot.mx/}
 */
package mx.edu.uttab.model;

import java.io.Serializable;

public class MiServicio implements Serializable{

    private int id;
    private String nombre;
    private String img;
    private String link;
    private boolean activo;

    public MiServicio() {
    }

    public MiServicio(int id, String nombre, String img, String link, boolean activo) {
        this.id = id;
        this.nombre = nombre;
        this.img = img;
        this.link = link;
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

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }

    public String getLink() {
        return link;
    }

    public void setLink(String link) {
        this.link = link;
    }

    public boolean isActivo() {
        return activo;
    }

    public void setActivo(boolean activo) {
        this.activo = activo;
    }

    @Override
    public String toString() {
        return "MiServicio{" + "id=" + id + ", nombre=" + nombre + ", img=" + img + ", link=" + link + ", activo=" + activo + '}';
    }

}
