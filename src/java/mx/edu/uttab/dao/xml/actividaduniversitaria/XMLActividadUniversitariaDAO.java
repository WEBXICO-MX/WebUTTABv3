/**
 *
 * @author Roberto Eder Weiss Juárez
 * @see {@link http://webxico.blogspot.mx/}
 */
package mx.edu.uttab.dao.xml.actividaduniversitaria;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import mx.edu.uttab.dao.xml.XMLDAOFactory;
import mx.edu.uttab.model.ActividadUniversitaria;
import org.jdom2.CDATA;
import org.jdom2.Document;
import org.jdom2.Element;
import org.jdom2.JDOMException;
import org.jdom2.output.Format;
import org.jdom2.output.XMLOutputter;
import org.jdom2.xpath.XPath;

public class XMLActividadUniversitariaDAO implements ActividadUniversitariaDAO {

    Document doc = null;
    String XMLpath = "";

    public XMLActividadUniversitariaDAO() {

    }

    @Override
    public boolean saveOrUpdate(ActividadUniversitaria actividad) {
        boolean grabo = false;

        try {
            doc = XMLDAOFactory.getDocument(XMLpath);
            Element raiz = doc.getRootElement();
            //UPDATE
            if (actividad.getId() != 0) {
                List<Element> elements = raiz.getChildren("actividad");
                Element zsElement = null;
                for (Element e : elements) {
                    if (e.getAttributeValue("id").equals(String.valueOf(actividad.getId()))) {
                        zsElement = e;
                        break;
                    }
                }
                if (zsElement != null) {
                    zsElement.getChild("nombre").removeContent();
                    zsElement.getChild("nombre").addContent(actividad.getNombre());
                    if (zsElement.getChild("text_preview_web") != null) {
                        zsElement.getChild("text_preview_web").removeContent();
                        zsElement.getChild("text_preview_web").addContent(String.valueOf(actividad.getText_preview_web()));
                    }
                    zsElement.getChild("text_preview").removeContent();
                    zsElement.getChild("text_preview").addContent(actividad.getText_preview());
                    zsElement.getChild("text_completo").removeContent();
                    zsElement.getChild("text_completo").addContent(new CDATA(actividad.getText_completo()));
                    zsElement.getChild("fecha_realizacion").removeContent();
                    zsElement.getChild("fecha_realizacion").addContent(actividad.getFecha_realizacion());
                    zsElement.getChild("fecha_publicacion").removeContent();
                    zsElement.getChild("fecha_publicacion").addContent(actividad.getFecha_publicacion());
                    zsElement.getChild("img").removeContent();
                    zsElement.getChild("img").addContent(actividad.getImg());
                    zsElement.getChild("img_movil").removeContent();
                    zsElement.getChild("img_movil").addContent(actividad.getImg_movil());
                    zsElement.getChild("img_movil1").removeContent();
                    zsElement.getChild("img_movil1").addContent(actividad.getImg_movil1());
                    zsElement.getChild("pdf").removeContent();
                    zsElement.getChild("pdf").addContent(actividad.getPdf());
                    zsElement.getChild("link").removeContent();
                    zsElement.getChild("link").addContent(actividad.getLink());
                    if (zsElement.getChild("primario") != null) {
                        zsElement.getChild("primario").removeContent();
                        zsElement.getChild("primario").addContent(String.valueOf(actividad.isPrimario()));
                    }
                    zsElement.getChild("activo").removeContent();
                    zsElement.getChild("activo").addContent(String.valueOf(actividad.isActivo()));
                }
            } else { //INSERT
                Element hijo = new Element("actividad");
                hijo.setAttribute("id", String.valueOf(getMaxId() + 1));
                hijo.addContent(new Element("nombre").addContent(actividad.getNombre()));
                hijo.addContent(new Element("text_preview_web").addContent(actividad.getText_preview_web()));
                hijo.addContent(new Element("text_preview").addContent(actividad.getText_preview()));
                hijo.addContent(new Element("text_completo").addContent(new CDATA(actividad.getText_completo())));
                hijo.addContent(new Element("fecha_realizacion").addContent(actividad.getFecha_realizacion()));
                hijo.addContent(new Element("fecha_publicacion").addContent(actividad.getFecha_publicacion()));
                hijo.addContent(new Element("img").addContent(actividad.getImg()));
                hijo.addContent(new Element("img_movil").addContent(actividad.getImg_movil()));
                hijo.addContent(new Element("img_movil1").addContent(actividad.getImg_movil1()));
                hijo.addContent(new Element("pdf").addContent(actividad.getPdf()));
                hijo.addContent(new Element("link").addContent(actividad.getLink()));
                hijo.addContent(new Element("primario").addContent(String.valueOf(actividad.isPrimario())));
                hijo.addContent(new Element("activo").addContent(String.valueOf(actividad.isActivo())));
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
    public List<ActividadUniversitaria> findAll() {
        List actividades = new ArrayList();
        ActividadUniversitaria actividad = null;
        String xPath = "actividades/actividad";
        doc = XMLDAOFactory.getDocument(XMLpath);
        try {

            XPath xpath = XPath.newInstance(xPath);
            List list = xpath.selectNodes(doc);

            if (!list.isEmpty()) {
                for (Iterator iter = list.iterator(); iter.hasNext();) {
                    Element elem = (Element) iter.next();
                    actividad = new ActividadUniversitaria();
                    actividad.setId(Integer.parseInt(elem.getAttributeValue("id")));
                    actividad.setNombre(elem.getChild("nombre").getTextTrim());
                    actividad.setText_preview_web(elem.getChild("text_preview_web") != null ? elem.getChild("text_preview_web").getTextTrim() : "");
                    actividad.setText_preview(elem.getChild("text_preview").getTextTrim());
                    actividad.setText_completo(elem.getChild("text_completo") != null ? elem.getChild("text_completo").getTextTrim() : "");
                    actividad.setFecha_realizacion(elem.getChild("fecha_realizacion").getTextTrim());
                    actividad.setFecha_publicacion(elem.getChild("fecha_publicacion").getTextTrim());
                    actividad.setImg(elem.getChild("img").getTextTrim());
                    actividad.setImg_movil(elem.getChild("img_movil") != null ? elem.getChild("img_movil").getTextTrim() : "");
                    actividad.setImg_movil1(elem.getChild("img_movil1") != null ? elem.getChild("img_movil1").getTextTrim() : "");
                    actividad.setPdf(elem.getChild("pdf").getTextTrim());
                    actividad.setLink(elem.getChild("link").getTextTrim());
                    actividad.setPrimario(elem.getChild("primario") != null ? Boolean.parseBoolean(elem.getChild("primario").getTextTrim()) : false);
                    actividad.setActivo(Boolean.parseBoolean(elem.getChild("activo").getTextTrim()));
                    actividades.add(actividad);
                }
            }

        } catch (JDOMException ex) {
            Logger.getLogger(XMLActividadUniversitariaDAO.class.getName()).log(Level.SEVERE, null, ex);
        }

        return actividades;
    }

    @Override
    public List<ActividadUniversitaria> findByAnioMes(int anio_fecha_realizacion, String mes_fecha_realizacion) {
        List actividades = new ArrayList();
        ActividadUniversitaria actividad = null;
        String xPath = "actividades/actividad[contains(fecha_publicacion,'" + mes_fecha_realizacion + "')][contains(fecha_realizacion,'" + anio_fecha_realizacion + "')]";
        //System.out.println("El xPath es: "+xPath);
        doc = XMLDAOFactory.getDocument(XMLpath);
        try {

            XPath xpath = XPath.newInstance(xPath);
            List list = xpath.selectNodes(doc);

            if (!list.isEmpty()) {
                for (Iterator iter = list.iterator(); iter.hasNext();) {
                    Element elem = (Element) iter.next();
                    actividad = new ActividadUniversitaria();
                    actividad.setId(Integer.parseInt(elem.getAttributeValue("id")));
                    actividad.setNombre(elem.getChild("nombre").getTextTrim());
                    actividad.setText_preview_web(elem.getChild("text_preview_web") != null ? elem.getChild("text_preview_web").getTextTrim() : "");
                    actividad.setText_preview(elem.getChild("text_preview").getTextTrim());
                    actividad.setText_completo(elem.getChild("text_completo") != null ? elem.getChild("text_completo").getTextTrim() : "");
                    actividad.setFecha_realizacion(elem.getChild("fecha_realizacion").getTextTrim());
                    actividad.setFecha_publicacion(elem.getChild("fecha_publicacion").getTextTrim());
                    actividad.setImg(elem.getChild("img").getTextTrim());
                    actividad.setImg_movil(elem.getChild("img_movil") != null ? elem.getChild("img_movil").getTextTrim() : "");
                    actividad.setImg_movil1(elem.getChild("img_movil1") != null ? elem.getChild("img_movil1").getTextTrim() : "");
                    actividad.setPdf(elem.getChild("pdf").getTextTrim());
                    actividad.setLink(elem.getChild("link").getTextTrim());
                    actividad.setPrimario(elem.getChild("primario") != null ? Boolean.parseBoolean(elem.getChild("primario").getTextTrim()) : false);
                    actividad.setActivo(Boolean.parseBoolean(elem.getChild("activo").getTextTrim()));
                    actividades.add(actividad);
                }
            }

        } catch (JDOMException ex) {
            Logger.getLogger(XMLActividadUniversitariaDAO.class.getName()).log(Level.SEVERE, null, ex);
        }

        return actividades;

    }

    @Override
    public ActividadUniversitaria findById(int id) {
        ActividadUniversitaria actividad = null;
        String xPath = "actividades/actividad[@id='" + id + "']";
        doc = XMLDAOFactory.getDocument(XMLpath);

        try {

            XPath xpath = XPath.newInstance(xPath);
            List list = xpath.selectNodes(doc);

            if (!list.isEmpty()) {
                for (Iterator iter = list.iterator(); iter.hasNext();) {
                    Element elem = (Element) iter.next();
                    actividad = new ActividadUniversitaria();
                    actividad.setId(Integer.parseInt(elem.getAttributeValue("id")));
                    actividad.setNombre(elem.getChild("nombre").getTextTrim());
                    actividad.setText_preview_web(elem.getChild("text_preview_web") != null ? elem.getChild("text_preview_web").getTextTrim() : "");
                    actividad.setText_preview(elem.getChild("text_preview").getTextTrim());
                    actividad.setText_completo(elem.getChild("text_completo") != null ? elem.getChild("text_completo").getTextTrim() : "");
                    actividad.setFecha_realizacion(elem.getChild("fecha_realizacion").getTextTrim());
                    actividad.setFecha_publicacion(elem.getChild("fecha_publicacion").getTextTrim());
                    actividad.setImg(elem.getChild("img").getTextTrim());
                    actividad.setImg_movil(elem.getChild("img_movil") != null ? elem.getChild("img_movil").getTextTrim() : "");
                    actividad.setImg_movil1(elem.getChild("img_movil1") != null ? elem.getChild("img_movil1").getTextTrim() : "");
                    actividad.setPdf(elem.getChild("pdf").getTextTrim());
                    actividad.setLink(elem.getChild("link").getTextTrim());
                    actividad.setPrimario(elem.getChild("primario") != null ? Boolean.parseBoolean(elem.getChild("primario").getTextTrim()) : false);
                    actividad.setActivo(Boolean.parseBoolean(elem.getChild("activo").getTextTrim()));
                }
            }

        } catch (JDOMException ex) {
            Logger.getLogger(XMLActividadUniversitariaDAO.class.getName()).log(Level.SEVERE, null, ex);
        }

        return actividad;
    }

    @Override
    public ActividadUniversitaria findByPrimaria() {
        ActividadUniversitaria actividad = null;
        String xPath = "actividades/actividad[primario='true'][activo='true']";
        doc = XMLDAOFactory.getDocument(XMLpath);

        try {

            XPath xpath = XPath.newInstance(xPath);
            List list = xpath.selectNodes(doc);

            if (!list.isEmpty()) {
                for (Iterator iter = list.iterator(); iter.hasNext();) {
                    Element elem = (Element) iter.next();
                    actividad = new ActividadUniversitaria();
                    actividad.setId(Integer.parseInt(elem.getAttributeValue("id")));
                    actividad.setNombre(elem.getChild("nombre").getTextTrim());
                    actividad.setText_preview_web(elem.getChild("text_preview_web") != null ? elem.getChild("text_preview_web").getTextTrim() : "");
                    actividad.setText_preview(elem.getChild("text_preview").getTextTrim());
                    actividad.setText_completo(elem.getChild("text_completo") != null ? elem.getChild("text_completo").getTextTrim() : "");
                    actividad.setFecha_realizacion(elem.getChild("fecha_realizacion").getTextTrim());
                    actividad.setFecha_publicacion(elem.getChild("fecha_publicacion").getTextTrim());
                    actividad.setImg(elem.getChild("img").getTextTrim());
                    actividad.setImg_movil(elem.getChild("img_movil") != null ? elem.getChild("img_movil").getTextTrim() : "");
                    actividad.setImg_movil1(elem.getChild("img_movil1") != null ? elem.getChild("img_movil1").getTextTrim() : "");
                    actividad.setPdf(elem.getChild("pdf").getTextTrim());
                    actividad.setLink(elem.getChild("link").getTextTrim());
                    actividad.setPrimario(elem.getChild("primario") != null ? Boolean.parseBoolean(elem.getChild("primario").getTextTrim()) : false);
                    actividad.setActivo(Boolean.parseBoolean(elem.getChild("activo").getTextTrim()));
                }
            }

        } catch (JDOMException ex) {
            Logger.getLogger(XMLActividadUniversitariaDAO.class.getName()).log(Level.SEVERE, null, ex);
        }

        return actividad;
    }

    @Override
    public List<ActividadUniversitaria> findAllActivos(boolean primario) {
        List actividades = new ArrayList();
        ActividadUniversitaria actividad = null;
        String xPath = "";
        if (primario) {
            xPath = "actividades/actividad[activo='true']";
        } else {
            xPath = "actividades/actividad[activo='true'][primario='false']";
        }
        //System.out.println("El xPath es: "+xPath);
        doc = XMLDAOFactory.getDocument(XMLpath);
        try {

            XPath xpath = XPath.newInstance(xPath);
            List list = xpath.selectNodes(doc);

            if (!list.isEmpty()) {
                for (Iterator iter = list.iterator(); iter.hasNext();) {
                    Element elem = (Element) iter.next();
                    actividad = new ActividadUniversitaria();
                    actividad.setId(Integer.parseInt(elem.getAttributeValue("id")));
                    actividad.setNombre(elem.getChild("nombre").getTextTrim());
                    actividad.setText_preview_web(elem.getChild("text_preview_web") != null ? elem.getChild("text_preview_web").getTextTrim() : "");
                    actividad.setText_preview(elem.getChild("text_preview").getTextTrim());
                    actividad.setText_completo(elem.getChild("text_completo") != null ? elem.getChild("text_completo").getTextTrim() : "");
                    actividad.setFecha_realizacion(elem.getChild("fecha_realizacion").getTextTrim());
                    actividad.setFecha_publicacion(elem.getChild("fecha_publicacion").getTextTrim());
                    actividad.setImg(elem.getChild("img").getTextTrim());
                    actividad.setImg_movil(elem.getChild("img_movil") != null ? elem.getChild("img_movil").getTextTrim() : "");
                    actividad.setImg_movil1(elem.getChild("img_movil1") != null ? elem.getChild("img_movil1").getTextTrim() : "");
                    actividad.setPdf(elem.getChild("pdf").getTextTrim());
                    actividad.setLink(elem.getChild("link").getTextTrim());
                    actividad.setPrimario(elem.getChild("primario") != null ? Boolean.parseBoolean(elem.getChild("primario").getTextTrim()) : false);
                    actividad.setActivo(Boolean.parseBoolean(elem.getChild("activo").getTextTrim()));
                    actividades.add(actividad);
                }
            }

        } catch (JDOMException ex) {
            Logger.getLogger(XMLActividadUniversitariaDAO.class.getName()).log(Level.SEVERE, null, ex);
        }

        return actividades;
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
        //String xPath = "actividades/actividad/@id[not(. <=../preceding-sibling::actividad/@id) and not(. <=../following-sibling::actividad/@id)]";
        String xPath = "/actividades/actividad/@id[not(. < ../../actividad/@id)][1]";
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
            Logger.getLogger(XMLActividadUniversitariaDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        doc2 = null;
        return maxId;
    }

    @Override
    public List<ActividadUniversitaria> findTop(int inicio, int fin) {

        List actividades = new ArrayList();
        ActividadUniversitaria actividad = null;
        String xPath = "actividades/actividad[position() >= "+inicio+" and position() < "+fin+"]";
        doc = XMLDAOFactory.getDocument(XMLpath);
        try {

            XPath xpath = XPath.newInstance(xPath);
            List list = xpath.selectNodes(doc);

            if (!list.isEmpty()) {
                for (Iterator iter = list.iterator(); iter.hasNext();) {
                    Element elem = (Element) iter.next();
                    actividad = new ActividadUniversitaria();
                    actividad.setId(Integer.parseInt(elem.getAttributeValue("id")));
                    actividad.setNombre(elem.getChild("nombre").getTextTrim());
                    actividad.setText_preview_web(elem.getChild("text_preview_web") != null ? elem.getChild("text_preview_web").getTextTrim() : "");
                    actividad.setText_preview(elem.getChild("text_preview").getTextTrim());
                    actividad.setText_completo(elem.getChild("text_completo") != null ? elem.getChild("text_completo").getTextTrim() : "");
                    actividad.setFecha_realizacion(elem.getChild("fecha_realizacion").getTextTrim());
                    actividad.setFecha_publicacion(elem.getChild("fecha_publicacion").getTextTrim());
                    actividad.setImg(elem.getChild("img").getTextTrim());
                    actividad.setImg_movil(elem.getChild("img_movil") != null ? elem.getChild("img_movil").getTextTrim() : "");
                    actividad.setImg_movil1(elem.getChild("img_movil1") != null ? elem.getChild("img_movil1").getTextTrim() : "");
                    actividad.setPdf(elem.getChild("pdf").getTextTrim());
                    actividad.setLink(elem.getChild("link").getTextTrim());
                    actividad.setPrimario(elem.getChild("primario") != null ? Boolean.parseBoolean(elem.getChild("primario").getTextTrim()) : false);
                    actividad.setActivo(Boolean.parseBoolean(elem.getChild("activo").getTextTrim()));
                    actividades.add(actividad);
                }
            }

        } catch (JDOMException ex) {
            Logger.getLogger(XMLActividadUniversitariaDAO.class.getName()).log(Level.SEVERE, null, ex);
        }

        return actividades;
    }

}
