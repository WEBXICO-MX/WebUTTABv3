/**
 *
 * @author Roberto Eder Weiss Juárez
 * @see {@link http://webxico.blogspot.mx/}
 */
package mx.edu.uttab.dao.xml.CASE;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Iterator;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import mx.edu.uttab.dao.DAOFactory;
import mx.edu.uttab.dao.xml.XMLDAOFactory;
import mx.edu.uttab.model.CASE.Registro;
import mx.edu.uttab.util.Utilerias;
import org.apache.struts2.ServletActionContext;
import org.jdom2.Document;
import org.jdom2.Element;
import org.jdom2.JDOMException;
import org.jdom2.output.Format;
import org.jdom2.output.XMLOutputter;
import org.jdom2.xpath.XPath;

public class XMLRegistroDAO implements RegistroDAO {

    Document doc = null;
    String XMLpath = "";
    private final CalendarioCapacitacionDAO c_capacitacionDAO = DAOFactory.getDAOFactory(DAOFactory.XML).getCalendarioCapacitacionDAO();
    private final TipoInscripcionDAO t_inscripcionDAO = DAOFactory.getDAOFactory(DAOFactory.XML).getTipoInscripcioDAO();
    private final SectorProductivoDAO s_productivoDAO = DAOFactory.getDAOFactory(DAOFactory.XML).getSectorProductivoDAO();

    public XMLRegistroDAO() {
        ((XMLCalendarioCapacitacionDAO) c_capacitacionDAO).setXMLpath(ServletActionContext.getServletContext().getRealPath("/") + "WEB-INF/case_calendario_capacitaciones.xml");
        ((XMLTipoInscripcionDAO) t_inscripcionDAO).setXMLpath(ServletActionContext.getServletContext().getRealPath("/") + "WEB-INF/case_tipos_inscripcion.xml");
        ((XMLSectorProductivoDAO) s_productivoDAO).setXMLpath(ServletActionContext.getServletContext().getRealPath("/") + "WEB-INF/case_sectores_productivos.xml");
    }

    @Override
    public boolean saveOrUpdate(Registro registro) {

        boolean grabo = false;

        try {
            doc = XMLDAOFactory.getDocument(XMLpath);
            Element raiz = doc.getRootElement();
            //UPDATE
            if (registro.getId() != 0) {
                List<Element> elements = raiz.getChildren("registro");
                Element zsElement = null;
                for (Element e : elements) {
                    if (e.getAttributeValue("id").equals(String.valueOf(registro.getId()))) {
                        zsElement = e;
                        break;
                    }
                }
                if (zsElement != null) {
                    zsElement.removeAttribute("calendario_capacitacion");
                    zsElement.setAttribute("calendario_capacitacion", String.valueOf(registro.getCalendario_capacitacion().getId()));
                    zsElement.removeAttribute("tipo_inscripcion");
                    zsElement.setAttribute("tipo_inscripcion", String.valueOf(registro.getTipo_inscripcion().getId()));
                    zsElement.removeAttribute("sector_productivo");
                    zsElement.setAttribute("sector_productivo", String.valueOf(registro.getSector_productivo().getId()));
                    zsElement.removeAttribute("status");
                    zsElement.setAttribute("status", String.valueOf(registro.getStatus()));
                    zsElement.getChild("nombre_empresa").removeContent();
                    zsElement.getChild("nombre_empresa").addContent(registro.getNombre_empresa());
                    zsElement.getChild("nombre").removeContent();
                    zsElement.getChild("nombre").addContent(registro.getNombre());
                    zsElement.getChild("apellido_pat").removeContent();
                    zsElement.getChild("apellido_pat").addContent(registro.getApellido_pat());
                    zsElement.getChild("apellido_mat").removeContent();
                    zsElement.getChild("apellido_mat").addContent(registro.getApellido_mat());
                    zsElement.getChild("fecha_nacimiento").removeContent();
                    zsElement.getChild("fecha_nacimiento").addContent(registro.getFecha_nacimiento());
                    zsElement.getChild("sexo").removeContent();
                    zsElement.getChild("sexo").addContent(registro.getSexo());
                    zsElement.getChild("email").removeContent();
                    zsElement.getChild("email").addContent(registro.getEmail());
                    zsElement.getChild("tel").removeContent();
                    zsElement.getChild("tel").addContent(registro.getTel());
                    zsElement.getChild("cel").removeContent();
                    zsElement.getChild("cel").addContent(registro.getCel());
                    zsElement.getChild("fecha_modificacion").removeContent();
                    zsElement.getChild("fecha_modificacion").addContent(Utilerias.getCadenaFechaHora(Calendar.getInstance()));
                    zsElement.getChild("activo").removeContent();
                    zsElement.getChild("activo").addContent(String.valueOf(registro.isActivo()));
                }
            } else { //INSERT
                Element hijo = new Element("registro");
                hijo.setAttribute("id", String.valueOf(getMaxId() + 1));
                hijo.setAttribute("calendario_capacitacion", String.valueOf(registro.getCalendario_capacitacion().getId()));
                hijo.setAttribute("tipo_inscripcion", String.valueOf(registro.getTipo_inscripcion().getId()));
                hijo.setAttribute("sector_productivo", String.valueOf(registro.getSector_productivo().getId()));
                hijo.setAttribute("status", String.valueOf(1));//Status registrado
                hijo.addContent(new Element("nombre_empresa").addContent(registro.getNombre_empresa()));
                hijo.addContent(new Element("nombre").addContent(registro.getNombre()));
                hijo.addContent(new Element("apellido_pat").addContent(registro.getApellido_pat()));
                hijo.addContent(new Element("apellido_mat").addContent(registro.getApellido_mat()));
                hijo.addContent(new Element("fecha_nacimiento").addContent(registro.getFecha_nacimiento()));
                hijo.addContent(new Element("sexo").addContent(registro.getSexo()));
                hijo.addContent(new Element("email").addContent(registro.getEmail()));
                hijo.addContent(new Element("tel").addContent(registro.getTel()));
                hijo.addContent(new Element("cel").addContent(registro.getCel()));
                hijo.addContent(new Element("fecha_registro").addContent(Utilerias.getCadenaFechaHora(Calendar.getInstance())));
                hijo.addContent(new Element("fecha_modificacion").addContent("NULL"));
                hijo.addContent(new Element("activo").addContent(String.valueOf(registro.isActivo())));
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
    public List<Registro> findAll() {
        List registros = new ArrayList();
        Registro registro = null;
        String xPath = "registros/registro";
        doc = XMLDAOFactory.getDocument(XMLpath);
        try {

            XPath xpath = XPath.newInstance(xPath);
            List list = xpath.selectNodes(doc);

            if (!list.isEmpty()) {
                for (Iterator iter = list.iterator(); iter.hasNext();) {
                    Element elem = (Element) iter.next();
                    registro = new Registro();
                    registro.setId(Integer.parseInt(elem.getAttributeValue("id")));
                    registro.setCalendario_capacitacion(c_capacitacionDAO.findById(Integer.parseInt(elem.getAttributeValue("calendario_capacitacion"))));
                    registro.setTipo_inscripcion(t_inscripcionDAO.findById(Integer.parseInt(elem.getAttributeValue("tipo_inscripcion"))));
                    registro.setSector_productivo(s_productivoDAO.findById(Integer.parseInt(elem.getAttributeValue("sector_productivo"))));
                    registro.setStatus(Integer.parseInt(elem.getAttributeValue("status")));
                    registro.setNombre_empresa(elem.getChild("nombre_empresa").getTextTrim());
                    registro.setNombre(elem.getChild("nombre").getTextTrim());
                    registro.setApellido_pat(elem.getChild("apellido_pat").getTextTrim());
                    registro.setApellido_mat(elem.getChild("apellido_mat").getTextTrim());
                    registro.setFecha_nacimiento(elem.getChild("fecha_nacimiento").getTextTrim());
                    registro.setSexo(elem.getChild("sexo").getTextTrim());
                    registro.setEmail(elem.getChild("email").getTextTrim());
                    registro.setTel(elem.getChild("tel").getTextTrim());
                    registro.setCel(elem.getChild("cel").getTextTrim());
                    registro.setFecha_registro(elem.getChild("fecha_registro").getTextTrim());
                    registro.setFecha_modificacion(elem.getChild("fecha_modificacion").getTextTrim());
                    registro.setActivo(Boolean.parseBoolean(elem.getChild("activo").getTextTrim()));
                    registros.add(registro);
                }
            }

        } catch (JDOMException ex) {
            Logger.getLogger(XMLTipoCapacitacionDAO.class.getName()).log(Level.SEVERE, null, ex);
        }

        return registros;
    }

    @Override
    public List<Registro> findByStatus(int status) {
        List registros = new ArrayList();
        Registro registro = null;
        String xPath = "registros/registro[@status='"+status+"'][activo='true']";
        doc = XMLDAOFactory.getDocument(XMLpath);
        try {

            XPath xpath = XPath.newInstance(xPath);
            List list = xpath.selectNodes(doc);

            if (!list.isEmpty()) {
                for (Iterator iter = list.iterator(); iter.hasNext();) {
                    Element elem = (Element) iter.next();
                    registro = new Registro();
                    registro.setId(Integer.parseInt(elem.getAttributeValue("id")));
                    registro.setCalendario_capacitacion(c_capacitacionDAO.findById(Integer.parseInt(elem.getAttributeValue("calendario_capacitacion"))));
                    registro.setTipo_inscripcion(t_inscripcionDAO.findById(Integer.parseInt(elem.getAttributeValue("tipo_inscripcion"))));
                    registro.setSector_productivo(s_productivoDAO.findById(Integer.parseInt(elem.getAttributeValue("sector_productivo"))));
                    registro.setStatus(Integer.parseInt(elem.getAttributeValue("status")));
                    registro.setNombre_empresa(elem.getChild("nombre_empresa").getTextTrim());
                    registro.setNombre(elem.getChild("nombre").getTextTrim());
                    registro.setApellido_pat(elem.getChild("apellido_pat").getTextTrim());
                    registro.setApellido_mat(elem.getChild("apellido_mat").getTextTrim());
                    registro.setFecha_nacimiento(elem.getChild("fecha_nacimiento").getTextTrim());
                    registro.setSexo(elem.getChild("sexo").getTextTrim());
                    registro.setEmail(elem.getChild("email").getTextTrim());
                    registro.setTel(elem.getChild("tel").getTextTrim());
                    registro.setCel(elem.getChild("cel").getTextTrim());
                    registro.setFecha_registro(elem.getChild("fecha_registro").getTextTrim());
                    registro.setFecha_modificacion(elem.getChild("fecha_modificacion").getTextTrim());
                    registro.setActivo(Boolean.parseBoolean(elem.getChild("activo").getTextTrim()));
                    registros.add(registro);
                }
            }

        } catch (JDOMException ex) {
            Logger.getLogger(XMLTipoCapacitacionDAO.class.getName()).log(Level.SEVERE, null, ex);
        }

        return registros;
    }

    @Override
    public Registro findById(int id) {
        Registro registro = null;
        String xPath = "registros/registro[@id='"+id+"']";
        doc = XMLDAOFactory.getDocument(XMLpath);
        try {

            XPath xpath = XPath.newInstance(xPath);
            List list = xpath.selectNodes(doc);

            if (!list.isEmpty()) {
                for (Iterator iter = list.iterator(); iter.hasNext();) {
                    Element elem = (Element) iter.next();
                    registro = new Registro();
                    registro.setId(Integer.parseInt(elem.getAttributeValue("id")));
                    registro.setCalendario_capacitacion(c_capacitacionDAO.findById(Integer.parseInt(elem.getAttributeValue("calendario_capacitacion"))));
                    registro.setTipo_inscripcion(t_inscripcionDAO.findById(Integer.parseInt(elem.getAttributeValue("tipo_inscripcion"))));
                    registro.setSector_productivo(s_productivoDAO.findById(Integer.parseInt(elem.getAttributeValue("sector_productivo"))));
                    registro.setStatus(Integer.parseInt(elem.getAttributeValue("status")));
                    registro.setNombre_empresa(elem.getChild("nombre_empresa").getTextTrim());
                    registro.setNombre(elem.getChild("nombre").getTextTrim());
                    registro.setApellido_pat(elem.getChild("apellido_pat").getTextTrim());
                    registro.setApellido_mat(elem.getChild("apellido_mat").getTextTrim());
                    registro.setFecha_nacimiento(elem.getChild("fecha_nacimiento").getTextTrim());
                    registro.setSexo(elem.getChild("sexo").getTextTrim());
                    registro.setEmail(elem.getChild("email").getTextTrim());
                    registro.setTel(elem.getChild("tel").getTextTrim());
                    registro.setCel(elem.getChild("cel").getTextTrim());
                    registro.setFecha_registro(elem.getChild("fecha_registro").getTextTrim());
                    registro.setFecha_modificacion(elem.getChild("fecha_modificacion").getTextTrim());
                    registro.setActivo(Boolean.parseBoolean(elem.getChild("activo").getTextTrim()));
                }
            }

        } catch (JDOMException ex) {
            Logger.getLogger(XMLTipoCapacitacionDAO.class.getName()).log(Level.SEVERE, null, ex);
        }

        return registro;
    }

    @Override
    public int getMaxId() {
        int maxId = 0;
        String xPath = "/registros/registro/@id[not(. < ../../registro/@id)][1]";
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

        }
        doc2 = null;
        return maxId;
    }

    public String getXMLpath() {
        return XMLpath;
    }

    public void setXMLpath(String XMLpath) {
        this.XMLpath = XMLpath;
    }

}