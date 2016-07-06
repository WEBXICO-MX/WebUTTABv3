/**
 *
 * @author Roberto Eder Weiss Juárez
 * @see {@link http://webxico.blogspot.mx/}
 */
package mx.edu.uttab.dao.xml.division;

import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import mx.edu.uttab.dao.xml.XMLDAOFactory;
import mx.edu.uttab.model.Division;
import org.jdom2.Document;
import org.jdom2.Element;
import org.jdom2.JDOMException;
import org.jdom2.output.Format;
import org.jdom2.output.XMLOutputter;
import org.jdom2.xpath.XPath;

public class XMLDivisionDAO implements DivisionDAO {

    Document doc = null;
    String XMLpath = "";

    public XMLDivisionDAO() {

    }

    @Override
    public boolean saveOrUpdate(Division division) {
        try {

            Document input = XMLDAOFactory.getDocument(XMLpath);
            Element raiz = input.getRootElement();
            Element hijo = new Element("division");
            hijo.setAttribute("cve_division", String.valueOf(division.getCve_division()));
            hijo.addContent(new Element("nombre").addContent(division.getNombre()));
            hijo.addContent(new Element("img").addContent(division.getImg()));
            hijo.addContent(new Element("activo").addContent(String.valueOf(division.isActivo())));
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
    public List<Division> findAll() {
        List divisions = new ArrayList();
        Division division = null;
        String xPath = "divisiones/division[activo='true']";
        doc = XMLDAOFactory.getDocument(XMLpath);
        try {

            XPath xpath = XPath.newInstance(xPath);
            List list = xpath.selectNodes(doc);

            if (!list.isEmpty()) {
                for (Iterator iter = list.iterator(); iter.hasNext();) {
                    Element elem = (Element) iter.next();
                    division = new Division();
                    division.setCve_division(Integer.parseInt(elem.getAttributeValue("cve_division")));
                    division.setNombre(elem.getChild("nombre").getTextTrim());
                    division.setImg(elem.getChild("img").getTextTrim());
                    division.setActivo(Boolean.parseBoolean(elem.getChild("activo").getTextTrim()));
                    divisions.add(division);
                }
            }

        } catch (JDOMException ex) {
            Logger.getLogger(XMLDivisionDAO.class.getName()).log(Level.SEVERE, null, ex);
        }

        return divisions;
    }

    @Override
    public List<Division> findAllBy(boolean activo) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.

    }

    @Override
    public Division findBy(int id) {
        Division division = null;
        String xPath = "divisiones/division[@cve_division='" + id + "']";
        doc = XMLDAOFactory.getDocument(XMLpath);

        try {

            XPath xpath = XPath.newInstance(xPath);
            List list = xpath.selectNodes(doc);

            if (!list.isEmpty()) {
                for (Iterator iter = list.iterator(); iter.hasNext();) {
                    Element elem = (Element) iter.next();
                    division = new Division();
                    division.setCve_division(Integer.parseInt(elem.getAttributeValue("cve_division")));
                    division.setNombre(elem.getChild("nombre").getTextTrim());
                    division.setImg(elem.getChild("img").getTextTrim());
                    division.setActivo(Boolean.parseBoolean(elem.getChild("activo").getTextTrim()));
                }
            }

        } catch (JDOMException ex) {
            Logger.getLogger(XMLDivisionDAO.class.getName()).log(Level.SEVERE, null, ex);
        }

        return division;
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
