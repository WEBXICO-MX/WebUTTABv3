/**
 *
 * @author Roberto Eder Weiss Juárez
 * @see {@link http://webxico.blogspot.mx/}
 */
package mx.edu.uttab.model.CASE;

import java.io.Serializable;
import java.util.Calendar;
import mx.edu.uttab.util.Utilerias;

public class CalendarioCapacitacion implements Serializable {

    private int id;
    private Capacitacion capacitacion;
    private String fechas;
    private boolean activo;

    public CalendarioCapacitacion() {
        this.id = 0;
        this.capacitacion = null;
        this.fechas = "";
        this.activo = false;
    }

    public CalendarioCapacitacion(int id, Capacitacion capacitacion, String fechas, boolean activo) {
        this.id = id;
        this.capacitacion = capacitacion;
        this.fechas = fechas;
        this.activo = activo;
    }

    public String getHola() {
        String r = "hola";
        Calendar inicio = Calendar.getInstance();
        Calendar fin = Calendar.getInstance();
        String[] mtz = fechas.replace("[", "").replace("]", "").replace("'", "").split(",");
        String[] i = mtz[0].split("/");
        String[] f = mtz[mtz.length - 1].split("/");
        //mes/dia/año
        //set(int year, int month, int date
        inicio.set(Integer.parseInt(i[2]), Integer.parseInt(i[0]) -1, Integer.parseInt(i[1]));
        fin.set(Integer.parseInt(f[2]), Integer.parseInt(f[0]) -1, Integer.parseInt(f[1]));
        r = "Del: "+Utilerias.getCadenaFecha(inicio) + " al: " + Utilerias.getCadenaFecha(fin);
        return r;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public Capacitacion getCapacitacion() {
        return capacitacion;
    }

    public void setCapacitacion(Capacitacion capacitacion) {
        this.capacitacion = capacitacion;
    }

    public String getFechas() {
        return fechas;
    }

    public void setFechas(String fechas) {
        this.fechas = fechas;
    }

    public boolean isActivo() {
        return activo;
    }

    public void setActivo(boolean activo) {
        this.activo = activo;
    }

    @Override
    public String toString() {
        return "CaseCalendarioCapacitacion{" + "id=" + id + ", capacitacion=" + capacitacion + ", fechas=" + fechas + ", activo=" + activo + '}';
    }

}
