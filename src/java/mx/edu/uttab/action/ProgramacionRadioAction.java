/**
 *
 * @author Roberto Eder Weiss Juárez
 * @see {@link http://webxico.blogspot.mx/}
 */
package mx.edu.uttab.action;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import mx.edu.uttab.dao.DAOFactory;
import mx.edu.uttab.dao.xml.programacion_radio.ProgramacionRadioDAO;
import mx.edu.uttab.dao.xml.programacion_radio.XMLProgramacionRadioDAO;
import mx.edu.uttab.model.ProgramacionRadio;
import org.apache.struts2.ServletActionContext;
/*import org.apache.struts2.convention.annotation.Action;
 import org.apache.struts2.convention.annotation.ParentPackage;
 import org.apache.struts2.convention.annotation.Result;*/
import org.apache.struts2.interceptor.ServletRequestAware;

//@ParentPackage(value ="sintonia")
public class ProgramacionRadioAction extends ActionSupport implements ModelDriven<ProgramacionRadio>, ServletRequestAware {

    private String rango_hora = "";
    private String dia_actual = "";
    private ProgramacionRadio programacion = new ProgramacionRadio();
    private List<ProgramacionRadio> programacionList = new ArrayList<ProgramacionRadio>();
    private ProgramacionRadioDAO programacionDAO = DAOFactory.getDAOFactory(DAOFactory.XML).getProgramacionRadioDAO();
    private HttpServletRequest servletRequest;

    public ProgramacionRadioAction() {
        if (programacionDAO instanceof XMLProgramacionRadioDAO) {
            ((XMLProgramacionRadioDAO) programacionDAO).setXMLpath(ServletActionContext.getServletContext().getRealPath("/") + "WEB-INF/programaciones_radio.xml");
        }
    }

    @Override
    public ProgramacionRadio getModel() {
        return programacion;
    }

    public ProgramacionRadio getProgramacion() {
        return programacion;
    }

    public void setProgramacion(ProgramacionRadio programacion) {
        this.programacion = programacion;
    }

    public List<ProgramacionRadio> getProgramacionList() {
        return programacionList;
    }

    public void setProgramacionList(List<ProgramacionRadio> programacionList) {
        this.programacionList = programacionList;
    }

    @Override
    public void setServletRequest(HttpServletRequest hsr) {
        this.servletRequest = hsr;
    }

    public String getRango_hora() {
        return rango_hora;
    }

    public void setRango_hora(String rango_hora) {
        this.rango_hora = rango_hora;
    }

    public String getDia_actual() {
        return dia_actual;
    }

    public void setDia_actual(String dia_actual) {
        this.dia_actual = dia_actual;
    }


    /*@Action(value = "/listProgramacionRadio", results = {
     @Result(name = "success", location = "/WEB-INF/jsp/otras_secciones/radio/radio.jsp"),
     @Result(name = "error", location = "/WEB-INF/jsp/error.jsp")
     })*/
    public String list() {
        programacionList = programacionDAO.findAll();
        return SUCCESS;
    }

    /*@Action(value = "/listProgramacionRadioAjax", results = {
     @Result(name = "success", location = "/WEB-INF/jsp/otras_secciones/radio/sintonia_ajax.jsp"),
     @Result(name = "error", location = "/WEB-INF/jsp/error.jsp")
     })*/
    public String listAjax() {
        Calendar fecha = Calendar.getInstance();
        int hora = fecha.get(Calendar.HOUR_OF_DAY);
        int minutos = fecha.get(Calendar.MINUTE);
        rango_hora = getRango(hora, minutos);
        dia_actual = getDiaActual();
        programacionList = programacionDAO.findBy(3, String.valueOf(hora));
        return SUCCESS;
    }

    private String getDiaActual() {
        String[] dias = {"Domingo", "Lunes", "Martes", "Miércoles", "Jueves", "Viernes", "Sábado"};
        Calendar fecha = Calendar.getInstance();
        int num_dia = fecha.get(Calendar.DAY_OF_WEEK);//Devuelve del 1 al 7, donde 1 es Domingo y 7 Sábado
        String dia = dias[num_dia - 1];
        return dia;
    }

    private String getRango(int hora, int minuto) {
        String rango = "";

        if (hora == 0 && minuto <= 30) {
            rango = "00:00-00:30";
        } else if ((hora == 0 && minuto <= 59)) {
            rango = "00:30-01:00";
        } else if (hora == 1 && minuto <= 30) {
            rango = "01:00-01:30";
        } else if ((hora == 1 && minuto <= 59)) {
            rango = "01:30-02:00";
        } else if (hora == 2 && minuto <= 30) {
            rango = "02:00-02:30";
        } else if ((hora == 2 && minuto <= 59)) {
            rango = "02:30-03:00";
        } else if (hora == 3 && minuto <= 30) {
            rango = "03:00-03:30";
        } else if ((hora == 3 && minuto <= 59)) {
            rango = "03:30-04:00";
        } else if (hora == 4 && minuto <= 30) {
            rango = "04:00-04:30";
        } else if ((hora == 4 && minuto <= 59)) {
            rango = "04:30-05:00";
        } else if (hora == 5 && minuto <= 30) {
            rango = "05:00-05:30";
        } else if ((hora == 5 && minuto <= 59)) {
            rango = "05:30-06:00";
        } else if (hora == 6 && minuto <= 30) {
            rango = "06:00-06:30";
        } else if ((hora == 6 && minuto <= 59)) {
            rango = "06:30-07:00";
        } else if (hora == 7 && minuto <= 30) {
            rango = "07:00-07:30";
        } else if ((hora == 7 && minuto <= 59)) {
            rango = "07:30-08:00";
        } else if (hora == 8 && minuto <= 30) {
            rango = "08:00-08:30";
        } else if ((hora == 8 && minuto <= 59)) {
            rango = "08:30-09:00";
        } else if (hora == 9 && minuto <= 30) {
            rango = "09:00-09:30";
        } else if ((hora == 9 && minuto <= 59)) {
            rango = "09:30-10:00";
        } else if (hora == 10 && minuto <= 30) {
            rango = "10:00-10:30";
        } else if ((hora == 10 && minuto <= 59)) {
            rango = "10:30-11:00";
        } else if (hora == 11 && minuto <= 30) {
            rango = "11:00-11:30";
        } else if ((hora == 11 && minuto <= 59)) {
            rango = "11:30-12:00";
        } else if (hora == 12 && minuto <= 30) {
            rango = "12:00-12:30";
        } else if ((hora == 12 && minuto <= 59)) {
            rango = "12:30-13:00";
        } else if (hora == 13 && minuto <= 30) {
            rango = "13:00-13:30";
        } else if ((hora == 13 && minuto <= 59)) {
            rango = "13:30-14:00";
        } else if (hora == 14 && minuto <= 30) {
            rango = "14:00-14:30";
        } else if ((hora == 14 && minuto <= 59)) {
            rango = "14:30-15:00";
        } else if (hora == 15 && minuto <= 30) {
            rango = "15:00-15:30";
        } else if ((hora == 15 && minuto <= 59)) {
            rango = "15:30-16:00";
        } else if (hora == 16 && minuto <= 30) {
            rango = "16:00-16:30";
        } else if ((hora == 16 && minuto <= 59)) {
            rango = "16:30-17:00";
        } else if (hora == 17 && minuto <= 30) {
            rango = "17:00-17:30";
        } else if ((hora == 17 && minuto <= 59)) {
            rango = "17:30-18:00";
        } else if (hora == 18 && minuto <= 30) {
            rango = "18:00-18:30";
        } else if ((hora == 18 && minuto <= 59)) {
            rango = "18:30-19:00";
        } else if (hora == 19 && minuto <= 30) {
            rango = "19:00-19:30";
        } else if ((hora == 19 && minuto <= 59)) {
            rango = "19:30-20:00";
        } else if (hora == 20 && minuto <= 30) {
            rango = "20:00-20:30";
        } else if ((hora == 20 && minuto <= 59)) {
            rango = "20:30-21:00";
        } else if (hora == 21 && minuto <= 30) {
            rango = "21:00-21:30";
        } else if ((hora == 21 && minuto <= 59)) {
            rango = "21:30-22:00";
        } else if (hora == 22 && minuto <= 30) {
            rango = "22:00-22:30";
        } else if ((hora == 22 && minuto <= 59)) {
            rango = "22:30-23:00";
        } else if (hora == 23 && minuto <= 30) {
            rango = "23:00-23:30";
        } else if ((hora == 23 && minuto <= 59)) {
            rango = "23:30-00:00";
        }
        return rango;

    }

}