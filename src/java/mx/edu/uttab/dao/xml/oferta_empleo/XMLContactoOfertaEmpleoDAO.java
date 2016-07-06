/**
 *
 * @author Roberto Eder Weiss Juárez
 * @see {@link http://webxico.blogspot.mx/}
 */
package mx.edu.uttab.dao.xml.oferta_empleo;

import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import mx.edu.uttab.dao.xml.XMLDAOFactory;
import mx.edu.uttab.model.ContactoOfertaEmpleo;
import org.jdom2.Document;
import org.jdom2.Element;
import org.jdom2.JDOMException;
import org.jdom2.output.Format;
import org.jdom2.output.XMLOutputter;
import org.jdom2.xpath.XPath;

public class XMLContactoOfertaEmpleoDAO implements ContactoOfertaEmpleoDAO {

    Document doc = null;
    String XMLpath = "";

    public XMLContactoOfertaEmpleoDAO() {

    }

    @Override
    public boolean saveOrUpdate(ContactoOfertaEmpleo contacto) {
        try {

            Document input = XMLDAOFactory.getDocument(XMLpath);
            Element raiz = input.getRootElement();
            Element hijo = new Element("contacto");
            hijo.setAttribute("id", String.valueOf(contacto.getId()));
            hijo.addContent(new Element("nombre").addContent(contacto.getNombre()));
            hijo.addContent(new Element("puesto").addContent(contacto.getPuesto()));
            hijo.addContent(new Element("tel").addContent(contacto.getTel()));
            hijo.addContent(new Element("email").addContent(contacto.getEmail()));
            hijo.addContent(new Element("horario").addContent(contacto.getHorario()));
            hijo.addContent(new Element("activo").addContent(String.valueOf(contacto.isActivo())));
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
    public List<ContactoOfertaEmpleo> findAll() {
        List contactos = new ArrayList();
        ContactoOfertaEmpleo contacto = null;
        String xPath = "contactos/contacto[activo='true']";
        doc = XMLDAOFactory.getDocument(XMLpath);
        try {

            XPath xpath = XPath.newInstance(xPath);
            List list = xpath.selectNodes(doc);

            if (!list.isEmpty()) {
                for (Iterator iter = list.iterator(); iter.hasNext();) {
                    Element elem = (Element) iter.next();
                    contacto = new ContactoOfertaEmpleo();
                    contacto.setId(Integer.parseInt(elem.getAttributeValue("id")));
                    contacto.setNombre(elem.getChild("nombre").getTextTrim());
                    contacto.setPuesto(elem.getChild("puesto").getTextTrim());
                    contacto.setTel(elem.getChild("tel").getTextTrim());
                    contacto.setEmail(elem.getChild("email").getTextTrim());
                    contacto.setHorario(elem.getChild("horario").getTextTrim());
                    contacto.setActivo(Boolean.parseBoolean(elem.getChild("activo").getTextTrim()));
                    contactos.add(contacto);
                }
            }

        } catch (JDOMException ex) {
            Logger.getLogger(XMLContactoOfertaEmpleoDAO.class.getName()).log(Level.SEVERE, null, ex);
        }

        return contactos;
    }

    @Override
    public ContactoOfertaEmpleo findById(int id) {
        ContactoOfertaEmpleo contacto = null;
        String xPath = "contactos/contacto[@id='" + id + "']";
        doc = XMLDAOFactory.getDocument(XMLpath);

        try {

            XPath xpath = XPath.newInstance(xPath);
            List list = xpath.selectNodes(doc);

            if (!list.isEmpty()) {
                for (Iterator iter = list.iterator(); iter.hasNext();) {
                    Element elem = (Element) iter.next();
                    contacto = new ContactoOfertaEmpleo();
                    contacto.setId(Integer.parseInt(elem.getAttributeValue("id")));
                    contacto.setNombre(elem.getChild("nombre").getTextTrim());
                    contacto.setPuesto(elem.getChild("puesto").getTextTrim());
                    contacto.setTel(elem.getChild("tel").getTextTrim());
                    contacto.setEmail(elem.getChild("email").getTextTrim());
                    contacto.setHorario(elem.getChild("horario").getTextTrim());
                    contacto.setActivo(Boolean.parseBoolean(elem.getChild("activo").getTextTrim()));
                }
            }

        } catch (JDOMException ex) {
            Logger.getLogger(XMLContactoOfertaEmpleoDAO.class.getName()).log(Level.SEVERE, null, ex);
        }

        return contacto;
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
