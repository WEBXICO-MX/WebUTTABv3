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
import java.util.Iterator;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import mx.edu.uttab.dao.xml.XMLDAOFactory;
import mx.edu.uttab.model.TipoOfertaServicio;
import org.jdom2.Document;
import org.jdom2.Element;
import org.jdom2.JDOMException;
import org.jdom2.output.Format;
import org.jdom2.output.XMLOutputter;
import org.jdom2.xpath.XPath;

public class XMLTipoOfertaServicioDAO implements TipoOfertaServicioDAO {

    Document doc = null;
    String XMLpath = "";

    public XMLTipoOfertaServicioDAO() {

    }

    @Override
    public boolean saveOrUpdate(TipoOfertaServicio tipo) {
        try {

            Document input = XMLDAOFactory.getDocument(XMLpath);
            Element raiz = input.getRootElement();
            Element hijo = new Element("tipo");
            hijo.setAttribute("id", String.valueOf(tipo.getId()));
            hijo.addContent(new Element("nombre").addContent(tipo.getNombre()));
            hijo.addContent(new Element("activo").addContent(String.valueOf(tipo.isActivo())));
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
    public List<TipoOfertaServicio> findAll() {
        List tipos = new ArrayList();
        TipoOfertaServicio tipo = null;
        String xPath = "tipos_ofertas_servicios/tipo_oferta_servicio";
        doc = XMLDAOFactory.getDocument(XMLpath);
        try {

            XPath xpath = XPath.newInstance(xPath);
            List list = xpath.selectNodes(doc);

            if (!list.isEmpty()) {
                for (Iterator iter = list.iterator(); iter.hasNext();) {
                    Element elem = (Element) iter.next();
                    tipo = new TipoOfertaServicio();
                    tipo.setId(Integer.parseInt(elem.getAttributeValue("id")));
                    tipo.setNombre(elem.getChild("nombre").getTextTrim());
                    tipo.setActivo(Boolean.parseBoolean(elem.getChild("activo").getTextTrim()));
                    tipos.add(tipo);
                }
            }

        } catch (JDOMException ex) {
            Logger.getLogger(XMLTipoOfertaServicioDAO.class.getName()).log(Level.SEVERE, null, ex);
        }

        return tipos;
    }

    @Override
    public List<TipoOfertaServicio> findAllActivos() {
        List tipos = new ArrayList();
        TipoOfertaServicio tipo = null;
        String xPath = "tipos_ofertas_servicios/tipo_oferta_servicio[activo='true']";
        doc = XMLDAOFactory.getDocument(XMLpath);
        try {

            XPath xpath = XPath.newInstance(xPath);
            List list = xpath.selectNodes(doc);

            if (!list.isEmpty()) {
                for (Iterator iter = list.iterator(); iter.hasNext();) {
                    Element elem = (Element) iter.next();
                    tipo = new TipoOfertaServicio();
                    tipo.setId(Integer.parseInt(elem.getAttributeValue("id")));
                    tipo.setNombre(elem.getChild("nombre").getTextTrim());
                    tipo.setActivo(Boolean.parseBoolean(elem.getChild("activo").getTextTrim()));
                    tipos.add(tipo);
                }
            }

        } catch (JDOMException ex) {
            Logger.getLogger(XMLTipoOfertaServicioDAO.class.getName()).log(Level.SEVERE, null, ex);
        }

        return tipos;
    }

    @Override
    public TipoOfertaServicio findById(int id) {
        TipoOfertaServicio tipo = null;
        String xPath = "tipos_ofertas_servicios/tipo_oferta_servicio[@id='" + id + "']";
        doc = XMLDAOFactory.getDocument(XMLpath);

        try {

            XPath xpath = XPath.newInstance(xPath);
            List list = xpath.selectNodes(doc);

            if (!list.isEmpty()) {
                for (Iterator iter = list.iterator(); iter.hasNext();) {
                    Element elem = (Element) iter.next();
                    tipo = new TipoOfertaServicio();
                    tipo.setId(Integer.parseInt(elem.getAttributeValue("id")));
                    tipo.setNombre(elem.getChild("nombre").getTextTrim());
                    tipo.setActivo(Boolean.parseBoolean(elem.getChild("activo").getTextTrim()));
                }
            }

        } catch (JDOMException ex) {
            Logger.getLogger(XMLTipoOfertaServicioDAO.class.getName()).log(Level.SEVERE, null, ex);
        }

        return tipo;
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
