/**
 *
 * @author Roberto Eder Weiss Juárez
 * @see {@link http://webxico.blogspot.mx/}
 */
package mx.edu.uttab.dao.xml.carrera;

import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import mx.edu.uttab.dao.xml.XMLDAOFactory;
import mx.edu.uttab.model.Carrera;
import mx.edu.uttab.model.Division;
import org.jdom2.Document;
import org.jdom2.Element;
import org.jdom2.JDOMException;
import org.jdom2.output.Format;
import org.jdom2.output.XMLOutputter;
import org.jdom2.xpath.XPath;

public class XMLCarreraDAO implements CarreraDAO {

    Document doc = null;
    String XMLpath = "";

    public XMLCarreraDAO() {
    }

    @Override
    public boolean saveOrUpdate(Carrera carrera) {
        try {

            Document input = XMLDAOFactory.getDocument(XMLpath);
            Element raiz = input.getRootElement();
            Element hijo = new Element("carrera");
            hijo.setAttribute("cve_carrera", String.valueOf(carrera.getCve_carrera()));
            hijo.setAttribute("cve_division", String.valueOf(carrera.getCve_division().getCve_division()));
            hijo.setAttribute("nombre", String.valueOf(carrera.getNombre()));
            hijo.setAttribute("tipo", String.valueOf(carrera.getTipo()));
            hijo.addContent(new Element("perfil_ingreso").addContent(String.valueOf(carrera.getPerfil_ingreso())));
            hijo.addContent(new Element("perfil_egreso").addContent(String.valueOf(carrera.getPerfil_egreso())));
            hijo.addContent(new Element("competencias_especificas").addContent(String.valueOf(carrera.getCompetencias_especificas())));
            hijo.addContent(new Element("ocupaciones_profesionales").addContent(String.valueOf(carrera.getOcupaciones_profesionales())));
            hijo.setAttribute("icono", String.valueOf(carrera.getIcono()));
            hijo.setAttribute("img", String.valueOf(carrera.getImg()));
            hijo.setAttribute("url", String.valueOf(carrera.getUrl()));
            hijo.addContent(new Element("informacion_extra").addContent(String.valueOf(carrera.getInformacion_extra())));
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
    public List<Carrera> findAll() {
        List carreras = new ArrayList();
        Carrera carrera = null;
        String xPath = "carreras/carrera";
        doc = XMLDAOFactory.getDocument(XMLpath);
        try {

            XPath xpath = XPath.newInstance(xPath);
            List list = xpath.selectNodes(doc);

            if (!list.isEmpty()) {
                for (Iterator iter = list.iterator(); iter.hasNext();) {
                    Element elem = (Element) iter.next();
                    carrera = new Carrera();
                    carrera.setCve_carrera(Integer.parseInt(elem.getAttributeValue("cve_carrera")));
                    carrera.setCve_division(new Division(Integer.parseInt(elem.getAttributeValue("cve_division"))));
                    carrera.setNombre(elem.getAttributeValue("nombre"));
                    carrera.setTipo(elem.getAttribute("tipo") != null ? Integer.parseInt(elem.getAttributeValue("tipo")) : 3);
                    /*
                     tipo="1" = Mostrar solo plan materias Ingenieria
                     tipo="2" = Mostrar solo plan materias TSU
                     tipo="3" = Mostrar plan materias Ingenieria-TSU
                     */
                    carrera.setPerfil_ingreso(elem.getChild("perfil_ingreso") != null ? elem.getChild("perfil_ingreso").getTextTrim() : "");
                    carrera.setPerfil_egreso(elem.getChild("perfil_egreso") != null ? elem.getChild("perfil_egreso").getTextTrim() : "");
                    carrera.setCompetencias_especificas(elem.getChild("competencias_especificas") != null ? elem.getChild("competencias_especificas").getTextTrim() : "");
                    carrera.setOcupaciones_profesionales(elem.getChild("ocupaciones_profesionales") != null ? elem.getChild("ocupaciones_profesionales").getTextTrim() : "");
                    carrera.setIcono(elem.getAttribute("icono") != null ? elem.getAttributeValue("icono") : "");
                    carrera.setImg(elem.getAttribute("img") != null ? elem.getAttributeValue("img") : "");
                    carrera.setUrl(elem.getAttribute("url") != null ? elem.getAttributeValue("url") : "");
                    carrera.setInformacion_extra(elem.getChild("informacion_extra") != null ? elem.getChild("informacion_extra").getTextTrim() : "");
                    carreras.add(carrera);
                }
            }

        } catch (JDOMException ex) {
            Logger.getLogger(XMLCarreraDAO.class.getName()).log(Level.SEVERE, null, ex);
        }

        return carreras;
    }

    @Override
    public List<Carrera> findAllByActivo(boolean activo) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public List<Carrera> findAllByDivisionContinuidad(int cve_division, boolean continuidad) {
        List carreras = new ArrayList();
        Carrera carrera = null;
        String xPath = "carreras/carrera[@cve_division='" + cve_division + "']" + (continuidad ? "" : "[not(@continuidad)]");
        //System.out.println("xPath = " + xPath);
        doc = XMLDAOFactory.getDocument(XMLpath);
        try {

            XPath xpath = XPath.newInstance(xPath);
            List list = xpath.selectNodes(doc);

            if (!list.isEmpty()) {
                for (Iterator iter = list.iterator(); iter.hasNext();) {
                    Element elem = (Element) iter.next();
                    carrera = new Carrera();
                    carrera.setCve_carrera(Integer.parseInt(elem.getAttributeValue("cve_carrera")));
                    carrera.setCve_division(new Division(Integer.parseInt(elem.getAttributeValue("cve_division"))));
                    carrera.setNombre(elem.getAttributeValue("nombre"));
                    carrera.setTipo(elem.getAttribute("tipo") != null ? Integer.parseInt(elem.getAttributeValue("tipo")) : 3);
                    /*
                     tipo="1" = Mostrar solo plan materias Ingenieria
                     tipo="2" = Mostrar solo plan materias TSU
                     tipo="3" = Mostrar plan materias Ingenieria-TSU
                     */
                    carrera.setPerfil_ingreso(elem.getChild("perfil_ingreso") != null ? elem.getChild("perfil_ingreso").getTextTrim() : "");
                    carrera.setPerfil_egreso(elem.getChild("perfil_egreso") != null ? elem.getChild("perfil_egreso").getTextTrim() : "");
                    carrera.setCompetencias_especificas(elem.getChild("competencias_especificas") != null ? elem.getChild("competencias_especificas").getTextTrim() : "");
                    carrera.setOcupaciones_profesionales(elem.getChild("ocupaciones_profesionales") != null ? elem.getChild("ocupaciones_profesionales").getTextTrim() : "");
                    carrera.setIcono(elem.getAttribute("icono") != null ? elem.getAttributeValue("icono") : "");
                    carrera.setImg(elem.getAttribute("img") != null ? elem.getAttributeValue("img") : "");
                    carrera.setUrl(elem.getAttribute("url") != null ? elem.getAttributeValue("url") : "");
                    carrera.setInformacion_extra(elem.getChild("informacion_extra") != null ? elem.getChild("informacion_extra").getTextTrim() : "");
                    carreras.add(carrera);
                }
            }

        } catch (JDOMException ex) {
            Logger.getLogger(XMLCarreraDAO.class.getName()).log(Level.SEVERE, null, ex);
        }

        return carreras;
    }

    @Override
    public List<Carrera> findAllByCarrerasSinContinuidad() {
        List carreras = new ArrayList();
        Carrera carrera = null;
        String xPath = "carreras/carrera[not(@continuidad)]";
        //System.out.println("xPath = " + xPath);
        doc = XMLDAOFactory.getDocument(XMLpath);
        try {

            XPath xpath = XPath.newInstance(xPath);
            List list = xpath.selectNodes(doc);

            if (!list.isEmpty()) {
                for (Iterator iter = list.iterator(); iter.hasNext();) {
                    Element elem = (Element) iter.next();
                    carrera = new Carrera();
                    carrera.setCve_carrera(Integer.parseInt(elem.getAttributeValue("cve_carrera")));
                    carrera.setCve_division(new Division(Integer.parseInt(elem.getAttributeValue("cve_division"))));
                    carrera.setNombre(elem.getAttributeValue("nombre"));
                    carrera.setTipo(elem.getAttribute("tipo") != null ? Integer.parseInt(elem.getAttributeValue("tipo")) : 3);
                    /*
                     tipo="1" = Mostrar solo plan materias Ingenieria
                     tipo="2" = Mostrar solo plan materias TSU
                     tipo="3" = Mostrar plan materias Ingenieria-TSU
                     */
                    carrera.setPerfil_ingreso(elem.getChild("perfil_ingreso") != null ? elem.getChild("perfil_ingreso").getTextTrim() : "");
                    carrera.setPerfil_egreso(elem.getChild("perfil_egreso") != null ? elem.getChild("perfil_egreso").getTextTrim() : "");
                    carrera.setCompetencias_especificas(elem.getChild("competencias_especificas") != null ? elem.getChild("competencias_especificas").getTextTrim() : "");
                    carrera.setOcupaciones_profesionales(elem.getChild("ocupaciones_profesionales") != null ? elem.getChild("ocupaciones_profesionales").getTextTrim() : "");
                    carrera.setIcono(elem.getAttribute("icono") != null ? elem.getAttributeValue("icono") : "");
                    carrera.setImg(elem.getAttribute("img") != null ? elem.getAttributeValue("img") : "");
                    carrera.setUrl(elem.getAttribute("url") != null ? elem.getAttributeValue("url") : "");
                    carrera.setInformacion_extra(elem.getChild("informacion_extra") != null ? elem.getChild("informacion_extra").getTextTrim() : "");
                    carreras.add(carrera);
                }
            }

        } catch (JDOMException ex) {
            Logger.getLogger(XMLCarreraDAO.class.getName()).log(Level.SEVERE, null, ex);
        }

        return carreras;
    }

    @Override
    public List<Carrera> findAllByCarreraContinuidad(int cve_carrera) {
        List carreras = new ArrayList();
        Carrera carrera = null;
        String xPath = "carreras/carrera[@continuidad='" + cve_carrera + "']";
        //System.out.println("xPath = " + xPath);
        doc = XMLDAOFactory.getDocument(XMLpath);
        try {

            XPath xpath = XPath.newInstance(xPath);
            List list = xpath.selectNodes(doc);

            if (!list.isEmpty()) {
                for (Iterator iter = list.iterator(); iter.hasNext();) {
                    Element elem = (Element) iter.next();
                    carrera = new Carrera();
                    carrera.setCve_carrera(Integer.parseInt(elem.getAttributeValue("cve_carrera")));
                    carrera.setCve_division(new Division(Integer.parseInt(elem.getAttributeValue("cve_division"))));
                    carrera.setNombre(elem.getAttributeValue("nombre"));
                    carrera.setTipo(elem.getAttribute("tipo") != null ? Integer.parseInt(elem.getAttributeValue("tipo")) : 3);
                    /*
                     tipo="1" = Mostrar solo plan materias Ingenieria
                     tipo="2" = Mostrar solo plan materias TSU
                     tipo="3" = Mostrar plan materias Ingenieria-TSU
                     */
                    carrera.setPerfil_ingreso(elem.getChild("perfil_ingreso") != null ? elem.getChild("perfil_ingreso").getTextTrim() : "");
                    carrera.setPerfil_egreso(elem.getChild("perfil_egreso") != null ? elem.getChild("perfil_egreso").getTextTrim() : "");
                    carrera.setCompetencias_especificas(elem.getChild("competencias_especificas") != null ? elem.getChild("competencias_especificas").getTextTrim() : "");
                    carrera.setOcupaciones_profesionales(elem.getChild("ocupaciones_profesionales") != null ? elem.getChild("ocupaciones_profesionales").getTextTrim() : "");
                    carrera.setIcono(elem.getAttribute("icono") != null ? elem.getAttributeValue("icono") : "");
                    carrera.setImg(elem.getAttribute("img") != null ? elem.getAttributeValue("img") : "");
                    carrera.setUrl(elem.getAttribute("url") != null ? elem.getAttributeValue("url") : "");
                    carrera.setInformacion_extra(elem.getChild("informacion_extra") != null ? elem.getChild("informacion_extra").getTextTrim() : "");
                    carreras.add(carrera);
                }
            }

        } catch (JDOMException ex) {
            Logger.getLogger(XMLCarreraDAO.class.getName()).log(Level.SEVERE, null, ex);
        }

        return carreras;
    }

    @Override
    public Carrera findBy(int id) {
        Carrera carrera = null;
        String xPath = "carreras/carrera[@cve_carrera='" + id + "']";
        doc = XMLDAOFactory.getDocument(XMLpath);

        try {

            XPath xpath = XPath.newInstance(xPath);
            List list = xpath.selectNodes(doc);

            if (!list.isEmpty()) {
                for (Iterator iter = list.iterator(); iter.hasNext();) {
                    Element elem = (Element) iter.next();
                    carrera = new Carrera();
                    carrera.setCve_carrera(Integer.parseInt(elem.getAttributeValue("cve_carrera")));
                    carrera.setCve_division(new Division(Integer.parseInt(elem.getAttributeValue("cve_division"))));
                    carrera.setNombre(elem.getAttributeValue("nombre"));
                    carrera.setTipo(elem.getAttribute("tipo") != null ? Integer.parseInt(elem.getAttributeValue("tipo")) : 3);
                    /*
                     tipo="1" = Mostrar solo plan materias Ingenieria
                     tipo="2" = Mostrar solo plan materias TSU
                     tipo="3" = Mostrar plan materias Ingenieria-TSU
                     */
                    carrera.setPerfil_ingreso(elem.getChild("perfil_ingreso") != null ? elem.getChild("perfil_ingreso").getTextTrim() : "");
                    carrera.setPerfil_egreso(elem.getChild("perfil_egreso") != null ? elem.getChild("perfil_egreso").getTextTrim() : "");
                    carrera.setCompetencias_especificas(elem.getChild("competencias_especificas") != null ? elem.getChild("competencias_especificas").getTextTrim() : "");
                    carrera.setOcupaciones_profesionales(elem.getChild("ocupaciones_profesionales") != null ? elem.getChild("ocupaciones_profesionales").getTextTrim() : "");
                    carrera.setIcono(elem.getAttribute("icono") != null ? elem.getAttributeValue("icono") : "");
                    carrera.setImg(elem.getAttribute("img") != null ? elem.getAttributeValue("img") : "");
                    carrera.setUrl(elem.getAttribute("url") != null ? elem.getAttributeValue("url") : "");
                    carrera.setInformacion_extra(elem.getChild("informacion_extra") != null ? elem.getChild("informacion_extra").getTextTrim() : "");
                }
            }

        } catch (JDOMException ex) {
            Logger.getLogger(XMLCarreraDAO.class.getName()).log(Level.SEVERE, null, ex);
        }

        return carrera;
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
