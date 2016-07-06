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
import mx.edu.uttab.model.CASE.Capacitacion;
import org.apache.struts2.ServletActionContext;
import org.jdom2.Document;
import org.jdom2.Element;
import org.jdom2.JDOMException;
import org.jdom2.xpath.XPath;

public class XMLCapacitacionDAO implements CapacitacionDAO {

    Document doc = null;
    String XMLpath = "";
    private TipoCapacitacionDAO tipo_capacitacionDAO = DAOFactory.getDAOFactory(DAOFactory.XML).getTipoCapacitacionDAO();

    public XMLCapacitacionDAO() {
        ((XMLTipoCapacitacionDAO) tipo_capacitacionDAO).setXMLpath(ServletActionContext.getServletContext().getRealPath("/") + "WEB-INF/case_tipos_capacitacion.xml");
    }

    @Override
    public List<Capacitacion> findAll() {
        List capacitaciones = new ArrayList();
        Capacitacion capacitacion = null;
        String xPath = "capacitaciones/capacitacion";
        doc = XMLDAOFactory.getDocument(XMLpath);
        try {

            XPath xpath = XPath.newInstance(xPath);
            List list = xpath.selectNodes(doc);

            if (!list.isEmpty()) {
                for (Iterator iter = list.iterator(); iter.hasNext();) {
                    Element elem = (Element) iter.next();
                    capacitacion = new Capacitacion();
                    capacitacion.setId(Integer.parseInt(elem.getAttributeValue("id")));
                    capacitacion.setTipo_capacitacion(tipo_capacitacionDAO.findById(Integer.parseInt(elem.getAttributeValue("tipo_capacitacion"))));
                    capacitacion.setNombre(elem.getChild("nombre").getTextTrim());
                    capacitacion.setDescripcion(elem.getChild("descripcion").getTextTrim());
                    capacitacion.setActivo(Boolean.parseBoolean(elem.getChild("activo").getTextTrim()));
                    capacitaciones.add(capacitacion);
                }
            }

        } catch (JDOMException ex) {
            Logger.getLogger(XMLTipoCapacitacionDAO.class.getName()).log(Level.SEVERE, null, ex);
        }

        return capacitaciones;
    }

    @Override
    public Capacitacion findById(int id) {
        Capacitacion capacitacion = null;
        String xPath = "capacitaciones/capacitacion[@id='" + id + "']";
        doc = XMLDAOFactory.getDocument(XMLpath);
        try {

            XPath xpath = XPath.newInstance(xPath);
            List list = xpath.selectNodes(doc);

            if (!list.isEmpty()) {
                for (Iterator iter = list.iterator(); iter.hasNext();) {
                    Element elem = (Element) iter.next();
                    capacitacion = new Capacitacion();
                    capacitacion.setId(Integer.parseInt(elem.getAttributeValue("id")));
                    capacitacion.setTipo_capacitacion(tipo_capacitacionDAO.findById(Integer.parseInt(elem.getAttributeValue("tipo_capacitacion"))));
                    capacitacion.setNombre(elem.getChild("nombre").getTextTrim());
                    capacitacion.setDescripcion(elem.getChild("descripcion").getTextTrim());
                    capacitacion.setActivo(Boolean.parseBoolean(elem.getChild("activo").getTextTrim()));
                }
            }

        } catch (JDOMException ex) {
            Logger.getLogger(XMLTipoCapacitacionDAO.class.getName()).log(Level.SEVERE, null, ex);
        }

        return capacitacion;
    }

    @Override
    public Capacitacion findByNombre(String nombre) {
        Capacitacion capacitacion = null;
        String xPath = "capacitaciones/capacitacion[nombre='" + nombre + "']";
        doc = XMLDAOFactory.getDocument(XMLpath);
        try {

            XPath xpath = XPath.newInstance(xPath);
            List list = xpath.selectNodes(doc);

            if (!list.isEmpty()) {
                for (Iterator iter = list.iterator(); iter.hasNext();) {
                    Element elem = (Element) iter.next();
                    capacitacion = new Capacitacion();
                    capacitacion.setId(Integer.parseInt(elem.getAttributeValue("id")));
                    capacitacion.setTipo_capacitacion(tipo_capacitacionDAO.findById(Integer.parseInt(elem.getAttributeValue("tipo_capacitacion"))));
                    capacitacion.setNombre(elem.getChild("nombre").getTextTrim());
                    capacitacion.setDescripcion(elem.getChild("descripcion").getTextTrim());
                    capacitacion.setActivo(Boolean.parseBoolean(elem.getChild("activo").getTextTrim()));
                }
            }

        } catch (JDOMException ex) {
            Logger.getLogger(XMLTipoCapacitacionDAO.class.getName()).log(Level.SEVERE, null, ex);
        }

        return capacitacion;
    }

    @Override
    public List<Capacitacion> findByTipo(int tipo) {
        List capacitaciones = new ArrayList();
        Capacitacion capacitacion = null;
        String xPath = "capacitaciones/capacitacion[@tipo_capacitacion='" + tipo + "']";
        doc = XMLDAOFactory.getDocument(XMLpath);
        try {

            XPath xpath = XPath.newInstance(xPath);
            List list = xpath.selectNodes(doc);
            if (!list.isEmpty()) {
                for (Iterator iter = list.iterator(); iter.hasNext();) {
                    Element elem = (Element) iter.next();
                    capacitacion = new Capacitacion();
                    capacitacion.setId(Integer.parseInt(elem.getAttributeValue("id")));
                    capacitacion.setTipo_capacitacion(tipo_capacitacionDAO.findById(Integer.parseInt(elem.getAttributeValue("tipo_capacitacion"))));
                    capacitacion.setNombre(elem.getChild("nombre").getTextTrim());
                    capacitacion.setDescripcion(elem.getChild("descripcion").getTextTrim());
                    capacitacion.setActivo(Boolean.parseBoolean(elem.getChild("activo").getTextTrim()));
                    capacitaciones.add(capacitacion);
                }
            }

        } catch (JDOMException ex) {
            Logger.getLogger(XMLTipoCapacitacionDAO.class.getName()).log(Level.SEVERE, null, ex);
        }

        return capacitaciones;
    }

    public String getXMLpath() {
        return XMLpath;
    }

    public void setXMLpath(String XMLpath) {
        this.XMLpath = XMLpath;
    }

}