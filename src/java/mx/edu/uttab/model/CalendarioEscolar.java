/**
 *
 * @author Roberto Eder Weiss Juárez
 * @see {@link http://webxico.blogspot.mx/}
 */
package mx.edu.uttab.model;

import java.io.Serializable;

public class CalendarioEscolar implements Serializable {

    private int id;
    private String mes;

    public CalendarioEscolar() {
        this.id = 0;
        this.mes = "";
    }

    public CalendarioEscolar(int id, String mes) {
        this.id = id;
        this.mes = mes;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getMes() {
        return mes;
    }

    public void setMes(String mes) {
        this.mes = mes;
    }

    @Override
    public String toString() {
        return "CalendarioEscolar{" + "id=" + id + ", mes=" + mes + '}';
    }

}
