/**
 *
 * @author Roberto Eder Weiss Juárez
 * @see {@link http://webxico.blogspot.mx/}
 */
package mx.edu.uttab.dao.xml.mi_servicio;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import mx.edu.uttab.dao.xml.XMLDAOFactory;
import mx.edu.uttab.model.MiServicio;
import org.jdom2.Document;
import org.jdom2.Element;
import org.jdom2.JDOMException;
import org.jdom2.xpath.XPath;

public class XMLMiServicioDAO implements MiServicioDAO {

    Document doc = null;
    String XMLpath = "";

    public XMLMiServicioDAO() {

    }

    @Override
    public List<MiServicio> findAll() {
        List mis_servicios = new ArrayList();
        MiServicio mi_servicio = null;
        String xPath = "mis_servicios/mi_servicio[activo='true']";
        doc = XMLDAOFactory.getDocument(XMLpath);
        try {

            XPath xpath = XPath.newInstance(xPath);
            List list = xpath.selectNodes(doc);

            if (!list.isEmpty()) {
                for (Iterator iter = list.iterator(); iter.hasNext();) {
                    Element elem = (Element) iter.next();
                    mi_servicio = new MiServicio();
                    mi_servicio.setId(Integer.parseInt(elem.getAttributeValue("id")));
                    mi_servicio.setNombre(elem.getChild("nombre").getTextTrim());
                    mi_servicio.setImg(elem.getChild("img").getTextTrim());
                    mi_servicio.setLink(elem.getChild("link").getTextTrim());
                    mi_servicio.setActivo(Boolean.parseBoolean(elem.getChild("activo").getTextTrim()));
                    mis_servicios.add(mi_servicio);
                }
            }

        } catch (JDOMException ex) {
            Logger.getLogger(XMLMiServicioDAO.class.getName()).log(Level.SEVERE, null, ex);
        }

        return mis_servicios;
    }

    @Override
    public MiServicio findById(int id) {
        MiServicio mi_servicio = null;
        String xPath = "mis_servicios/mi_servicio[@id='" + id + "']";
        doc = XMLDAOFactory.getDocument(XMLpath);

        try {

            XPath xpath = XPath.newInstance(xPath);
            List list = xpath.selectNodes(doc);

            if (!list.isEmpty()) {
                for (Iterator iter = list.iterator(); iter.hasNext();) {
                    Element elem = (Element) iter.next();
                    mi_servicio = new MiServicio();
                    mi_servicio.setId(Integer.parseInt(elem.getAttributeValue("id")));
                    mi_servicio.setNombre(elem.getChild("nombre").getTextTrim());
                    mi_servicio.setImg(elem.getChild("img").getTextTrim());
                    mi_servicio.setLink(elem.getChild("link").getTextTrim());
                    mi_servicio.setActivo(Boolean.parseBoolean(elem.getChild("activo").getTextTrim()));
                }
            }

        } catch (JDOMException ex) {
            Logger.getLogger(XMLMiServicioDAO.class.getName()).log(Level.SEVERE, null, ex);
        }

        return mi_servicio;
    }

    public String getXMLpath() {
        return XMLpath;
    }

    public void setXMLpath(String XMLpath) {
        this.XMLpath = XMLpath;
    }

}
