/**
 *
 * @author Roberto Eder Weiss Juárez
 * @see {@link http://webxico.blogspot.mx/}
 */
package mx.edu.uttab.dao.xml.gaceta;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import mx.edu.uttab.dao.xml.XMLDAOFactory;
import mx.edu.uttab.model.Gaceta;
import org.jdom2.Document;
import org.jdom2.Element;
import org.jdom2.JDOMException;
import org.jdom2.output.Format;
import org.jdom2.output.XMLOutputter;
import org.jdom2.xpath.XPath;

public class XMLGacetaDAO implements GacetaDAO {

    String XMLpath = "";

    public XMLGacetaDAO() {

    }

    @Override
    public boolean saveOrUpdate(Gaceta gaceta) {
        boolean grabo = false;
        Document doc2 = null;

        try {
            doc2 = XMLDAOFactory.getDocument(XMLpath);
            Element raiz = doc2.getRootElement();
            //UPDATE
            if (gaceta.getId() != 0) {
                List<Element> elements = raiz.getChildren("gaceta");
                Element zsElement = null;
                for (Element e : elements) {
                    if (e.getAttributeValue("id").equals(String.valueOf(gaceta.getId()))) {
                        zsElement = e;
                        break;
                    }
                }
                if (zsElement != null) {
                    zsElement.getChild("fecha_ejemplar").removeContent();
                    zsElement.getChild("fecha_ejemplar").addContent(gaceta.getFecha_ejemplar());
                    zsElement.getChild("img").removeContent();
                    zsElement.getChild("img").addContent(gaceta.getImg());
                    zsElement.getChild("pdf").removeContent();
                    zsElement.getChild("pdf").addContent(gaceta.getPdf());
                    zsElement.getChild("activo").removeContent();
                    zsElement.getChild("activo").addContent(String.valueOf(gaceta.isActivo()));
                }
            } else { //INSERT
                Element hijo = new Element("gaceta");
                hijo.setAttribute("id", String.valueOf(getMaxId() + 1));
                hijo.addContent(new Element("fecha_ejemplar").addContent(gaceta.getFecha_ejemplar()));
                hijo.addContent(new Element("img").addContent(gaceta.getImg()));
                hijo.addContent(new Element("pdf").addContent(gaceta.getPdf()));
                hijo.addContent(new Element("activo").addContent(String.valueOf(gaceta.isActivo())));
                raiz.addContent(1, hijo);// Se deja el parametro index en valor 1 para que siempre no inserte los nodos al principio del XML.
            }

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
    public List<Gaceta> findAll() {
        List gacetas = new ArrayList();
        Gaceta gaceta = null;
        String xPath = "gacetas/gaceta";
        Document doc2 = XMLDAOFactory.getDocument(XMLpath);
        try {

            XPath xpath = XPath.newInstance(xPath);
            List list = xpath.selectNodes(doc2);

            if (!list.isEmpty()) {
                for (Iterator iter = list.iterator(); iter.hasNext();) {
                    Element elem = (Element) iter.next();
                    gaceta = new Gaceta();
                    gaceta.setId(Integer.parseInt(elem.getAttributeValue("id")));
                    gaceta.setFecha_ejemplar(elem.getChild("fecha_ejemplar").getTextTrim());
                    gaceta.setImg(elem.getChild("img").getTextTrim());
                    gaceta.setPdf(elem.getChild("pdf").getTextTrim());
                    gaceta.setActivo(Boolean.parseBoolean(elem.getChild("activo").getTextTrim()));
                    gacetas.add(gaceta);
                }
            }

        } catch (JDOMException ex) {
            Logger.getLogger(XMLGacetaDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        doc2 = null;
        return gacetas;
    }

    @Override
    public Gaceta findById(int id) {
        Gaceta gaceta = null;
        String xPath = "gacetas/gaceta[@id='" + id + "']";
        Document doc2 = XMLDAOFactory.getDocument(XMLpath);

        try {

            XPath xpath = XPath.newInstance(xPath);
            List list = xpath.selectNodes(doc2);

            if (!list.isEmpty()) {
                for (Iterator iter = list.iterator(); iter.hasNext();) {
                    Element elem = (Element) iter.next();
                    gaceta = new Gaceta();
                    gaceta.setId(Integer.parseInt(elem.getAttributeValue("id")));
                    gaceta.setFecha_ejemplar(elem.getChild("fecha_ejemplar").getTextTrim());
                    gaceta.setImg(elem.getChild("img").getTextTrim());
                    gaceta.setPdf(elem.getChild("pdf").getTextTrim());
                    gaceta.setActivo(Boolean.parseBoolean(elem.getChild("activo").getTextTrim()));
                }
            }

        } catch (JDOMException ex) {
            Logger.getLogger(XMLGacetaDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        doc2 = null;
        return gaceta;
    }

    @Override
    public Gaceta findUltima() {
        Gaceta gaceta = null;
        String xPath = "gacetas/gaceta[1]";
        Document doc2 = XMLDAOFactory.getDocument(XMLpath);

        try {

            XPath xpath = XPath.newInstance(xPath);
            List list = xpath.selectNodes(doc2);

            if (!list.isEmpty()) {
                for (Iterator iter = list.iterator(); iter.hasNext();) {
                    Element elem = (Element) iter.next();
                    gaceta = new Gaceta();
                    gaceta.setId(Integer.parseInt(elem.getAttributeValue("id")));
                    gaceta.setFecha_ejemplar(elem.getChild("fecha_ejemplar").getTextTrim());
                    gaceta.setImg(elem.getChild("img").getTextTrim());
                    gaceta.setPdf(elem.getChild("pdf").getTextTrim());
                    gaceta.setActivo(Boolean.parseBoolean(elem.getChild("activo").getTextTrim()));
                }
            }

        } catch (JDOMException ex) {
            Logger.getLogger(XMLGacetaDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        doc2 = null;
        return gaceta;
    }

    @Override
    public List<Gaceta> findByAnio(int anio_fecha_ejemplar) {
        List gacetas = new ArrayList();
        Gaceta gaceta = null;
        //String xPath = "gacetas/gaceta[contains(fecha_ejemplar,'" + anio_fecha_ejemplar + "')][activo='" + Boolean.toString(activo) + "']";
        String xPath = "gacetas/gaceta[contains(fecha_ejemplar,'" + anio_fecha_ejemplar + "')]";
        Document doc2 = XMLDAOFactory.getDocument(XMLpath);

        try {

            XPath xpath = XPath.newInstance(xPath);
            List list = xpath.selectNodes(doc2);

            if (!list.isEmpty()) {
                for (Iterator iter = list.iterator(); iter.hasNext();) {
                    Element elem = (Element) iter.next();
                    gaceta = new Gaceta();
                    gaceta.setId(Integer.parseInt(elem.getAttributeValue("id")));
                    gaceta.setFecha_ejemplar(elem.getChild("fecha_ejemplar").getTextTrim());
                    gaceta.setImg(elem.getChild("img").getTextTrim());
                    gaceta.setPdf(elem.getChild("pdf").getTextTrim());
                    gaceta.setActivo(Boolean.parseBoolean(elem.getChild("activo").getTextTrim()));
                    gacetas.add(gaceta);
                }
            }

        } catch (JDOMException ex) {
            Logger.getLogger(XMLGacetaDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        doc2 = null;
        return gacetas;

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
        //String xPath = "gacetas/gaceta/@id[not(. <=../preceding-sibling::gaceta/@id) and not(. <=../following-sibling::gaceta/@id)]";
        String xPath = "/gacetas/gaceta/@id[not(. < ../../gaceta/@id)][1]";
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
            Logger.getLogger(XMLGacetaDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        doc2 = null;
        return maxId;
    }

    @Override
    public List<Gaceta> findTop(int inicio, int fin) {

        List gacetas = new ArrayList();
        Gaceta gaceta = null;
        String xPath = "gacetas/gaceta[position() >= "+inicio+" and position() < "+fin+"]";
        Document doc2 = XMLDAOFactory.getDocument(XMLpath);
        try {

            XPath xpath = XPath.newInstance(xPath);
            List list = xpath.selectNodes(doc2);

            if (!list.isEmpty()) {
                for (Iterator iter = list.iterator(); iter.hasNext();) {
                    Element elem = (Element) iter.next();
                    gaceta = new Gaceta();
                    gaceta.setId(Integer.parseInt(elem.getAttributeValue("id")));
                    gaceta.setFecha_ejemplar(elem.getChild("fecha_ejemplar").getTextTrim());
                    gaceta.setImg(elem.getChild("img").getTextTrim());
                    gaceta.setPdf(elem.getChild("pdf").getTextTrim());
                    gaceta.setActivo(Boolean.parseBoolean(elem.getChild("activo").getTextTrim()));
                    gacetas.add(gaceta);
                }
            }

        } catch (JDOMException ex) {
            Logger.getLogger(XMLGacetaDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        doc2 = null;
        return gacetas;
    }
}
