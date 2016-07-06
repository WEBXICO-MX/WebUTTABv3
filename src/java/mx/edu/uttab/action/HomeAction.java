/**
 *
 * @author Roberto Eder Weiss Juárez
 * @see {@link http://webxico.blogspot.mx/}
 */
package mx.edu.uttab.action;

import com.opensymphony.xwork2.ActionSupport;
import java.util.ArrayList;
import java.util.List;
import mx.edu.uttab.dao.DAOFactory;
import mx.edu.uttab.dao.xml.actividaduniversitaria.ActividadUniversitariaDAO;
import mx.edu.uttab.dao.xml.actividaduniversitaria.XMLActividadUniversitariaDAO;
import mx.edu.uttab.dao.xml.evento.EventoDAO;
import mx.edu.uttab.dao.xml.evento.XMLEventoDAO;
import mx.edu.uttab.dao.xml.gaceta.GacetaDAO;
import mx.edu.uttab.dao.xml.gaceta.XMLGacetaDAO;
import mx.edu.uttab.model.ActividadUniversitaria;
import mx.edu.uttab.model.Evento;
import mx.edu.uttab.model.Gaceta;
import org.apache.struts2.ServletActionContext;

public class HomeAction extends ActionSupport {

    private List<ActividadUniversitaria> actividadList = new ArrayList<>();
    private List<Evento> eventoList = new ArrayList<>();
    private ActividadUniversitaria actividad = new ActividadUniversitaria();
    private Gaceta gaceta = new Gaceta();
    private final ActividadUniversitariaDAO actividadDAO = DAOFactory.getDAOFactory(DAOFactory.XML).getActividadUniversitariaDAO();
    private final EventoDAO eventoDAO = DAOFactory.getDAOFactory(DAOFactory.XML).getEventoDAO();
    private final GacetaDAO gacetaDAO = DAOFactory.getDAOFactory(DAOFactory.XML).getGacetaDAO();

    public HomeAction() {
        if (actividadDAO instanceof XMLActividadUniversitariaDAO) {
            ((XMLActividadUniversitariaDAO) actividadDAO).setXMLpath(ServletActionContext.getServletContext().getRealPath("/") + "WEB-INF/actividades_universitarias.xml");
        }
        if (eventoDAO instanceof XMLEventoDAO) {
            ((XMLEventoDAO) eventoDAO).setXMLpath(ServletActionContext.getServletContext().getRealPath("/") + "WEB-INF/eventos.xml");
        }
        if (gacetaDAO instanceof XMLGacetaDAO) {
            ((XMLGacetaDAO) gacetaDAO).setXMLpath(ServletActionContext.getServletContext().getRealPath("/") + "WEB-INF/gacetas.xml");
        }
    }

    public List<ActividadUniversitaria> getActividadList() {
        return actividadList;
    }

    public void setActividadList(List<ActividadUniversitaria> actividadList) {
        this.actividadList = actividadList;
    }

    public List<Evento> getEventoList() {
        return eventoList;
    }

    public void setEventoList(List<Evento> eventoList) {
        this.eventoList = eventoList;
    }

    public ActividadUniversitaria getActividad() {
        return actividad;
    }

    public void setActividad(ActividadUniversitaria actividad) {
        this.actividad = actividad;
    }

    public Gaceta getGaceta() {
        return gaceta;
    }

    public void setGaceta(Gaceta gaceta) {
        this.gaceta = gaceta;
    }

    @Override
    public String execute() throws Exception {
        eventoList = eventoDAO.findAllActivos();
        actividadList = actividadDAO.findAllActivos(false);
        actividad = actividadDAO.findByPrimaria();
        gaceta = gacetaDAO.findUltima();
        return SUCCESS;
    }

}