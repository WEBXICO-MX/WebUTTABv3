/**
 *
 * @author Roberto Eder Weiss Juárez
 * @see {@link http://webxico.blogspot.mx/}
 */
package mx.edu.uttab.model;

import java.io.Serializable;

public class ProgramacionRadio implements Serializable {

    private int id;
    private String horario;
    private ProgramaRadio lunes;
    private ProgramaRadio martes;
    private ProgramaRadio miercoles;
    private ProgramaRadio jueves;
    private ProgramaRadio viernes;
    private ProgramaRadio sabado;
    private ProgramaRadio domingo;
    private boolean activo;

    public ProgramacionRadio() {
    }

    public ProgramacionRadio(int id, String horario, ProgramaRadio lunes, ProgramaRadio martes, ProgramaRadio miercoles, ProgramaRadio jueves, ProgramaRadio viernes, ProgramaRadio sabado, ProgramaRadio domingo, boolean activo) {
        this.id = id;
        this.horario = horario;
        this.lunes = lunes;
        this.martes = martes;
        this.miercoles = miercoles;
        this.jueves = jueves;
        this.viernes = viernes;
        this.sabado = sabado;
        this.domingo = domingo;
        this.activo = activo;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getHorario() {
        return horario;
    }

    public void setHorario(String horario) {
        this.horario = horario;
    }

    public ProgramaRadio getLunes() {
        return lunes;
    }

    public void setLunes(ProgramaRadio lunes) {
        this.lunes = lunes;
    }

    public ProgramaRadio getMartes() {
        return martes;
    }

    public void setMartes(ProgramaRadio martes) {
        this.martes = martes;
    }

    public ProgramaRadio getMiercoles() {
        return miercoles;
    }

    public void setMiercoles(ProgramaRadio miercoles) {
        this.miercoles = miercoles;
    }

    public ProgramaRadio getJueves() {
        return jueves;
    }

    public void setJueves(ProgramaRadio jueves) {
        this.jueves = jueves;
    }

    public ProgramaRadio getViernes() {
        return viernes;
    }

    public void setViernes(ProgramaRadio viernes) {
        this.viernes = viernes;
    }

    public ProgramaRadio getSabado() {
        return sabado;
    }

    public void setSabado(ProgramaRadio sabado) {
        this.sabado = sabado;
    }

    public ProgramaRadio getDomingo() {
        return domingo;
    }

    public void setDomingo(ProgramaRadio domingo) {
        this.domingo = domingo;
    }

    public boolean isActivo() {
        return activo;
    }

    public void setActivo(boolean activo) {
        this.activo = activo;
    }

    @Override
    public String toString() {
        return "ProgramacionRadio{" + "id=" + id + ", horario=" + horario + ", lunes=" + lunes + ", martes=" + martes + ", miercoles=" + miercoles + ", jueves=" + jueves + ", viernes=" + viernes + ", sabado=" + sabado + ", domingo=" + domingo + ", activo=" + activo + '}';
    }

}