/**
 *
 * @author Roberto Eder Weiss Juárez
 * @see {@link http://webxico.blogspot.mx/}
 */
package mx.edu.uttab.dao.xml.programa_radio;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import mx.edu.uttab.dao.xml.XMLDAOFactory;
import mx.edu.uttab.model.ProgramaRadio;
import org.jdom2.Document;
import org.jdom2.Element;
import org.jdom2.JDOMException;
import org.jdom2.output.Format;
import org.jdom2.output.XMLOutputter;
import org.jdom2.xpath.XPath;

public class XMLProgramaRadioDAO implements ProgramaRadioDAO {

    private String XMLpath = "";

    public XMLProgramaRadioDAO() {

    }

    @Override
    public boolean saveOrUpdate(ProgramaRadio programa_radio) {
        boolean grabo = false;
        Document doc2 = null;
        try {
            doc2 = XMLDAOFactory.getDocument(XMLpath);
            Element raiz = doc2.getRootElement();
            Element hijo = new Element("programa_radio");
            hijo.setAttribute("id", String.valueOf(getMaxId() + 1));
            hijo.addContent(new Element("nombre").addContent(programa_radio.getNombre()));
            hijo.addContent(new Element("activo").addContent(String.valueOf(programa_radio.isActivo())));
            raiz.addContent(hijo);

            //Archivo de salida
            Format format = Format.getPrettyFormat();
            format.setEncoding("UTF-8");
            XMLOutputter salida = new XMLOutputter(format);
            //Archivo destino
            File f = new File(XMLpath);
            FileOutputStream fos = new FileOutputStream(f);
            salida.output(doc2, fos);
            fos.close();
            grabo = true;

        } catch (IOException e) {
            e.printStackTrace();
            grabo = false;
        } catch (java.lang.NullPointerException e) {
            e.printStackTrace();
            grabo = false;
            //System.out.println("Error NullPointerException: " + e.getMessage());
        } catch (Exception e) {
            e.printStackTrace();
            grabo = false;
            //System.out.println("Error NullPointerException: " + e.getMessage());
        }
        doc2 = null;
        return grabo;
    }

    @Override
    public List<ProgramaRadio> findAll() {
        List programa_radios = new ArrayList();
        ProgramaRadio programa_radio = null;
        String xPath = "programas_radio/programa_radio";
        Document doc2 = XMLDAOFactory.getDocument(XMLpath);
        try {

            XPath xpath = XPath.newInstance(xPath);
            List list = xpath.selectNodes(doc2);

            if (!list.isEmpty()) {
                for (Iterator iter = list.iterator(); iter.hasNext();) {
                    Element elem = (Element) iter.next();
                    programa_radio = new ProgramaRadio();
                    programa_radio.setId(Integer.parseInt(elem.getAttributeValue("id")));
                    programa_radio.setColor(elem.getAttributeValue("color") != null ? elem.getAttributeValue("color"):"#000000");
                    programa_radio.setFondo(elem.getAttributeValue("fondo") != null ? elem.getAttributeValue("fondo"):"#ECEDED");
                    programa_radio.setNombre(elem.getChild("nombre").getTextTrim());
                    programa_radio.setActivo(Boolean.parseBoolean(elem.getChild("activo").getTextTrim()));
                    programa_radios.add(programa_radio);
                }
            }

        } catch (JDOMException ex) {
            Logger.getLogger(XMLProgramaRadioDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        doc2 = null;
        return programa_radios;
    }

    @Override
    public ProgramaRadio findById(int id) {
        ProgramaRadio programa_radio = null;
        String xPath = "programas_radio/programa_radio[@id='" + id + "']";
        Document doc2 = XMLDAOFactory.getDocument(XMLpath);

        try {

            XPath xpath = XPath.newInstance(xPath);
            List list = xpath.selectNodes(doc2);

            if (!list.isEmpty()) {
                for (Iterator iter = list.iterator(); iter.hasNext();) {
                    Element elem = (Element) iter.next();
                    programa_radio = new ProgramaRadio();
                    programa_radio.setId(Integer.parseInt(elem.getAttributeValue("id")));
                    programa_radio.setColor(elem.getAttributeValue("color") != null ? elem.getAttributeValue("color"):"#000000");
                    programa_radio.setFondo(elem.getAttributeValue("fondo") != null ? elem.getAttributeValue("fondo"):"#ECEDED");
                    programa_radio.setNombre(elem.getChild("nombre").getTextTrim());
                    programa_radio.setActivo(Boolean.parseBoolean(elem.getChild("activo").getTextTrim()));
                }
            }

        } catch (JDOMException ex) {
            Logger.getLogger(XMLProgramaRadioDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        doc2 = null;
        return programa_radio;
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

    @Override
    public int getMaxId() {
        int maxId = 0;
        //String xPath = "programa_radios/programa_radio/@id[not(. <=../preceding-sibling::programa_radio/@id) and not(. <=../following-sibling::programa_radio/@id)]";
        String xPath = "/programas_radio/programa_radio/@id[not(. < ../../programa_radio/@id)][1]";
        Document doc2 = XMLDAOFactory.getDocument(XMLpath);

        try {

            XPath xpath = XPath.newInstance(xPath);
            List list = xpath.selectNodes(doc2);

            if (!list.isEmpty()) {
                for (Iterator iter = list.iterator(); iter.hasNext();) {
                    maxId = Integer.parseInt(((org.jdom2.Attribute) iter.next()).getValue());
                    //System.out.println("maxId : " + maxId);
                }
            }

        } catch (JDOMException ex) {
            Logger.getLogger(XMLProgramaRadioDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        doc2 = null;
        return maxId;
    }

}