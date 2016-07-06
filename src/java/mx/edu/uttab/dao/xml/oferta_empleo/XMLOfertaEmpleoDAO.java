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
import java.util.Calendar;
import java.util.Iterator;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import leerdirectorio.Utilerias;
import mx.edu.uttab.dao.xml.XMLDAOFactory;
import mx.edu.uttab.model.OfertaEmpleo;
import org.jdom2.Document;
import org.jdom2.Element;
import org.jdom2.JDOMException;
import org.jdom2.output.Format;
import org.jdom2.output.XMLOutputter;
import org.jdom2.xpath.XPath;

public class XMLOfertaEmpleoDAO implements OfertaEmpleoDAO {

    Document doc = null;
    String XMLpath = "";

    public XMLOfertaEmpleoDAO() {

    }

    @Override
    public boolean saveOrUpdate(OfertaEmpleo oferta) {
        try {

            Document input = XMLDAOFactory.getDocument(XMLpath);
            Element raiz = input.getRootElement();
            Element hijo = new Element("oferta_empleo");
            hijo.setAttribute("id", String.valueOf(oferta.getId()));
            hijo.addContent(new Element("nombre_empresa").addContent(oferta.getNombre_empresa()));
            hijo.addContent(new Element("img_empresa").addContent(oferta.getImg_empresa()));
            hijo.addContent(new Element("descripcion_oferta").addContent(oferta.getDescripcion_oferta()));
            hijo.addContent(new Element("puesto").addContent(oferta.getPuesto()));
            hijo.addContent(new Element("requisitos").addContent(oferta.getRequisitos()));
            hijo.addContent(new Element("vacantes").addContent(oferta.getRequisitos()));
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
    public List<OfertaEmpleo> findAll() {
        List ofertas = new ArrayList();
        OfertaEmpleo oferta = null;
        String xPath = "ofertas_empleos/oferta_empleo";
        doc = XMLDAOFactory.getDocument(XMLpath);
        try {

            XPath xpath = XPath.newInstance(xPath);
            List list = xpath.selectNodes(doc);

            if (!list.isEmpty()) {
                for (Iterator iter = list.iterator(); iter.hasNext();) {
                    Element elem = (Element) iter.next();
                    oferta = new OfertaEmpleo();
                    oferta.setId(Integer.parseInt(elem.getAttributeValue("id")));
                    oferta.setNombre_empresa(elem.getChild("nombre_empresa").getTextTrim());
                    oferta.setImg_empresa(elem.getChild("img_empresa").getTextTrim());
                    oferta.setDescripcion_oferta(elem.getChild("descripcion_oferta").getTextTrim());
                    oferta.setPuesto(elem.getChild("puesto").getTextTrim());
                    oferta.setRequisitos(elem.getChild("requisitos").getTextTrim());
                    oferta.setVacantes(elem.getChild("vacantes").getTextTrim());
                    oferta.setFecha_publicacion(Calendar.getInstance());
                    oferta.setActivo(Boolean.parseBoolean(elem.getChild("activo").getTextTrim()));
                    ofertas.add(oferta);
                }
            }

        } catch (JDOMException ex) {
            Logger.getLogger(XMLOfertaEmpleoDAO.class.getName()).log(Level.SEVERE, null, ex);
        }

        return ofertas;
    }

    @Override
    public List<OfertaEmpleo> findAllActivos() {
        List ofertas = new ArrayList();
        OfertaEmpleo oferta = null;
        String xPath = "ofertas_empleos/oferta_empleo[activo='true']";
        doc = XMLDAOFactory.getDocument(XMLpath);
        try {

            XPath xpath = XPath.newInstance(xPath);
            List list = xpath.selectNodes(doc);

            if (!list.isEmpty()) {
                for (Iterator iter = list.iterator(); iter.hasNext();) {
                    Element elem = (Element) iter.next();
                    oferta = new OfertaEmpleo();
                    oferta.setId(Integer.parseInt(elem.getAttributeValue("id")));
                    oferta.setNombre_empresa(elem.getChild("nombre_empresa").getTextTrim());
                    oferta.setImg_empresa(elem.getChild("img_empresa").getTextTrim());
                    oferta.setDescripcion_oferta(elem.getChild("descripcion_oferta").getTextTrim());
                    oferta.setPuesto(elem.getChild("puesto").getTextTrim());
                    oferta.setRequisitos(elem.getChild("requisitos").getTextTrim());
                    oferta.setVacantes(elem.getChild("vacantes").getTextTrim());
                    oferta.setFecha_publicacion(Calendar.getInstance());
                    oferta.setActivo(Boolean.parseBoolean(elem.getChild("activo").getTextTrim()));
                    ofertas.add(oferta);
                }
            }

        } catch (JDOMException ex) {
            Logger.getLogger(XMLOfertaEmpleoDAO.class.getName()).log(Level.SEVERE, null, ex);
        }

        return ofertas;
    }

    @Override
    public List<OfertaEmpleo> findByDivision(String division) {
        List ofertas = new ArrayList();
        OfertaEmpleo oferta = null;
        String xPath = "ofertas_empleos/oferta_empleo[contains(img_empresa,'" + division + "')]";
        doc = XMLDAOFactory.getDocument(XMLpath);
        try {

            XPath xpath = XPath.newInstance(xPath);
            List list = xpath.selectNodes(doc);

            if (!list.isEmpty()) {
                for (Iterator iter = list.iterator(); iter.hasNext();) {
                    Element elem = (Element) iter.next();
                    oferta = new OfertaEmpleo();
                    oferta.setId(Integer.parseInt(elem.getAttributeValue("id")));
                    oferta.setNombre_empresa(elem.getChild("nombre_empresa").getTextTrim());
                    oferta.setImg_empresa(elem.getChild("img_empresa").getTextTrim());
                    oferta.setDescripcion_oferta(elem.getChild("descripcion_oferta").getTextTrim());
                    oferta.setPuesto(elem.getChild("puesto").getTextTrim());
                    oferta.setRequisitos(elem.getChild("requisitos").getTextTrim());
                    oferta.setVacantes(elem.getChild("vacantes").getTextTrim());
                    oferta.setFecha_publicacion(Calendar.getInstance());
                    oferta.setActivo(Boolean.parseBoolean(elem.getChild("activo").getTextTrim()));
                    ofertas.add(oferta);
                }
            }

        } catch (JDOMException ex) {
            Logger.getLogger(XMLOfertaEmpleoDAO.class.getName()).log(Level.SEVERE, null, ex);
        }

        return ofertas;
    }

    @Override
    public OfertaEmpleo findById(int id) {
        OfertaEmpleo oferta = null;
        String xPath = "ofertas_empleos/oferta_empleo[@id='" + id + "']";
        doc = XMLDAOFactory.getDocument(XMLpath);

        try {

            XPath xpath = XPath.newInstance(xPath);
            List list = xpath.selectNodes(doc);

            if (!list.isEmpty()) {
                for (Iterator iter = list.iterator(); iter.hasNext();) {
                    Element elem = (Element) iter.next();
                    oferta = new OfertaEmpleo();
                    oferta.setId(Integer.parseInt(elem.getAttributeValue("id")));
                    oferta.setNombre_empresa(elem.getChild("nombre_empresa").getTextTrim());
                    oferta.setImg_empresa(elem.getChild("img_empresa").getTextTrim());
                    oferta.setDescripcion_oferta(elem.getChild("descripcion_oferta").getTextTrim());
                    oferta.setPuesto(elem.getChild("puesto").getTextTrim());
                    oferta.setRequisitos(elem.getChild("requisitos").getTextTrim());
                    oferta.setVacantes(elem.getChild("vacantes").getTextTrim());
                    oferta.setFecha_publicacion(Calendar.getInstance());
                    oferta.setActivo(Boolean.parseBoolean(elem.getChild("activo").getTextTrim()));
                }
            }

        } catch (JDOMException ex) {
            Logger.getLogger(XMLOfertaEmpleoDAO.class.getName()).log(Level.SEVERE, null, ex);
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
