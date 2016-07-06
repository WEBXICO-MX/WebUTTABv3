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
import mx.edu.uttab.dao.xml.XMLDAOFactory;
import mx.edu.uttab.model.CASE.TipoCapacitacion;
import org.jdom2.Document;
import org.jdom2.Element;
import org.jdom2.JDOMException;
import org.jdom2.xpath.XPath;

public class XMLTipoCapacitacionDAO implements TipoCapacitacionDAO {

    Document doc = null;
    String XMLpath = "";

    public XMLTipoCapacitacionDAO() {
    }

    @Override
    public List<TipoCapacitacion> findAll() {
        List tipos_capacitaciones = new ArrayList();
        TipoCapacitacion tipo_capacitacion = null;
        String xPath = "tipos_capacitacion/tipo_capacitacion";
        doc = XMLDAOFactory.getDocument(XMLpath);
        try {

            XPath xpath = XPath.newInstance(xPath);
            List list = xpath.selectNodes(doc);

            if (!list.isEmpty()) {
                for (Iterator iter = list.iterator(); iter.hasNext();) {
                    Element elem = (Element) iter.next();
                    tipo_capacitacion = new TipoCapacitacion();
                    tipo_capacitacion.setId(Integer.parseInt(elem.getAttributeValue("id")));
                    tipo_capacitacion.setNombre(elem.getChild("nombre").getTextTrim());
                    tipo_capacitacion.setActivo(Boolean.parseBoolean(elem.getChild("activo").getTextTrim()));
                    tipos_capacitaciones.add(tipo_capacitacion);
                }
            }

        } catch (JDOMException ex) {
            Logger.getLogger(XMLTipoCapacitacionDAO.class.getName()).log(Level.SEVERE, null, ex);
        }

        return tipos_capacitaciones;
    }

    @Override
    public TipoCapacitacion findById(int id) {
        TipoCapacitacion tipo_capacitacion = null;
        String xPath = "tipos_capacitacion/tipo_capacitacion[@id='" + id + "']";
        doc = XMLDAOFactory.getDocument(XMLpath);

        try {

            XPath xpath = XPath.newInstance(xPath);
            List list = xpath.selectNodes(doc);

            if (!list.isEmpty()) {
                for (Iterator iter = list.iterator(); iter.hasNext();) {
                    Element elem = (Element) iter.next();
                    tipo_capacitacion = new TipoCapacitacion();
                    tipo_capacitacion.setId(Integer.parseInt(elem.getAttributeValue("id")));
                    tipo_capacitacion.setNombre(elem.getChild("nombre").getTextTrim());
                    tipo_capacitacion.setActivo(Boolean.parseBoolean(elem.getChild("activo").getTextTrim()));
                }
            }

        } catch (JDOMException ex) {
            Logger.getLogger(XMLTipoCapacitacionDAO.class.getName()).log(Level.SEVERE, null, ex);
        }

        return tipo_capacitacion;
    }

    public String getXMLpath() {
        return XMLpath;
    }

    public void setXMLpath(String XMLpath) {
        this.XMLpath = XMLpath;
    }

}