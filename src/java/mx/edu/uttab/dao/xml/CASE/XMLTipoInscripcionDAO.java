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
import mx.edu.uttab.model.CASE.TipoInscripcion;
import org.jdom2.Document;
import org.jdom2.Element;
import org.jdom2.JDOMException;
import org.jdom2.xpath.XPath;

public class XMLTipoInscripcionDAO implements TipoInscripcionDAO {

    Document doc = null;
    String XMLpath = "";

    public XMLTipoInscripcionDAO() {
    }

    @Override
    public List<TipoInscripcion> findAll() {
        List tipos_inscripciones = new ArrayList();
        TipoInscripcion tipo_inscripcion = null;
        String xPath = "tipos_inscripcion/tipo_inscripcion";
        doc = XMLDAOFactory.getDocument(XMLpath);
        try {

            XPath xpath = XPath.newInstance(xPath);
            List list = xpath.selectNodes(doc);

            if (!list.isEmpty()) {
                for (Iterator iter = list.iterator(); iter.hasNext();) {
                    Element elem = (Element) iter.next();
                    tipo_inscripcion = new TipoInscripcion();
                    tipo_inscripcion.setId(Integer.parseInt(elem.getAttributeValue("id")));
                    tipo_inscripcion.setNombre(elem.getChild("nombre").getTextTrim());
                    tipo_inscripcion.setActivo(Boolean.parseBoolean(elem.getChild("activo").getTextTrim()));
                    tipos_inscripciones.add(tipo_inscripcion);
                }
            }

        } catch (JDOMException ex) {
            Logger.getLogger(XMLTipoInscripcionDAO.class.getName()).log(Level.SEVERE, null, ex);
        }

        return tipos_inscripciones;
    }

    @Override
    public TipoInscripcion findById(int id) {
        TipoInscripcion tipo_inscripcion = null;
        String xPath = "tipos_inscripcion/tipo_inscripcion[@id='" + id + "']";
        doc = XMLDAOFactory.getDocument(XMLpath);

        try {

            XPath xpath = XPath.newInstance(xPath);
            List list = xpath.selectNodes(doc);

            if (!list.isEmpty()) {
                for (Iterator iter = list.iterator(); iter.hasNext();) {
                    Element elem = (Element) iter.next();
                    tipo_inscripcion = new TipoInscripcion();
                    tipo_inscripcion.setId(Integer.parseInt(elem.getAttributeValue("id")));
                    tipo_inscripcion.setNombre(elem.getChild("nombre").getTextTrim());
                    tipo_inscripcion.setActivo(Boolean.parseBoolean(elem.getChild("activo").getTextTrim()));
                }
            }

        } catch (JDOMException ex) {
            Logger.getLogger(XMLTipoInscripcionDAO.class.getName()).log(Level.SEVERE, null, ex);
        }

        return tipo_inscripcion;
    }

    public String getXMLpath() {
        return XMLpath;
    }

    public void setXMLpath(String XMLpath) {
        this.XMLpath = XMLpath;
    }

}