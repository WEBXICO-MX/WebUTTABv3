/**
 *
 * @author Roberto Eder Weiss Juárez
 * @see {@link http://webxico.blogspot.mx/}
 */
package mx.edu.uttab.action;

import static com.opensymphony.xwork2.Action.SUCCESS;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import mx.edu.uttab.dao.DAOFactory;
import mx.edu.uttab.dao.xml.CASE.CalendarioCapacitacionDAO;
import mx.edu.uttab.dao.xml.CASE.CapacitacionDAO;
import mx.edu.uttab.dao.xml.CASE.RegistroDAO;
import mx.edu.uttab.dao.xml.CASE.SectorProductivoDAO;
import mx.edu.uttab.dao.xml.CASE.TipoCapacitacionDAO;
import mx.edu.uttab.dao.xml.CASE.TipoInscripcionDAO;
import mx.edu.uttab.dao.xml.CASE.XMLCalendarioCapacitacionDAO;
import mx.edu.uttab.dao.xml.CASE.XMLCapacitacionDAO;
import mx.edu.uttab.dao.xml.CASE.XMLRegistroDAO;
import mx.edu.uttab.dao.xml.CASE.XMLSectorProductivoDAO;
import mx.edu.uttab.dao.xml.CASE.XMLTipoCapacitacionDAO;
import mx.edu.uttab.dao.xml.CASE.XMLTipoInscripcionDAO;
import mx.edu.uttab.model.CASE.CalendarioCapacitacion;
import mx.edu.uttab.model.CASE.Capacitacion;
import mx.edu.uttab.model.CASE.Registro;
import mx.edu.uttab.model.CASE.SectorProductivo;
import mx.edu.uttab.model.CASE.TipoCapacitacion;
import mx.edu.uttab.model.CASE.TipoInscripcion;
import org.apache.struts2.ServletActionContext;
import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.interceptor.validation.SkipValidation;

public class CaseAction extends ActionSupport implements ModelDriven<Capacitacion>, ServletRequestAware {

    private Capacitacion capacitacion = new Capacitacion();
    private CalendarioCapacitacion c_capacitacion = new CalendarioCapacitacion();
    private Registro registro = new Registro();
    Map<String, Object> result = new HashMap<>();

    private List<CalendarioCapacitacion> calendarioList = new ArrayList<>();
    private List<TipoInscripcion> t_inscripcionList = new ArrayList<>();
    private List<SectorProductivo> s_productivoList = new ArrayList<>();

    private final TipoCapacitacionDAO tipo_capacitacionDAO = DAOFactory.getDAOFactory(DAOFactory.XML).getTipoCapacitacionDAO();
    private final CapacitacionDAO capacitacionDAO = DAOFactory.getDAOFactory(DAOFactory.XML).getCapacitacionDAO();
    private final CalendarioCapacitacionDAO calendarioDAO = DAOFactory.getDAOFactory(DAOFactory.XML).getCalendarioCapacitacionDAO();
    private final RegistroDAO registroDAO = DAOFactory.getDAOFactory(DAOFactory.XML).getRegistroDAO();
    private final TipoInscripcionDAO t_inscripcionDAO = DAOFactory.getDAOFactory(DAOFactory.XML).getTipoInscripcioDAO();
    private final SectorProductivoDAO s_productivoDAO = DAOFactory.getDAOFactory(DAOFactory.XML).getSectorProductivoDAO();

    private HttpServletRequest servletRequest;

    public CaseAction() {
        if (tipo_capacitacionDAO instanceof XMLTipoCapacitacionDAO) {
            ((XMLTipoCapacitacionDAO) tipo_capacitacionDAO).setXMLpath(ServletActionContext.getServletContext().getRealPath("/") + "WEB-INF/case_tipos_capacitacion.xml");
        }

        if (capacitacionDAO instanceof XMLCapacitacionDAO) {
            ((XMLCapacitacionDAO) capacitacionDAO).setXMLpath(ServletActionContext.getServletContext().getRealPath("/") + "WEB-INF/case_capacitaciones.xml");
        }

        if (calendarioDAO instanceof XMLCalendarioCapacitacionDAO) {
            ((XMLCalendarioCapacitacionDAO) calendarioDAO).setXMLpath(ServletActionContext.getServletContext().getRealPath("/") + "WEB-INF/case_calendario_capacitaciones.xml");
        }

        if (registroDAO instanceof XMLRegistroDAO) {
            ((XMLRegistroDAO) registroDAO).setXMLpath(ServletActionContext.getServletContext().getRealPath("/") + "WEB-INF/case_registros.xml");
        }

        if (t_inscripcionDAO instanceof XMLTipoInscripcionDAO) {
            ((XMLTipoInscripcionDAO) t_inscripcionDAO).setXMLpath(ServletActionContext.getServletContext().getRealPath("/") + "WEB-INF/case_tipos_inscripcion.xml");
        }
        
        if (s_productivoDAO instanceof XMLSectorProductivoDAO) {
            ((XMLSectorProductivoDAO) s_productivoDAO).setXMLpath(ServletActionContext.getServletContext().getRealPath("/") + "WEB-INF/case_sectores_productivos.xml");
        }
    }

    @SkipValidation
    public String muestraCapacitaciones() {
        Map<String, Object> tipos_capacitaciones = new LinkedHashMap<>();

        for (TipoCapacitacion tipo : tipo_capacitacionDAO.findAll()) {
            List<Capacitacion> capacitaciones = new ArrayList();
            for (Capacitacion cap : capacitacionDAO.findByTipo(tipo.getId())) {
                capacitaciones.add(cap);
            }
            tipos_capacitaciones.put(tipo.getNombre(), capacitaciones);
        }
        result.put("result", tipos_capacitaciones);
        return SUCCESS;

    }

    @SkipValidation
    public String muestraCalendario() {
        capacitacion = capacitacionDAO.findById(capacitacion.getId());
        calendarioList = calendarioDAO.findByCapacitacion(capacitacion.getId());
        return SUCCESS;
    }

    @SkipValidation
    public String muestraRegistro() {

        c_capacitacion = calendarioDAO.findById(c_capacitacion.getId() != 0 ? c_capacitacion.getId() : Integer.parseInt(this.servletRequest.getParameter("id")));
        t_inscripcionList = t_inscripcionDAO.findAll();
        s_productivoList = s_productivoDAO.findAll();
        return SUCCESS;
    }

    public String guardarRegistro() {
        boolean grabo = registroDAO.saveOrUpdate(registro);

        if (!grabo) {
            addActionError("[ERROR] Registro no guardado.");
            return ERROR;
        } else {
            addActionMessage("Registro guardado con éxito. En breve nos pondremos en contacto con usted por alguno de los medios que nos proporciono. Gracias.");
            return SUCCESS;
        }

    }

    public Map<String, Object> getResult() {
        return result;
    }

    @Override
    public Capacitacion getModel() {
        return capacitacion;
    }

    public Capacitacion getCapacitacion() {
        return capacitacion;
    }

    public void setCapacitacion(Capacitacion capacitacion) {
        this.capacitacion = capacitacion;
    }

    public CalendarioCapacitacion getC_capacitacion() {
        return c_capacitacion;
    }

    public void setC_capacitacion(CalendarioCapacitacion c_capacitacion) {
        this.c_capacitacion = c_capacitacion;
    }

    public Registro getRegistro() {
        return registro;
    }

    public void setRegistro(Registro registro) {
        this.registro = registro;
    }

    public List<CalendarioCapacitacion> getCalendarioList() {
        return calendarioList;
    }

    public void setCalendarioList(List<CalendarioCapacitacion> calendarioList) {
        this.calendarioList = calendarioList;
    }

    public List<TipoInscripcion> getT_inscripcionList() {
        return t_inscripcionList;
    }

    public void setT_inscripcionList(List<TipoInscripcion> t_inscripcionList) {
        this.t_inscripcionList = t_inscripcionList;
    }

    public List<SectorProductivo> getS_productivoList() {
        return s_productivoList;
    }

    public void setS_productivoList(List<SectorProductivo> s_productivoList) {
        this.s_productivoList = s_productivoList;
    }

    @Override
    public void setServletRequest(HttpServletRequest hsr) {
        this.servletRequest = hsr;
    }

    @Override
    public void validate() {
        if (registro.getNombre().equals("")) {
            addActionError("El campo nombre dede tener una valor diferente de vacío");
        }
        if (registro.getApellido_pat().equals("")) {
            addActionError("El campo apellido paterno dede tener una valor diferente de vacío");
        }
        if (registro.getApellido_mat().equals("")) {
            addActionError("El campo apellido materno dede tener una valor diferente de vacío");
        }
        if (registro.getSexo().equals("")) {
            addActionError("Debe seleccionar un sexo.");
        }
        if (registro.getFecha_nacimiento().equals("")) {
            addActionError("El campo fecha de nacimiento dede tener una valor diferente de vacío");
        }
        if (registro.getEmail().equals("")) {
            addActionError("El campo email dede tener una valor diferente de vacío");
        }
        if (registro.getCel().equals("")) {
            addActionError("El campo cel dede tener una valor diferente de vacío");
        }
    }

}