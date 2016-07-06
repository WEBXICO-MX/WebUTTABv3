/**
 *
 * @author Roberto Eder Weiss Juárez
 * @see {@link http://webxico.blogspot.mx/}
 */
package mx.edu.uttab.action;

import static com.opensymphony.xwork2.Action.SUCCESS;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import leerdirectorio.Utilerias;
import mx.edu.uttab.dao.DAOFactory;
import mx.edu.uttab.dao.xml.calendarioeventos.CalendarioEventosDAO;
import mx.edu.uttab.dao.xml.calendarioeventos.XMLCalendarioEventosDAO;
import mx.edu.uttab.model.CalendarioEventos;
import org.apache.struts2.ServletActionContext;
import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Result;

/**
 *
 * @author Eder Weiss
 */
public class CalendarioEventosAction extends ActionSupport implements ModelDriven {

    private CalendarioEventos calendario = new CalendarioEventos();
    private List<CalendarioEventos> calendarioList = new ArrayList<CalendarioEventos>();
    private CalendarioEventosDAO calendarioDAO = DAOFactory.getDAOFactory(DAOFactory.XML).getCalendarioEventosDAO();
    private String fecha_completa = "";
    private String semana_completa = "";
    private String cadena_fechas_dias_semana = "";
    DateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");

    public CalendarioEventosAction() {
        if (calendarioDAO instanceof XMLCalendarioEventosDAO) {
            ((XMLCalendarioEventosDAO) calendarioDAO).setXMLpath(ServletActionContext.getServletContext().getRealPath("/") + "WEB-INF/calendario_eventos.xml");
        }
    }

    @Override
    public Object getModel() {
        return calendario;
    }

    public CalendarioEventos getCalendario() {
        return calendario;
    }

    public void setCalendario(CalendarioEventos calendario) {
        this.calendario = calendario;
    }

    public List<CalendarioEventos> getCalendarioList() {
        return calendarioList;
    }

    public void setCalendarioList(List<CalendarioEventos> calendarioList) {
        this.calendarioList = calendarioList;
    }

    public String getFecha_completa() {
        return fecha_completa;
    }

    public void setFecha_completa(String fecha_completa) {
        this.fecha_completa = fecha_completa;
    }

    public String getSemana_completa() {
        return semana_completa;
    }

    public void setSemana_completa(String semana_completa) {
        this.semana_completa = semana_completa;
    }

    public String getCadena_fechas_dias_semana() {
        return cadena_fechas_dias_semana;
    }

    public void setCadena_fechas_dias_semana(String cadena_fechas_dias_semana) {
        this.cadena_fechas_dias_semana = cadena_fechas_dias_semana;
    }

    private String getStringSemanaCompleta(String inicio, String fin, DateFormat formatter) throws ParseException {
        Date date = formatter.parse(inicio);
        Calendar cal = Calendar.getInstance();
        cal.setTime(date);
        String tmp = Utilerias.getCadenaFechaLarga(cal) + " - ";

        date = formatter.parse(fin);
        cal = Calendar.getInstance();
        cal.setTime(date);
        tmp += Utilerias.getCadenaFechaLarga(cal);
        return tmp;
    }

    private String getFechasDiasSemana(String inicio) throws ParseException {
        String lista = "";
        Date date = formatter.parse(inicio);
        Calendar cal = Calendar.getInstance();
        cal.setTime(date);
        String[] days = new String[7];
        int delta = -cal.get(GregorianCalendar.DAY_OF_WEEK) + 1; //add 2 if your week start on monday
        cal.add(Calendar.DAY_OF_MONTH, delta);
        for (int i = 0; i < 7; i++) {
            days[i] = formatter.format(cal.getTime());
            cal.add(Calendar.DAY_OF_MONTH, 1);
        }
        int i = 0;
        for (String day : days) {
            Date date2 = formatter.parse(day);
            Calendar cal2 = Calendar.getInstance();
            cal2.setTime(date2);
            if (!(i == days.length - 1)) {
                lista += Utilerias.getCadenaFechaLarga(cal2) + ",";
            } else {
                lista += Utilerias.getCadenaFechaLarga(cal2);
            }
            i++;
        }

        return lista;
    }

    @Action(value = "/listCalendarioEventosByDiaMesAnio", results = {
        @Result(name = "success", location = "/WEB-INF/jsp/otras_secciones/calendario_eventos_ajax.jsp"),
        @Result(name = "error", location = "/WEB-INF/jsp/error.jsp")})
    public String listCalendarioEventosByDiaMesAnio() {
        HttpServletRequest request = (HttpServletRequest) ActionContext.getContext().get(ServletActionContext.HTTP_REQUEST);
        String dia = request.getParameter("dia");
        String mes = request.getParameter("mes");
        String dayOfWeek = request.getParameter("dayOfWeek");
        String mes_nombre = request.getParameter("mes_nombre");
        int anio = Integer.parseInt(request.getParameter("anio"));
        fecha_completa = dayOfWeek + " " + dia + " de " + mes_nombre + " de " + anio;
        calendarioList = calendarioDAO.findByDiaMesAnio(dia, mes, anio, true);
        return SUCCESS;
    }

    @Action(value = "/listCalendarioEventosBySemana", results = {
        @Result(name = "success", location = "/WEB-INF/jsp/otras_secciones/calendario_eventos_semanal_ajax.jsp"),
        @Result(name = "error", location = "/WEB-INF/jsp/error.jsp")})
    public String listCalendarioEventosBySemana() throws ParseException {
        HttpServletRequest request = (HttpServletRequest) ActionContext.getContext().get(ServletActionContext.HTTP_REQUEST);
        String inicio = request.getParameter("inicio");
        String fin = request.getParameter("fin");

        semana_completa = getStringSemanaCompleta(inicio, fin, formatter);
        cadena_fechas_dias_semana = getFechasDiasSemana(inicio);

        calendarioList = calendarioDAO.findBySemana(inicio, fin);
        //System.out.println("listCalendarioEventosBySemana(), inicio= " + inicio + ", fin = " + fin + ", semana_competa = " + semana_completa);
        return SUCCESS;
    }

    @Action(value = "/listCalendarioEventosByMes", results = {
        @Result(name = "success", location = "/WEB-INF/jsp/otras_secciones/calendario_eventos_mensual_ajax.jsp"),
        @Result(name = "error", location = "/WEB-INF/jsp/error.jsp")})
    public String listCalendarioEventosByMes() throws ParseException {
        HttpServletRequest request = (HttpServletRequest) ActionContext.getContext().get(ServletActionContext.HTTP_REQUEST);
        String inicio = request.getParameter("inicio_mes");
        String fin = request.getParameter("fin_mes");
        calendarioList = calendarioDAO.findByMes(inicio, fin);
        return SUCCESS;
    }

    @Action(value = "/getCalendarioEventosByID", results = {
        @Result(name = "success", location = "/WEB-INF/jsp/otras_secciones/calendario_eventos_id_ajax.jsp"),
        @Result(name = "error", location = "/WEB-INF/jsp/error.jsp")})
    public String getCalendarioEventosByID() {
        HttpServletRequest request = (HttpServletRequest) ActionContext.getContext().get(ServletActionContext.HTTP_REQUEST);
        int id = Integer.parseInt(request.getParameter("i"));
        calendario = calendarioDAO.findById(id);
        return SUCCESS;
    }

}
