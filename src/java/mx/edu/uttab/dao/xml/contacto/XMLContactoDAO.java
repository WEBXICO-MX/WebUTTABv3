/**
 *
 * @author Roberto Eder Weiss Juárez
 * @see {@link http://webxico.blogspot.mx/}
 */
package mx.edu.uttab.dao.xml.contacto;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import mx.edu.uttab.dao.xml.XMLDAOFactory;
import mx.edu.uttab.model.Contacto;
import org.jdom2.Document;
import org.jdom2.Element;
import org.jdom2.JDOMException;
import org.jdom2.xpath.XPath;

public class XMLContactoDAO implements ContactoDAO {

    Document doc = null;
    String XMLpath = "";

    public XMLContactoDAO() {

    }

    @Override
    public List<Contacto> findAll() {
        List contactos = new ArrayList();
        Contacto contacto = null;
        String xPath = "contactos/contacto";
        doc = XMLDAOFactory.getDocument(XMLpath);
        try {

            XPath xpath = XPath.newInstance(xPath);
            List list = xpath.selectNodes(doc);

            if (!list.isEmpty()) {
                for (Iterator iter = list.iterator(); iter.hasNext();) {
                    Element elem = (Element) iter.next();
                    contacto = new Contacto();
                    contacto.setId(Integer.parseInt(elem.getAttributeValue("id")));
                    contacto.setNombre(elem.getChild("nombre").getTextTrim());
                    contacto.setContenido(elem.getChild("nombre").getTextTrim());
                    contacto.setActivo(Boolean.parseBoolean(elem.getChild("activo").getTextTrim()));
                    contactos.add(contacto);
                }
            }

        } catch (JDOMException ex) {
            Logger.getLogger(XMLContactoDAO.class.getName()).log(Level.SEVERE, null, ex);
        }

        return contactos;
    }

    @Override
    public List<Contacto> findAllActivos() {
        List contactos = new ArrayList();
        Contacto contacto = null;
        String xPath = "contactos/contacto[activo='true']";
        doc = XMLDAOFactory.getDocument(XMLpath);
        try {

            XPath xpath = XPath.newInstance(xPath);
            List list = xpath.selectNodes(doc);
            if (!list.isEmpty()) {
                for (Iterator iter = list.iterator(); iter.hasNext();) {
                    Element elem = (Element) iter.next();
                    contacto = new Contacto();
                    contacto.setId(Integer.parseInt(elem.getAttributeValue("id")));
                    contacto.setNombre(elem.getChild("nombre").getTextTrim());
                    contacto.setContenido(elem.getChild("contenido").getTextTrim());
                    contacto.setActivo(Boolean.parseBoolean(elem.getChild("activo").getTextTrim()));
                    contactos.add(contacto);
                }
            }

        } catch (JDOMException ex) {
            Logger.getLogger(XMLContactoDAO.class.getName()).log(Level.SEVERE, null, ex);
        }

        return contactos;
    }

    @Override
    public Contacto findById(int id) {
        Contacto contacto = null;
        String xPath = "contactos/contacto[@id='" + id + "']";
        doc = XMLDAOFactory.getDocument(XMLpath);

        try {

            XPath xpath = XPath.newInstance(xPath);
            List list = xpath.selectNodes(doc);

            if (!list.isEmpty()) {
                for (Iterator iter = list.iterator(); iter.hasNext();) {
                    Element elem = (Element) iter.next();
                    contacto = new Contacto();
                    contacto.setId(Integer.parseInt(elem.getAttributeValue("id")));
                    contacto.setNombre(elem.getChild("nombre").getTextTrim());
                    contacto.setContenido(elem.getChild("contenido").getTextTrim());
                    contacto.setActivo(Boolean.parseBoolean(elem.getChild("activo").getTextTrim()));
                }
            }

        } catch (JDOMException ex) {
            Logger.getLogger(XMLContactoDAO.class.getName()).log(Level.SEVERE, null, ex);
        }

        return contacto;
    }

    public String getXMLpath() {
        return XMLpath;
    }

    public void setXMLpath(String XMLpath) {
        this.XMLpath = XMLpath;
    }

}
