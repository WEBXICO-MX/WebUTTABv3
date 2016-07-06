/**
 *
 * @author Roberto Eder Weiss Juárez
 * @see {@link http://webxico.blogspot.mx/}
 */
package mx.edu.uttab.dao.xml.evento;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import mx.edu.uttab.dao.xml.XMLDAOFactory;
import mx.edu.uttab.model.Evento;
import org.jdom2.Document;
import org.jdom2.Element;
import org.jdom2.JDOMException;
import org.jdom2.output.Format;
import org.jdom2.output.XMLOutputter;
import org.jdom2.xpath.XPath;

public class XMLEventoDAO implements EventoDAO {

    Document doc = null;
    String XMLpath = "";

    public XMLEventoDAO() {
    }

    @Override
    public boolean saveOrUpdate(Evento evento) {
        boolean grabo = false;

        try {
            doc = XMLDAOFactory.getDocument(XMLpath);
            Element raiz = doc.getRootElement();
            //UPDATE
            if (evento.getId() != 0) {
                List<Element> elements = raiz.getChildren("evento");
                Element zsElement = null;
                for (Element e : elements) {
                    if (e.getAttributeValue("id").equals(String.valueOf(evento.getId()))) {
                        zsElement = e;
                        break;
                    }
                }
                if (zsElement != null) {
                    zsElement.getChild("nombre").removeContent();
                    zsElement.getChild("nombre").addContent(evento.getNombre());
                    zsElement.getChild("fecha_realizacion").removeContent();
                    zsElement.getChild("fecha_realizacion").addContent(evento.getFecha_realizacion());
                    zsElement.getChild("fecha_publicacion").removeContent();
                    zsElement.getChild("fecha_publicacion").addContent(evento.getFecha_publicacion());

                    zsElement.getChild("img1").removeContent();
                    zsElement.getChild("img1").addContent(evento.getImg1());

                    zsElement.getChild("img2").removeContent();
                    zsElement.getChild("img2").addContent(evento.getImg2());
                    zsElement.getChild("img2").removeAttribute("efectos2");
                    if (!zsElement.getChild("img2").getText().equals("NULL")) {
                        zsElement.getChild("img2").setAttribute("efectos2", evento.getEfectos2());
                    }

                    zsElement.getChild("img3").removeContent();
                    zsElement.getChild("img3").addContent(evento.getImg3());
                    zsElement.getChild("img3").removeAttribute("efectos3");
                    if (!zsElement.getChild("img3").getText().equals("NULL")) {
                        zsElement.getChild("img3").setAttribute("efectos3", evento.getEfectos3());
                    }
                    if (zsElement.getChild("img4") != null) {
                        zsElement.getChild("img4").removeContent();
                        zsElement.getChild("img4").addContent(evento.getImg4());
                        zsElement.getChild("img4").removeAttribute("efectos4");

                        if (!zsElement.getChild("img4").getText().equals("NULL")) {
                            zsElement.getChild("img4").setAttribute("efectos4", evento.getEfectos4());
                        }
                    }

                    /*if (zsElement.getChild("img4") != null) {
                     zsElement.getChild("img4").removeContent();
                     zsElement.getChild("img4").addContent(evento.getImg4());
                     zsElement.getChild("img4").removeAttribute("efectos4");
                     zsElement.getChild("img4").setAttribute("efectos4", evento.getEfectos4());
                     }

                     if (zsElement.getChild("img5") != null) {
                     zsElement.getChild("img5").removeContent();
                     zsElement.getChild("img5").addContent(evento.getImg5());
                     zsElement.getChild("img5").removeAttribute("efectos5");
                     zsElement.getChild("img5").setAttribute("efectos5", evento.getEfectos5());
                     }

                     if (zsElement.getChild("img6") != null) {
                     zsElement.getChild("img6").removeContent();
                     zsElement.getChild("img6").addContent(evento.getImg6());
                     zsElement.getChild("img6").removeAttribute("efectos6");
                     zsElement.getChild("img6").setAttribute("efectos6", evento.getEfectos6());
                     }*/
                    zsElement.getChild("pdf").removeContent();
                    zsElement.getChild("pdf").addContent(evento.getPdf());
                    zsElement.getChild("link").removeContent();
                    zsElement.getChild("link").addContent(evento.getLink());
                    zsElement.getChild("activo").removeContent();
                    zsElement.getChild("activo").addContent(String.valueOf(evento.isActivo()));
                }
            } else { //INSERT
                Element hijo = new Element("evento");
                hijo.setAttribute("id", String.valueOf(getMaxId() + 1));
                hijo.addContent(new Element("nombre").addContent(evento.getNombre()));
                hijo.addContent(new Element("fecha_realizacion").addContent(evento.getFecha_realizacion()));
                hijo.addContent(new Element("fecha_publicacion").addContent(evento.getFecha_publicacion()));
                hijo.addContent(new Element("img1").addContent(evento.getImg1()));

                if (!evento.getImg2().equals("NULL")) {
                    hijo.addContent(new Element("img2").addContent(evento.getImg2()).setAttribute("efectos2", evento.getEfectos2()));
                } else {
                    hijo.addContent(new Element("img2").addContent(evento.getImg2()));
                }

                if (!evento.getImg3().equals("NULL")) {
                    hijo.addContent(new Element("img3").addContent(evento.getImg3()).setAttribute("efectos3", evento.getEfectos3()));
                } else {
                    hijo.addContent(new Element("img3").addContent(evento.getImg3()));
                }

                if (!evento.getImg4().equals("NULL")) {
                    hijo.addContent(new Element("img4").addContent(evento.getImg4()).setAttribute("efectos4", evento.getEfectos4()));
                } else {
                    hijo.addContent(new Element("img4").addContent(evento.getImg4()));
                }

                if (!evento.getImg5().equals("")) {
                    hijo.addContent(new Element("img5").addContent(evento.getImg5()).setAttribute("efectos5", evento.getEfectos5()));
                }
                if (!evento.getImg6().equals("")) {
                    hijo.addContent(new Element("img6").addContent(evento.getImg6()).setAttribute("efectos6", evento.getEfectos6()));
                }
                hijo.addContent(new Element("pdf").addContent(evento.getPdf()));
                hijo.addContent(new Element("link").addContent(evento.getLink()));
                hijo.addContent(new Element("activo").addContent(String.valueOf(evento.isActivo())));
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
            grabo = false;
        } catch (java.lang.NullPointerException e) {
            grabo = false;
            //System.out.println("Error NullPointerException: " + e.getMessage());
        } catch (Exception e) {
            grabo = false;
            //System.out.println("Error NullPointerException: " + e.getMessage());
        }
        doc = null;
        return grabo;
    }

    @Override
    public List<Evento> findAll() {
        List eventos = new ArrayList();
        Evento evento = null;
        String xPath = "eventos/evento";
        doc = XMLDAOFactory.getDocument(XMLpath);
        try {

            XPath xpath = XPath.newInstance(xPath);
            List list = xpath.selectNodes(doc);

            if (!list.isEmpty()) {
                for (Iterator iter = list.iterator(); iter.hasNext();) {
                    Element elem = (Element) iter.next();
                    evento = new Evento();
                    evento.setId(Integer.parseInt(elem.getAttributeValue("id")));
                    evento.setNombre(elem.getChild("nombre").getTextTrim());
                    evento.setFecha_realizacion(elem.getChild("fecha_realizacion").getTextTrim());
                    evento.setFecha_publicacion(elem.getChild("fecha_publicacion").getTextTrim());
                    evento.setImg1(elem.getChild("img1").getTextTrim());
                    evento.setImg2(elem.getChild("img2").getTextTrim());
                    evento.setImg3(elem.getChild("img3").getTextTrim());
                    evento.setImg4(elem.getChild("img4") != null ? elem.getChild("img4").getTextTrim() : "");
                    evento.setImg5(elem.getChild("img5") != null ? elem.getChild("img5").getTextTrim() : "");
                    evento.setImg6(elem.getChild("img6") != null ? elem.getChild("img6").getTextTrim() : "");
                    evento.setEfectos2(elem.getChild("img2").getAttributeValue("efectos2") != null ? elem.getChild("img2").getAttributeValue("efectos2") : "durationin: 2300; easingin: easeOutQuad; slidedirection: right; delayin: 1500");
                    evento.setEfectos3(elem.getChild("img3").getAttributeValue("efectos3") != null ? elem.getChild("img3").getAttributeValue("efectos3") : "durationin: 2500; easingin: easeOutQuad; slidedirection: left; delayin: 1800");
                    evento.setEfectos4(elem.getChild("img4") != null ? (elem.getChild("img4").getAttributeValue("efectos4") != null ? elem.getChild("img4").getAttributeValue("efectos4") : "durationin: 2500; easingin: easeOutQuad; slidedirection: top; delayin: 1800") : "durationin: 2500; easingin: easeOutQuad; slidedirection: top; delayin: 1800");
                    evento.setEfectos5(elem.getChild("img5") != null ? (elem.getChild("img5").getAttributeValue("efectos5") != null ? elem.getChild("img5").getAttributeValue("efectos5") : "durationin: 2500; easingin: easeOutQuad; slidedirection: left; delayin: 1800") : "durationin: 2500; easingin: easeOutQuad; slidedirection: left; delayin: 1800");
                    evento.setEfectos6(elem.getChild("img6") != null ? (elem.getChild("img6").getAttributeValue("efectos6") != null ? elem.getChild("img6").getAttributeValue("efectos6") : "durationin: 2500; easingin: easeOutQuad; slidedirection: left; delayin: 1800") : "durationin: 2500; easingin: easeOutQuad; slidedirection: left; delayin: 1800");
                    evento.setPdf(elem.getChild("pdf").getTextTrim());
                    evento.setLink(elem.getChild("link").getTextTrim());
                    evento.setActivo(Boolean.parseBoolean(elem.getChild("activo").getTextTrim()));
                    eventos.add(evento);
                }
            }

        } catch (JDOMException ex) {
            Logger.getLogger(XMLEventoDAO.class.getName()).log(Level.SEVERE, null, ex);
        }

        return eventos;
    }

    @Override
    public List<Evento> findAllActivos() {
        List eventos = new ArrayList();
        Evento evento = null;
        String xPath = "eventos/evento[activo='true']";
        doc = XMLDAOFactory.getDocument(XMLpath);
        try {

            XPath xpath = XPath.newInstance(xPath);
            List list = xpath.selectNodes(doc);

            if (!list.isEmpty()) {
                for (Iterator iter = list.iterator(); iter.hasNext();) {
                    Element elem = (Element) iter.next();
                    evento = new Evento();
                    evento.setId(Integer.parseInt(elem.getAttributeValue("id")));
                    evento.setNombre(elem.getChild("nombre").getTextTrim());
                    evento.setFecha_realizacion(elem.getChild("fecha_realizacion").getTextTrim());
                    evento.setFecha_publicacion(elem.getChild("fecha_publicacion").getTextTrim());
                    evento.setImg1(elem.getChild("img1").getTextTrim());
                    evento.setImg2(elem.getChild("img2").getTextTrim());
                    evento.setImg3(elem.getChild("img3").getTextTrim());
                    evento.setImg4(elem.getChild("img4") != null ? elem.getChild("img4").getTextTrim() : "");
                    evento.setImg5(elem.getChild("img5") != null ? elem.getChild("img5").getTextTrim() : "");
                    evento.setImg6(elem.getChild("img6") != null ? elem.getChild("img6").getTextTrim() : "");
                    evento.setEfectos2(elem.getChild("img2").getAttributeValue("efectos2") != null ? elem.getChild("img2").getAttributeValue("efectos2") : "durationin: 2300; easingin: easeOutQuad; slidedirection: right; delayin: 1500");
                    evento.setEfectos3(elem.getChild("img3").getAttributeValue("efectos3") != null ? elem.getChild("img3").getAttributeValue("efectos3") : "durationin: 2500; easingin: easeOutQuad; slidedirection: left; delayin: 1800");
                    evento.setEfectos4(elem.getChild("img4") != null ? (elem.getChild("img4").getAttributeValue("efectos4") != null ? elem.getChild("img4").getAttributeValue("efectos4") : "durationin: 2500; easingin: easeOutQuad; slidedirection: top; delayin: 1800") : "durationin: 2500; easingin: easeOutQuad; slidedirection: top; delayin: 1800");
                    evento.setEfectos5(elem.getChild("img5") != null ? (elem.getChild("img5").getAttributeValue("efectos5") != null ? elem.getChild("img5").getAttributeValue("efectos5") : "durationin: 2500; easingin: easeOutQuad; slidedirection: left; delayin: 1800") : "durationin: 2500; easingin: easeOutQuad; slidedirection: left; delayin: 1800");
                    evento.setEfectos6(elem.getChild("img6") != null ? (elem.getChild("img6").getAttributeValue("efectos6") != null ? elem.getChild("img6").getAttributeValue("efectos6") : "durationin: 2500; easingin: easeOutQuad; slidedirection: left; delayin: 1800") : "durationin: 2500; easingin: easeOutQuad; slidedirection: left; delayin: 1800");
                    evento.setPdf(elem.getChild("pdf").getTextTrim());
                    evento.setLink(elem.getChild("link").getTextTrim());
                    evento.setActivo(Boolean.parseBoolean(elem.getChild("activo").getTextTrim()));
                    eventos.add(evento);
                }
            }

        } catch (JDOMException ex) {
            Logger.getLogger(XMLEventoDAO.class.getName()).log(Level.SEVERE, null, ex);
        }

        return eventos;
    }

    @Override
    public Evento findById(int id) {
        Evento evento = null;
        String xPath = "eventos/evento[@id='" + id + "']";
        doc = XMLDAOFactory.getDocument(XMLpath);

        try {

            XPath xpath = XPath.newInstance(xPath);
            List list = xpath.selectNodes(doc);

            if (!list.isEmpty()) {
                for (Iterator iter = list.iterator(); iter.hasNext();) {
                    Element elem = (Element) iter.next();
                    evento = new Evento();
                    evento.setId(Integer.parseInt(elem.getAttributeValue("id")));
                    evento.setNombre(elem.getChild("nombre").getTextTrim());
                    evento.setFecha_realizacion(elem.getChild("fecha_realizacion").getTextTrim());
                    evento.setFecha_publicacion(elem.getChild("fecha_publicacion").getTextTrim());
                    evento.setImg1(elem.getChild("img1").getTextTrim());
                    evento.setImg2(elem.getChild("img2").getTextTrim());
                    evento.setImg3(elem.getChild("img3").getTextTrim());
                    evento.setImg4(elem.getChild("img4") != null ? elem.getChild("img4").getTextTrim() : "");
                    evento.setImg5(elem.getChild("img5") != null ? elem.getChild("img5").getTextTrim() : "");
                    evento.setImg6(elem.getChild("img6") != null ? elem.getChild("img6").getTextTrim() : "");
                    evento.setEfectos2(elem.getChild("img2").getAttributeValue("efectos2") != null ? elem.getChild("img2").getAttributeValue("efectos2") : "durationin: 2300; easingin: easeOutQuad; slidedirection: right; delayin: 1500");
                    evento.setEfectos3(elem.getChild("img3").getAttributeValue("efectos3") != null ? elem.getChild("img3").getAttributeValue("efectos3") : "durationin: 2500; easingin: easeOutQuad; slidedirection: left; delayin: 1800");
                    evento.setEfectos4(elem.getChild("img4") != null ? (elem.getChild("img4").getAttributeValue("efectos4") != null ? elem.getChild("img4").getAttributeValue("efectos4") : "durationin: 2500; easingin: easeOutQuad; slidedirection: top; delayin: 1800") : "durationin: 2500; easingin: easeOutQuad; slidedirection: top; delayin: 1800");
                    evento.setEfectos5(elem.getChild("img5") != null ? (elem.getChild("img5").getAttributeValue("efectos5") != null ? elem.getChild("img5").getAttributeValue("efectos5") : "durationin: 2500; easingin: easeOutQuad; slidedirection: left; delayin: 1800") : "durationin: 2500; easingin: easeOutQuad; slidedirection: left; delayin: 1800");
                    evento.setEfectos6(elem.getChild("img6") != null ? (elem.getChild("img6").getAttributeValue("efectos6") != null ? elem.getChild("img6").getAttributeValue("efectos6") : "durationin: 2500; easingin: easeOutQuad; slidedirection: left; delayin: 1800") : "durationin: 2500; easingin: easeOutQuad; slidedirection: left; delayin: 1800");
                    evento.setPdf(elem.getChild("pdf").getTextTrim());
                    evento.setLink(elem.getChild("link").getTextTrim());
                    evento.setActivo(Boolean.parseBoolean(elem.getChild("activo").getTextTrim()));

                }
            }

        } catch (JDOMException ex) {
            Logger.getLogger(XMLEventoDAO.class.getName()).log(Level.SEVERE, null, ex);
        }

        return evento;
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
        //String xPath = "eventos/evento/@id[not(. <=../preceding-sibling::evento/@id) and not(. <=../following-sibling::evento/@id)]";
        String xPath = "/eventos/evento/@id[not(. < ../../evento/@id)][1]";
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
            Logger.getLogger(XMLEventoDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        doc2 = null;
        return maxId;
    }

    @Override
    public List<Evento> findTop(int inicio, int fin) {

        List eventos = new ArrayList();
        Evento evento = null;
        String xPath = "eventos/evento[position() >= "+inicio+" and position() < "+fin+"]";
        doc = XMLDAOFactory.getDocument(XMLpath);
        try {

            XPath xpath = XPath.newInstance(xPath);
            List list = xpath.selectNodes(doc);

            if (!list.isEmpty()) {
                for (Iterator iter = list.iterator(); iter.hasNext();) {
                    Element elem = (Element) iter.next();
                    evento = new Evento();
                    evento.setId(Integer.parseInt(elem.getAttributeValue("id")));
                    evento.setNombre(elem.getChild("nombre").getTextTrim());
                    evento.setFecha_realizacion(elem.getChild("fecha_realizacion").getTextTrim());
                    evento.setFecha_publicacion(elem.getChild("fecha_publicacion").getTextTrim());
                    evento.setImg1(elem.getChild("img1").getTextTrim());
                    evento.setImg2(elem.getChild("img2").getTextTrim());
                    evento.setImg3(elem.getChild("img3").getTextTrim());
                    evento.setImg4(elem.getChild("img4") != null ? elem.getChild("img4").getTextTrim() : "");
                    evento.setImg5(elem.getChild("img5") != null ? elem.getChild("img5").getTextTrim() : "");
                    evento.setImg6(elem.getChild("img6") != null ? elem.getChild("img6").getTextTrim() : "");
                    evento.setEfectos2(elem.getChild("img2").getAttributeValue("efectos2") != null ? elem.getChild("img2").getAttributeValue("efectos2") : "durationin: 2300; easingin: easeOutQuad; slidedirection: right; delayin: 1500");
                    evento.setEfectos3(elem.getChild("img3").getAttributeValue("efectos3") != null ? elem.getChild("img3").getAttributeValue("efectos3") : "durationin: 2500; easingin: easeOutQuad; slidedirection: left; delayin: 1800");
                    evento.setEfectos4(elem.getChild("img4") != null ? (elem.getChild("img4").getAttributeValue("efectos4") != null ? elem.getChild("img4").getAttributeValue("efectos4") : "durationin: 2500; easingin: easeOutQuad; slidedirection: top; delayin: 1800") : "durationin: 2500; easingin: easeOutQuad; slidedirection: top; delayin: 1800");
                    evento.setEfectos5(elem.getChild("img5") != null ? (elem.getChild("img5").getAttributeValue("efectos5") != null ? elem.getChild("img5").getAttributeValue("efectos5") : "durationin: 2500; easingin: easeOutQuad; slidedirection: left; delayin: 1800") : "durationin: 2500; easingin: easeOutQuad; slidedirection: left; delayin: 1800");
                    evento.setEfectos6(elem.getChild("img6") != null ? (elem.getChild("img6").getAttributeValue("efectos6") != null ? elem.getChild("img6").getAttributeValue("efectos6") : "durationin: 2500; easingin: easeOutQuad; slidedirection: left; delayin: 1800") : "durationin: 2500; easingin: easeOutQuad; slidedirection: left; delayin: 1800");
                    evento.setPdf(elem.getChild("pdf").getTextTrim());
                    evento.setLink(elem.getChild("link").getTextTrim());
                    evento.setActivo(Boolean.parseBoolean(elem.getChild("activo").getTextTrim()));
                    eventos.add(evento);
                }
            }

        } catch (JDOMException ex) {
            Logger.getLogger(XMLEventoDAO.class.getName()).log(Level.SEVERE, null, ex);
        }

        return eventos;
    }

}
