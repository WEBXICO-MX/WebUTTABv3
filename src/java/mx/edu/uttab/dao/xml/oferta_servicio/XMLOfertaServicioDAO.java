/**
 *
 * @author Roberto Eder Weiss Juárez
 * @see {@link http://webxico.blogspot.mx/}
 */
package mx.edu.uttab.dao.xml.oferta_servicio;

import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Iterator;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import leerdirectorio.Utilerias;
import mx.edu.uttab.dao.xml.XMLDAOFactory;
import mx.edu.uttab.model.OfertaServicio;
import mx.edu.uttab.model.TipoOfertaServicio;
import org.jdom2.Document;
import org.jdom2.Element;
import org.jdom2.JDOMException;
import org.jdom2.output.Format;
import org.jdom2.output.XMLOutputter;
import org.jdom2.xpath.XPath;

public class XMLOfertaServicioDAO implements OfertaServicioDAO {

    Document doc = null;
    String XMLpath = "";

    public XMLOfertaServicioDAO() {

    }

    @Override
    public boolean saveOrUpdate(OfertaServicio oferta) {
        try {

            Document input = XMLDAOFactory.getDocument(XMLpath);
            Element raiz = input.getRootElement();
            Element hijo = new Element("oferta");
            hijo.setAttribute("id", String.valueOf(oferta.getId()));
            hijo.setAttribute("tipo", String.valueOf(oferta.getTipo().getId()));
            hijo.addContent(new Element("descripcion").addContent(oferta.getDescripcion()));
            hijo.addContent(new Element("img").addContent(oferta.getImg()));
            hijo.addContent(new Element("fecha_realizacion").addContent(oferta.getFecha_realizacion()));
            hijo.addContent(new Element("fecha_publicacion").addContent(Utilerias.getCadenaFechaLarga(oferta.getFecha_publicacion())));
            hijo.addContent(new Element("activo").addContent(String.valueOf(oferta.isActivo())));
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
    public List<OfertaServicio> findAll() {
        List ofertas = new ArrayList();
        OfertaServicio oferta = null;
        String xPath = "ofertas_servicios/oferta_servicio";
        doc = XMLDAOFactory.getDocument(XMLpath);
        try {

            XPath xpath = XPath.newInstance(xPath);
            List list = xpath.selectNodes(doc);

            if (!list.isEmpty()) {
                for (Iterator iter = list.iterator(); iter.hasNext();) {
                    Element elem = (Element) iter.next();
                    oferta = new OfertaServicio();
                    oferta.setId(Integer.parseInt(elem.getAttributeValue("id")));
                    oferta.setTipo(new TipoOfertaServicio(Integer.parseInt(elem.getAttributeValue("tipo"))));
                    oferta.setNombre(elem.getChild("nombre").getTextTrim());
                    oferta.setImg(elem.getChild("img").getTextTrim());
                    oferta.setDescripcion(elem.getChild("descripcion").getTextTrim());
                    oferta.setFecha_realizacion(elem.getChild("fecha_realizacion").getTextTrim());
                    oferta.setFecha_publicacion(Calendar.getInstance());
                    oferta.setActivo(Boolean.parseBoolean(elem.getChild("activo").getTextTrim()));
                    ofertas.add(oferta);
                }
            }

        } catch (JDOMException ex) {
            Logger.getLogger(XMLOfertaServicioDAO.class.getName()).log(Level.SEVERE, null, ex);
        }

        return ofertas;
    }

    @Override
    public List<OfertaServicio> findAllActivos() {
        List ofertas = new ArrayList();
        OfertaServicio oferta = null;
        String xPath = "ofertas_servicios/oferta_servicio[activo='true']";
        doc = XMLDAOFactory.getDocument(XMLpath);
        try {

            XPath xpath = XPath.newInstance(xPath);
            List list = xpath.selectNodes(doc);

            if (!list.isEmpty()) {
                for (Iterator iter = list.iterator(); iter.hasNext();) {
                    Element elem = (Element) iter.next();
                    oferta = new OfertaServicio();
                    oferta.setId(Integer.parseInt(elem.getAttributeValue("id")));
                    oferta.setTipo(new TipoOfertaServicio(Integer.parseInt(elem.getAttributeValue("tipo"))));
                    oferta.setNombre(elem.getChild("nombre").getTextTrim());
                    oferta.setImg(elem.getChild("img").getTextTrim());
                    oferta.setDescripcion(elem.getChild("descripcion").getTextTrim());
                    oferta.setFecha_realizacion(elem.getChild("fecha_realizacion").getTextTrim());
                    oferta.setFecha_publicacion(Calendar.getInstance());
                    oferta.setActivo(Boolean.parseBoolean(elem.getChild("activo").getTextTrim()));
                    ofertas.add(oferta);
                }
            }

        } catch (JDOMException ex) {
            Logger.getLogger(XMLOfertaServicioDAO.class.getName()).log(Level.SEVERE, null, ex);
        }

        return ofertas;
    }

    @Override
    public List<OfertaServicio> findAllTipo(int tipo) {
        List ofertas = new ArrayList();
        OfertaServicio oferta = null;
        String xPath = "ofertas_servicios/oferta_servicio[activo='true'][@tipo='" + tipo + "']";
        doc = XMLDAOFactory.getDocument(XMLpath);
        try {

            XPath xpath = XPath.newInstance(xPath);
            List list = xpath.selectNodes(doc);

            if (!list.isEmpty()) {
                for (Iterator iter = list.iterator(); iter.hasNext();) {
                    Element elem = (Element) iter.next();
                    oferta = new OfertaServicio();
                    oferta.setId(Integer.parseInt(elem.getAttributeValue("id")));
                    oferta.setTipo(new TipoOfertaServicio(Integer.parseInt(elem.getAttributeValue("tipo"))));
                    oferta.setNombre(elem.getChild("nombre").getTextTrim());
                    oferta.setImg(elem.getChild("img").getTextTrim());
                    oferta.setDescripcion(elem.getChild("descripcion").getTextTrim());
                    oferta.setFecha_realizacion(elem.getChild("fecha_realizacion").getTextTrim());
                    oferta.setFecha_publicacion(Calendar.getInstance());
                    oferta.setActivo(Boolean.parseBoolean(elem.getChild("activo").getTextTrim()));
                    ofertas.add(oferta);
                }
            }

        } catch (JDOMException ex) {
            Logger.getLogger(XMLOfertaServicioDAO.class.getName()).log(Level.SEVERE, null, ex);
        }

        return ofertas;
    }

    @Override
    public OfertaServicio findById(int id) {
        OfertaServicio oferta = null;
        String xPath = "ofertas_servicios/oferta_servicio[@id='" + id + "']";
        doc = XMLDAOFactory.getDocument(XMLpath);

        try {

            XPath xpath = XPath.newInstance(xPath);
            List list = xpath.selectNodes(doc);

            if (!list.isEmpty()) {
                for (Iterator iter = list.iterator(); iter.hasNext();) {
                    Element elem = (Element) iter.next();
                    oferta = new OfertaServicio();
                    oferta.setId(Integer.parseInt(elem.getAttributeValue("id")));
                    oferta.setTipo(new TipoOfertaServicio(Integer.parseInt(elem.getAttributeValue("tipo"))));
                    oferta.setNombre(elem.getChild("nombre").getTextTrim());
                    oferta.setImg(elem.getChild("img").getTextTrim());
                    oferta.setDescripcion(elem.getChild("descripcion").getTextTrim());
                    oferta.setFecha_realizacion(elem.getChild("fecha_realizacion").getTextTrim());
                    oferta.setFecha_publicacion(Calendar.getInstance());
                    oferta.setActivo(Boolean.parseBoolean(elem.getChild("activo").getTextTrim()));
                }
            }

        } catch (JDOMException ex) {
            Logger.getLogger(XMLOfertaServicioDAO.class.getName()).log(Level.SEVERE, null, ex);
        }

        return oferta;
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
