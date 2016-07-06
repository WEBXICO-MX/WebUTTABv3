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
import mx.edu.uttab.model.CASE.SectorProductivo;
import org.jdom2.Document;
import org.jdom2.Element;
import org.jdom2.JDOMException;
import org.jdom2.xpath.XPath;

public class XMLSectorProductivoDAO implements SectorProductivoDAO {

    Document doc = null;
    String XMLpath = "";

    public XMLSectorProductivoDAO() {
    }

    @Override
    public List<SectorProductivo> findAll() {
        List sectores_productivos = new ArrayList();
        SectorProductivo sector_productivo = null;
        String xPath = "sectores_productivos/sector_productivo";
        doc = XMLDAOFactory.getDocument(XMLpath);
        try {

            XPath xpath = XPath.newInstance(xPath);
            List list = xpath.selectNodes(doc);

            if (!list.isEmpty()) {
                for (Iterator iter = list.iterator(); iter.hasNext();) {
                    Element elem = (Element) iter.next();
                    sector_productivo = new SectorProductivo();
                    sector_productivo.setId(Integer.parseInt(elem.getAttributeValue("id")));
                    sector_productivo.setNombre(elem.getChild("nombre").getTextTrim());
                    sector_productivo.setActivo(Boolean.parseBoolean(elem.getChild("activo").getTextTrim()));
                    sectores_productivos.add(sector_productivo);
                }
            }

        } catch (JDOMException ex) {
            Logger.getLogger(XMLSectorProductivoDAO.class.getName()).log(Level.SEVERE, null, ex);
        }

        return sectores_productivos;
    }

    @Override
    public SectorProductivo findById(int id) {
        SectorProductivo sector_productivo = null;
        String xPath = "sectores_productivos/sector_productivo[@id='" + id + "']";
        doc = XMLDAOFactory.getDocument(XMLpath);

        try {

            XPath xpath = XPath.newInstance(xPath);
            List list = xpath.selectNodes(doc);

            if (!list.isEmpty()) {
                for (Iterator iter = list.iterator(); iter.hasNext();) {
                    Element elem = (Element) iter.next();
                    sector_productivo = new SectorProductivo();
                    sector_productivo.setId(Integer.parseInt(elem.getAttributeValue("id")));
                    sector_productivo.setNombre(elem.getChild("nombre").getTextTrim());
                    sector_productivo.setActivo(Boolean.parseBoolean(elem.getChild("activo").getTextTrim()));
                }
            }

        } catch (JDOMException ex) {
            Logger.getLogger(XMLSectorProductivoDAO.class.getName()).log(Level.SEVERE, null, ex);
        }

        return sector_productivo;
    }

    public String getXMLpath() {
        return XMLpath;
    }

    public void setXMLpath(String XMLpath) {
        this.XMLpath = XMLpath;
    }

}