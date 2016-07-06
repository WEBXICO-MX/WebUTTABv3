/**
 *
 * @author Roberto Eder Weiss Juárez
 * @see {@link http://webxico.blogspot.mx/}
 */
package mx.edu.uttab.dao.xml.aviso;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import mx.edu.uttab.dao.xml.XMLDAOFactory;
import mx.edu.uttab.model.Aviso;
import org.jdom2.Document;
import org.jdom2.Element;
import org.jdom2.JDOMException;
import org.jdom2.output.Format;
import org.jdom2.output.XMLOutputter;
import org.jdom2.xpath.XPath;

public class XMLAvisoDAO implements AvisoDAO {

    Document doc = null;
    String XMLpath = "";

    public XMLAvisoDAO() {

    }

    @Override
    public boolean saveOrUpdate(Aviso aviso) {
        boolean grabo = false;

        try {
            doc = XMLDAOFactory.getDocument(XMLpath);
            Element raiz = doc.getRootElement();
            //UPDATE
            if (aviso.getId() != 0) {
                List<Element> elements = raiz.getChildren("aviso");
                Element zsElement = null;
                for (Element e : elements) {
                    if (e.getAttributeValue("id").equals(String.valueOf(aviso.getId()))) {
                        zsElement = e;
                        break;
                    }
                }
                if (zsElement != null) {
                    zsElement.getChild("nombre").removeContent();
                    zsElement.getChild("nombre").addContent(aviso.getNombre());
                    zsElement.getChild("fecha_realizacion").removeContent();
                    zsElement.getChild("fecha_realizacion").addContent(aviso.getFecha_realizacion());
                    zsElement.getChild("fecha_publicacion").removeContent();
                    zsElement.getChild("fecha_publicacion").addContent(aviso.getFecha_publicacion());
                    zsElement.getChild("img").removeContent();
                    zsElement.getChild("img").addContent(aviso.getImg());
                    zsElement.getChild("pdf").removeContent();
                    zsElement.getChild("pdf").addContent(aviso.getPdf());
                    zsElement.getChild("link").removeContent();
                    zsElement.getChild("link").addContent(aviso.getLink());
                    zsElement.getChild("activo").removeContent();
                    zsElement.getChild("activo").addContent(String.valueOf(aviso.isActivo()));
                }
            } else { //INSERT
                Element hijo = new Element("aviso");
                hijo.setAttribute("id", String.valueOf(getMaxId() + 1));
                hijo.addContent(new Element("nombre").addContent(aviso.getNombre()));
                hijo.addContent(new Element("fecha_realizacion").addContent(aviso.getFecha_realizacion()));
                hijo.addContent(new Element("fecha_publicacion").addContent(aviso.getFecha_publicacion()));
                hijo.addContent(new Element("img").addContent(aviso.getImg()));
                hijo.addContent(new Element("pdf").addContent(aviso.getPdf()));
                hijo.addContent(new Element("link").addContent(aviso.getLink()));
                hijo.addContent(new Element("activo").addContent(String.valueOf(aviso.isActivo())));
                raiz.addContent(1, hijo);// Se deja el parametro index en valor 1 para que siempre no inserte los nodos al principio del XML.
            }

            //Archivo de salida
            Format format = Format.getPrettyFormat();
            format.setEncoding("UTF-8");
            XMLOutputter salida = new XMLOutputter(format);
            //Archivo destino
            File f = new File(XMLpath);
            FileOutputStream fos = new FileOutputStream(f);
            salida.output(doc, fos);
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
        doc = null;
        return grabo;
    }

    @Override
    public List<Aviso> findAll() {
        List avisos = new ArrayList();
        Aviso aviso = null;
        String xPath = "avisos/aviso";
        doc = XMLDAOFactory.getDocument(XMLpath);
        try {

            XPath xpath = XPath.newInstance(xPath);
            List list = xpath.selectNodes(doc);

            if (!list.isEmpty()) {
                for (Iterator iter = list.iterator(); iter.hasNext();) {
                    Element elem = (Element) iter.next();
                    aviso = new Aviso();
                    aviso.setId(Integer.parseInt(elem.getAttributeValue("id")));
                    aviso.setNombre(elem.getChild("nombre").getTextTrim());
                    aviso.setFecha_realizacion(elem.getChild("fecha_realizacion").getTextTrim());
                    aviso.setFecha_publicacion(elem.getChild("fecha_publicacion").getTextTrim());
                    aviso.setImg(elem.getChild("img").getTextTrim());
                    aviso.setPdf(elem.getChild("pdf").getTextTrim());
                    aviso.setLink(elem.getChild("link").getTextTrim());
                    aviso.setActivo(Boolean.parseBoolean(elem.getChild("activo").getTextTrim()));
                    avisos.add(aviso);
                }
            }

        } catch (JDOMException ex) {
            Logger.getLogger(XMLAvisoDAO.class.getName()).log(Level.SEVERE, null, ex);
        }

        return avisos;
    }

    @Override
    public List<Aviso> findAllBy(boolean activo) {
        List avisos = new ArrayList();
        Aviso aviso = null;
        String xPath = "avisos/aviso[activo='" + Boolean.toString(activo) + "']";
        //System.out.println("El xPath es: " + xPath);
        doc = XMLDAOFactory.getDocument(XMLpath);
        try {

            XPath xpath = XPath.newInstance(xPath);
            List list = xpath.selectNodes(doc);

            if (!list.isEmpty()) {
                for (Iterator iter = list.iterator(); iter.hasNext();) {
                    Element elem = (Element) iter.next();
                    aviso = new Aviso();
                    aviso.setId(Integer.parseInt(elem.getAttributeValue("id")));
                    aviso.setNombre(elem.getChild("nombre").getTextTrim());
                    aviso.setFecha_realizacion(elem.getChild("fecha_realizacion").getTextTrim());
                    aviso.setFecha_publicacion(elem.getChild("fecha_publicacion").getTextTrim());
                    aviso.setImg(elem.getChild("img").getTextTrim());
                    aviso.setPdf(elem.getChild("pdf").getTextTrim());
                    aviso.setLink(elem.getChild("link").getTextTrim());
                    aviso.setActivo(Boolean.parseBoolean(elem.getChild("activo").getTextTrim()));
                    avisos.add(aviso);
                }
            }

        } catch (JDOMException ex) {
            Logger.getLogger(XMLAvisoDAO.class.getName()).log(Level.SEVERE, null, ex);
        }

        return avisos;

    }

    @Override
    public Aviso findBy(int id) {
        Aviso aviso = null;
        String xPath = "avisos/aviso[@id='" + id + "']";
        doc = XMLDAOFactory.getDocument(XMLpath);

        try {

            XPath xpath = XPath.newInstance(xPath);
            List list = xpath.selectNodes(doc);

            if (!list.isEmpty()) {
                for (Iterator iter = list.iterator(); iter.hasNext();) {
                    Element elem = (Element) iter.next();
                    aviso = new Aviso();
                    aviso.setId(Integer.parseInt(elem.getAttributeValue("id")));
                    aviso.setNombre(elem.getChild("nombre").getTextTrim());
                    aviso.setFecha_realizacion(elem.getChild("fecha_realizacion").getTextTrim());
                    aviso.setFecha_publicacion(elem.getChild("fecha_publicacion").getTextTrim());
                    aviso.setImg(elem.getChild("img").getTextTrim());
                    aviso.setPdf(elem.getChild("pdf").getTextTrim());
                    aviso.setLink(elem.getChild("link").getTextTrim());
                    aviso.setActivo(Boolean.parseBoolean(elem.getChild("activo").getTextTrim()));
                }
            }

        } catch (JDOMException ex) {
            Logger.getLogger(XMLAvisoDAO.class.getName()).log(Level.SEVERE, null, ex);
        }

        return aviso;
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
        //String xPath = "avisos/aviso/@id[not(. <=../preceding-sibling::aviso/@id) and not(. <=../following-sibling::aviso/@id)]";
        String xPath = "/avisos/aviso/@id[not(. < ../../aviso/@id)][1]";
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
            Logger.getLogger(XMLAvisoDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        doc2 = null;
        return maxId;
    }

    @Override
    public List<Aviso> findTop(int inicio, int fin) {

        List avisos = new ArrayList();
        Aviso aviso = null;
        String xPath = "avisos/aviso[position() >= "+inicio+" and position() < "+fin+"]";
        doc = XMLDAOFactory.getDocument(XMLpath);
        try {

            XPath xpath = XPath.newInstance(xPath);
            List list = xpath.selectNodes(doc);

            if (!list.isEmpty()) {
                for (Iterator iter = list.iterator(); iter.hasNext();) {
                    Element elem = (Element) iter.next();
                    aviso = new Aviso();
                    aviso.setId(Integer.parseInt(elem.getAttributeValue("id")));
                    aviso.setNombre(elem.getChild("nombre").getTextTrim());
                    aviso.setFecha_realizacion(elem.getChild("fecha_realizacion").getTextTrim());
                    aviso.setFecha_publicacion(elem.getChild("fecha_publicacion").getTextTrim());
                    aviso.setImg(elem.getChild("img").getTextTrim());
                    aviso.setPdf(elem.getChild("pdf").getTextTrim());
                    aviso.setLink(elem.getChild("link").getTextTrim());
                    aviso.setActivo(Boolean.parseBoolean(elem.getChild("activo").getTextTrim()));
                    avisos.add(aviso);
                }
            }

        } catch (JDOMException ex) {
            Logger.getLogger(XMLAvisoDAO.class.getName()).log(Level.SEVERE, null, ex);
        }

        return avisos;
    }

}
