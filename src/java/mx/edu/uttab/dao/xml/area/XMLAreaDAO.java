/**
 *
 * @author Roberto Eder Weiss Juárez
 * @see {@link http://webxico.blogspot.mx/}
 */
package mx.edu.uttab.dao.xml.area;

import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import mx.edu.uttab.dao.xml.XMLDAOFactory;
import mx.edu.uttab.model.Area;
import org.jdom2.Document;
import org.jdom2.Element;
import org.jdom2.JDOMException;
import org.jdom2.output.Format;
import org.jdom2.output.XMLOutputter;
import org.jdom2.xpath.XPath;

public class XMLAreaDAO implements AreaDAO {

    Document doc = null;
    String XMLpath = "";

    public XMLAreaDAO() {
    }

    @Override
    public boolean saveOrUpdate(Area area) {
        try {

            Document input = XMLDAOFactory.getDocument(XMLpath);
            Element raiz = input.getRootElement();
            Element hijo = new Element("area");
            hijo.setAttribute("id", String.valueOf(area.getId()));
            hijo.setAttribute("nombre", area.getNombre());
            hijo.setAttribute("activo", String.valueOf(area.isActivo()));
            raiz.addContent(hijo);

            //Archivo de salida
            Format format = Format.getPrettyFormat();
            //XMLOutputter xmloutputter = new XMLOutputter(format);
            XMLOutputter salida = new XMLOutputter(format);
            //Archivo destino
            File f = new File(XMLpath);
            FileWriter fw = new FileWriter(f);
            salida.output(input, fw);
            fw.close();

        } catch (IOException e) {
        } catch (java.lang.NullPointerException e) {
        } catch (Exception e) {
        }
        return true;
    }

    @Override
    public List<Area> findAll() {
        List areas = new ArrayList();
        Area area = null;
        String xPath = "areas_directorio/area";
        doc = XMLDAOFactory.getDocument(XMLpath);
        try {

            XPath xpath = XPath.newInstance(xPath);
            List list = xpath.selectNodes(doc);

            if (!list.isEmpty()) {
                for (Iterator iter = list.iterator(); iter.hasNext();) {
                    Element elem = (Element) iter.next();
                    area = new Area();
                    area.setId(Integer.parseInt(elem.getAttributeValue("id")));
                    area.setNombre(elem.getAttributeValue("nombre"));
                    area.setActivo(Boolean.parseBoolean(elem.getAttributeValue("activo")));
                    areas.add(area);
                }
            }

        } catch (JDOMException ex) {
            Logger.getLogger(XMLAreaDAO.class.getName()).log(Level.SEVERE, null, ex);
        }

        return areas;
    }

    @Override
    public Area findById(int id) {
        Area area = null;
        String xPath = "areas_directorio/area[@id='" + id + "']";
        doc = XMLDAOFactory.getDocument(XMLpath);

        try {

            XPath xpath = XPath.newInstance(xPath);
            List list = xpath.selectNodes(doc);

            if (!list.isEmpty()) {
                for (Iterator iter = list.iterator(); iter.hasNext();) {
                    Element elem = (Element) iter.next();
                    area = new Area();
                    area.setId(Integer.parseInt(elem.getAttributeValue("id")));
                    area.setNombre(elem.getAttributeValue("nombre"));
                    area.setActivo(Boolean.parseBoolean(elem.getAttributeValue("activo")));
                }
            }

        } catch (JDOMException ex) {
            Logger.getLogger(XMLAreaDAO.class.getName()).log(Level.SEVERE, null, ex);
        }

        return area;
    }

    @Override
    public boolean delete(int id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    public String getXMLpath() {
        return XMLpath;
    }

    public void setXMLpath(String XMLpath) {
        this.XMLpath = XMLpath;
    }

}
