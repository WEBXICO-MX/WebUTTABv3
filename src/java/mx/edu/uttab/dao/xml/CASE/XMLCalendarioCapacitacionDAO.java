/**
 *
 * @author Roberto Eder Weiss Juárez
 * @see {@link http://webxico.blogspot.mx/}
 */
package mx.edu.uttab.dao.xml.CASE;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import mx.edu.uttab.dao.DAOFactory;
import mx.edu.uttab.dao.xml.XMLDAOFactory;
import mx.edu.uttab.model.CASE.CalendarioCapacitacion;
import org.apache.struts2.ServletActionContext;
import org.jdom2.Document;
import org.jdom2.Element;
import org.jdom2.JDOMException;
import org.jdom2.xpath.XPath;

public class XMLCalendarioCapacitacionDAO implements CalendarioCapacitacionDAO {

    Document doc = null;
    String XMLpath = "";
    private final CapacitacionDAO capacitacionDAO = DAOFactory.getDAOFactory(DAOFactory.XML).getCapacitacionDAO();

    public XMLCalendarioCapacitacionDAO() {
        ((XMLCapacitacionDAO) capacitacionDAO).setXMLpath(ServletActionContext.getServletContext().getRealPath("/") + "WEB-INF/case_capacitaciones.xml");
    }

    @Override
    public CalendarioCapacitacion findById(int id) {

        CalendarioCapacitacion calendario_capacitacion = null;
        String xPath = "calendarios_capacitaciones/calendario_capacitacion[@id='" + id + "']";
        doc = XMLDAOFactory.getDocument(XMLpath);
        try {

            XPath xpath = XPath.newInstance(xPath);
            List list = xpath.selectNodes(doc);

            if (!list.isEmpty()) {
                for (Iterator iter = list.iterator(); iter.hasNext();) {
                    Element elem = (Element) iter.next();
                    calendario_capacitacion = new CalendarioCapacitacion();
                    calendario_capacitacion.setId(Integer.parseInt(elem.getAttributeValue("id")));
                    calendario_capacitacion.setCapacitacion(capacitacionDAO.findById(Integer.parseInt(elem.getAttributeValue("capacitacion"))));
                    calendario_capacitacion.setFechas(elem.getChild("fechas").getTextTrim());
                    calendario_capacitacion.setActivo(Boolean.parseBoolean(elem.getChild("activo").getTextTrim()));
                }
            }

        } catch (JDOMException ex) {
            Logger.getLogger(XMLTipoCapacitacionDAO.class.getName()).log(Level.SEVERE, null, ex);
        }

        return calendario_capacitacion;
    }

    @Override
    public List<CalendarioCapacitacion> findByCapacitacion(int capacitacion) {
        List calendarios_capacitaciones = new ArrayList();
        CalendarioCapacitacion calendario_capacitacion = null;
        String xPath = "calendarios_capacitaciones/calendario_capacitacion[@capacitacion='" + capacitacion + "'][activo='true']";
        doc = XMLDAOFactory.getDocument(XMLpath);
        try {

            XPath xpath = XPath.newInstance(xPath);
            List list = xpath.selectNodes(doc);

            if (!list.isEmpty()) {
                for (Iterator iter = list.iterator(); iter.hasNext();) {
                    Element elem = (Element) iter.next();
                    calendario_capacitacion = new CalendarioCapacitacion();
                    calendario_capacitacion.setId(Integer.parseInt(elem.getAttributeValue("id")));
                    calendario_capacitacion.setCapacitacion(capacitacionDAO.findById(Integer.parseInt(elem.getAttributeValue("capacitacion"))));
                    calendario_capacitacion.setFechas(elem.getChild("fechas").getTextTrim());
                    calendario_capacitacion.setActivo(Boolean.parseBoolean(elem.getChild("activo").getTextTrim()));
                    calendarios_capacitaciones.add(calendario_capacitacion);
                }
            }

        } catch (JDOMException ex) {
            Logger.getLogger(XMLTipoCapacitacionDAO.class.getName()).log(Level.SEVERE, null, ex);
        }

        return calendarios_capacitaciones;
    }

    public String getXMLpath() {
        return XMLpath;
    }

    public void setXMLpath(String XMLpath) {
        this.XMLpath = XMLpath;
    }

}