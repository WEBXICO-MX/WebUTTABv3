/**
 *
 * @author Roberto Eder Weiss Juárez
 */
package mx.edu.uttab.dao.xml.fichero;

import mx.edu.uttab.dao.xml.actividaduniversitaria.XMLActividadUniversitariaDAO;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import mx.edu.uttab.dao.xml.XMLDAOFactory;
import mx.edu.uttab.model.Fichero;
import org.jdom2.Document;
import org.jdom2.Element;
import org.jdom2.JDOMException;
import org.jdom2.output.Format;
import org.jdom2.output.XMLOutputter;
import org.jdom2.xpath.XPath;

public class XMLFicheroDAO implements FicheroDAO {

    Document doc = null;
    String XMLpath = "";

    public XMLFicheroDAO() {

    }

    @Override
    public boolean saveOrUpdate(Fichero fichero) {
        try {

            Document input = XMLDAOFactory.getDocument(XMLpath);
            Element raiz = input.getRootElement();
            Element hijo = new Element("fichero");
            hijo.setAttribute("id", String.valueOf(fichero.getId()));
            hijo.setAttribute("destino", String.valueOf(fichero.getDestino()));
            hijo.addContent(new Element("ruta").addContent(fichero.getRuta()));
            hijo.addContent(new Element("mime").addContent(fichero.getMime()));
            hijo.addContent(new Element("activo").addContent(String.valueOf(fichero.isActivo())));
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
            e.printStackTrace();
        } catch (java.lang.NullPointerException e) {
            e.printStackTrace();
            //System.out.println("Error NullPointerException: " + e.getMessage());
        } catch (Exception e) {
            e.printStackTrace();
            //System.out.println("Error NullPointerException: " + e.getMessage());
        }
        return true;
    }

    @Override
    public List<Fichero> findAll() {
        List ficheros = new ArrayList();
        Fichero fichero = null;
        String xPath = "ficheros/fichero";
        doc = XMLDAOFactory.getDocument(XMLpath);
        try {

            XPath xpath = XPath.newInstance(xPath);
            List list = xpath.selectNodes(doc);

            if (!list.isEmpty()) {
                for (Iterator iter = list.iterator(); iter.hasNext();) {
                    Element elem = (Element) iter.next();
                    fichero = new Fichero();
                    fichero.setId(Integer.parseInt(elem.getAttributeValue("id")));
                    fichero.setDestino(elem.getAttributeValue("destino"));
                    fichero.setRuta(elem.getChild("ruta").getTextTrim());
                    fichero.setMime(elem.getChild("mime").getTextTrim());
                    fichero.setActivo(Boolean.parseBoolean(elem.getChild("activo").getTextTrim()));
                    ficheros.add(fichero);
                }
            }

        } catch (JDOMException ex) {
            Logger.getLogger(XMLActividadUniversitariaDAO.class.getName()).log(Level.SEVERE, null, ex);
        }

        return ficheros;
    }

    @Override
    public Fichero findById(int id,String destino) {
        Fichero fichero = null;
        String xPath = "ficheros/fichero[@id='" + id + "'][@destino='"+destino+"']";
        doc = XMLDAOFactory.getDocument(XMLpath);

        try {

            XPath xpath = XPath.newInstance(xPath);
            List list = xpath.selectNodes(doc);

            if (!list.isEmpty()) {
                for (Iterator iter = list.iterator(); iter.hasNext();) {
                    Element elem = (Element) iter.next();
                    fichero = new Fichero();
                    fichero.setId(Integer.parseInt(elem.getAttributeValue("id")));
                    fichero.setDestino(elem.getAttributeValue("destino"));
                    fichero.setNombre(elem.getChild("nombre") != null ? elem.getChild("nombre").getTextTrim(): "");
                    fichero.setRuta(elem.getChild("ruta").getTextTrim());
                    fichero.setMime(elem.getChild("mime").getTextTrim());
                    fichero.setActivo(Boolean.parseBoolean(elem.getChild("activo").getTextTrim()));

                }
            }

        } catch (JDOMException ex) {
            Logger.getLogger(XMLActividadUniversitariaDAO.class.getName()).log(Level.SEVERE, null, ex);
        }

        return fichero;
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
