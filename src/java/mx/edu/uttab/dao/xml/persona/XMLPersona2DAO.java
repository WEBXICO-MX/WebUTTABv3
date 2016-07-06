/**
 *
 * @author Roberto Eder Weiss Juárez
 * @see {@link http://webxico.blogspot.mx/}
 */
package mx.edu.uttab.dao.xml.persona;

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
import mx.edu.uttab.model.Persona2;
import org.jdom2.Document;
import org.jdom2.Element;
import org.jdom2.JDOMException;
import org.jdom2.output.Format;
import org.jdom2.output.XMLOutputter;
import org.jdom2.xpath.XPath;

public class XMLPersona2DAO implements Persona2DAO {

    Document doc = null;
    String XMLpath = "";

    public XMLPersona2DAO() {
    }

    @Override
    public boolean saveOrUpdate(Persona2 persona) {
        try {

            Document input = XMLDAOFactory.getDocument(XMLpath);
            Element raiz = input.getRootElement();
            Element hijo = new Element("persona");
            hijo.setAttribute("id", String.valueOf(persona.getId()));
            hijo.setAttribute("area", String.valueOf(persona.getArea().getId()));
            hijo.addContent(new Element("nombre").addContent(persona.getNombre()));
            hijo.addContent(new Element("puesto").addContent(persona.getPuesto()));
            hijo.addContent(new Element("tel").addContent(persona.getTel()));
            hijo.addContent(new Element("email").addContent(persona.getEmail()));
            hijo.addContent(new Element("img").addContent(persona.getImg()));
            hijo.addContent(new Element("activo").addContent(String.valueOf(persona.isActivo())));
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
    public List<Persona2> findAll() {
        List personas = new ArrayList();
        Persona2 persona = null;
        String xPath = "personas/persona";
        doc = XMLDAOFactory.getDocument(XMLpath);
        try {

            XPath xpath = XPath.newInstance(xPath);
            List list = xpath.selectNodes(doc);

            if (!list.isEmpty()) {
                for (Iterator iter = list.iterator(); iter.hasNext();) {
                    Element elem = (Element) iter.next();
                    persona = new Persona2();
                    persona.setId(Integer.parseInt(elem.getAttributeValue("id")));
                    persona.setArea(new Area(Integer.parseInt(elem.getAttributeValue("area"))));
                    persona.setNombre(elem.getChild("nombre").getTextTrim());
                    persona.setPuesto(elem.getChild("puesto").getTextTrim());
                    persona.setTel(elem.getChild("tel").getTextTrim());
                    persona.setEmail(elem.getChild("email").getTextTrim());
                    persona.setImg(elem.getChild("img").getTextTrim());
                    persona.setActivo(Boolean.parseBoolean(elem.getChild("activo").getTextTrim()));
                    personas.add(persona);
                }
            }

        } catch (JDOMException ex) {
            Logger.getLogger(XMLPersona2DAO.class.getName()).log(Level.SEVERE, null, ex);
        }

        return personas;
    }

    @Override
    public List<Persona2> findAllByArea(int area) {
        List personas = new ArrayList();
        Persona2 persona = null;
        String xPath = "personas/persona[@area='" + area + "'][activo='true']";
        //System.out.println("El xPath es: " + xPath);
        doc = XMLDAOFactory.getDocument(XMLpath);
        try {

            XPath xpath = XPath.newInstance(xPath);
            List list = xpath.selectNodes(doc);

            if (!list.isEmpty()) {
                for (Iterator iter = list.iterator(); iter.hasNext();) {
                    Element elem = (Element) iter.next();
                    persona = new Persona2();
                    persona.setId(Integer.parseInt(elem.getAttributeValue("id")));
                    persona.setArea(new Area(Integer.parseInt(elem.getAttributeValue("area"))));
                    persona.setNombre(elem.getChild("nombre").getTextTrim());
                    persona.setPuesto(elem.getChild("puesto").getTextTrim());
                    persona.setTel(elem.getChild("tel").getTextTrim());
                    persona.setEmail(elem.getChild("email").getTextTrim());
                    persona.setImg(elem.getChild("img").getTextTrim());
                    persona.setActivo(Boolean.parseBoolean(elem.getChild("activo").getTextTrim()));
                    personas.add(persona);
                }
            }

        } catch (JDOMException ex) {
            Logger.getLogger(XMLPersona2DAO.class.getName()).log(Level.SEVERE, null, ex);
        }

        return personas;
    }

    @Override
    public Persona2 findById(int id) {
        Persona2 persona = null;
        String xPath = "personas/persona[@id='" + id + "']";
        doc = XMLDAOFactory.getDocument(XMLpath);

        try {

            XPath xpath = XPath.newInstance(xPath);
            List list = xpath.selectNodes(doc);

            if (!list.isEmpty()) {
                for (Iterator iter = list.iterator(); iter.hasNext();) {
                    Element elem = (Element) iter.next();
                    persona = new Persona2();
                    persona.setId(Integer.parseInt(elem.getAttributeValue("id")));
                    persona.setArea(new Area(Integer.parseInt(elem.getAttributeValue("area"))));
                    persona.setNombre(elem.getChild("nombre").getTextTrim());
                    persona.setNombre(elem.getChild("puesto").getTextTrim());
                    persona.setNombre(elem.getChild("tel").getTextTrim());
                    persona.setNombre(elem.getChild("email").getTextTrim());
                    persona.setNombre(elem.getChild("img").getTextTrim());
                    persona.setActivo(Boolean.parseBoolean(elem.getChild("activo").getTextTrim()));
                }
            }

        } catch (JDOMException ex) {
            Logger.getLogger(XMLPersona2DAO.class.getName()).log(Level.SEVERE, null, ex);
        }

        return persona;
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
