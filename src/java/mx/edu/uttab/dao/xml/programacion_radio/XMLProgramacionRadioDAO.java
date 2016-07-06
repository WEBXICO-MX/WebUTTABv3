/**
 *
 * @author Roberto Eder Weiss Juárez
 * @see {@link http://webxico.blogspot.mx/}
 */
package mx.edu.uttab.dao.xml.programacion_radio;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import mx.edu.uttab.dao.DAOFactory;
import mx.edu.uttab.dao.xml.XMLDAOFactory;
import mx.edu.uttab.dao.xml.programa_radio.ProgramaRadioDAO;
import mx.edu.uttab.dao.xml.programa_radio.XMLProgramaRadioDAO;
import mx.edu.uttab.model.ProgramacionRadio;
import org.apache.struts2.ServletActionContext;
import org.jdom2.Document;
import org.jdom2.Element;
import org.jdom2.JDOMException;
import org.jdom2.output.Format;
import org.jdom2.output.XMLOutputter;
import org.jdom2.xpath.XPath;

public class XMLProgramacionRadioDAO implements ProgramacionRadioDAO {

    private String XMLpath = "";
    private ProgramaRadioDAO programaDAO = DAOFactory.getDAOFactory(DAOFactory.XML).getProgramaRadioDAO();

    public XMLProgramacionRadioDAO() {
        ((XMLProgramaRadioDAO) programaDAO).setXMLpath(ServletActionContext.getServletContext().getRealPath("/") + "WEB-INF/programas_radio.xml");
    }

    @Override
    public boolean saveOrUpdate(ProgramacionRadio programacion_radio) {
        boolean grabo = false;
        Document doc2 = null;
        try {
            doc2 = XMLDAOFactory.getDocument(XMLpath);
            Element raiz = doc2.getRootElement();
            Element hijo = new Element("programacion_radio");
            hijo.setAttribute("id", String.valueOf(getMaxId() + 1));
            hijo.addContent(new Element("horario").addContent(programacion_radio.getHorario()));
            hijo.addContent(new Element("lunes").addContent(String.valueOf(programacion_radio.getLunes().getId())));
            hijo.addContent(new Element("martes").addContent(String.valueOf(programacion_radio.getMartes().getId())));
            hijo.addContent(new Element("miercoles").addContent(String.valueOf(programacion_radio.getMiercoles().getId())));
            hijo.addContent(new Element("jueves").addContent(String.valueOf(programacion_radio.getJueves().getId())));
            hijo.addContent(new Element("viernes").addContent(String.valueOf(programacion_radio.getViernes().getId())));
            hijo.addContent(new Element("sabado").addContent(String.valueOf(programacion_radio.getSabado().getId())));
            hijo.addContent(new Element("domingo").addContent(String.valueOf(programacion_radio.getDomingo().getId())));
            hijo.addContent(new Element("activo").addContent(String.valueOf(programacion_radio.isActivo())));
            raiz.addContent(hijo);

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
    public List<ProgramacionRadio> findAll() {
        List programaciones_radio = new ArrayList();
        ProgramacionRadio programacion_radio = null;
        String xPath = "programaciones_radio/programacion_radio[activo='true']";
        Document doc2 = XMLDAOFactory.getDocument(XMLpath);
        try {

            XPath xpath = XPath.newInstance(xPath);
            List list = xpath.selectNodes(doc2);

            if (!list.isEmpty()) {
                for (Iterator iter = list.iterator(); iter.hasNext();) {
                    Element elem = (Element) iter.next();
                    programacion_radio = new ProgramacionRadio();
                    programacion_radio.setId(Integer.parseInt(elem.getAttributeValue("id")));
                    programacion_radio.setHorario(elem.getChild("horario").getTextTrim());
                    programacion_radio.setLunes(programaDAO.findById(Integer.parseInt(elem.getChild("lunes").getTextTrim())));
                    programacion_radio.setMartes(programaDAO.findById(Integer.parseInt(elem.getChild("martes").getTextTrim())));
                    programacion_radio.setMiercoles(programaDAO.findById(Integer.parseInt(elem.getChild("miercoles").getTextTrim())));
                    programacion_radio.setJueves(programaDAO.findById(Integer.parseInt(elem.getChild("jueves").getTextTrim())));
                    programacion_radio.setViernes(programaDAO.findById(Integer.parseInt(elem.getChild("viernes").getTextTrim())));
                    programacion_radio.setSabado(programaDAO.findById(Integer.parseInt(elem.getChild("sabado").getTextTrim())));
                    programacion_radio.setDomingo(programaDAO.findById(Integer.parseInt(elem.getChild("domingo").getTextTrim())));
                    programacion_radio.setActivo(Boolean.parseBoolean(elem.getChild("activo").getTextTrim()));
                    programaciones_radio.add(programacion_radio);
                }
            }

        } catch (JDOMException ex) {
            Logger.getLogger(XMLProgramacionRadioDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        doc2 = null;
        return programaciones_radio;
    }

    @Override
    public ProgramacionRadio findById(int id) {
        ProgramacionRadio programacion_radio = null;
        String xPath = "programaciones_radio/programacion_radio[@id='" + id + "']";
        Document doc2 = XMLDAOFactory.getDocument(XMLpath);

        try {

            XPath xpath = XPath.newInstance(xPath);
            List list = xpath.selectNodes(doc2);

            if (!list.isEmpty()) {
                for (Iterator iter = list.iterator(); iter.hasNext();) {
                    Element elem = (Element) iter.next();
                    programacion_radio = new ProgramacionRadio();
                    programacion_radio.setId(Integer.parseInt(elem.getAttributeValue("id")));
                    programacion_radio.setHorario(elem.getChild("horario").getTextTrim());
                    programacion_radio.setLunes(programaDAO.findById(Integer.parseInt(elem.getChild("lunes").getTextTrim())));
                    programacion_radio.setMartes(programaDAO.findById(Integer.parseInt(elem.getChild("martes").getTextTrim())));
                    programacion_radio.setMiercoles(programaDAO.findById(Integer.parseInt(elem.getChild("miercoles").getTextTrim())));
                    programacion_radio.setJueves(programaDAO.findById(Integer.parseInt(elem.getChild("jueves").getTextTrim())));
                    programacion_radio.setViernes(programaDAO.findById(Integer.parseInt(elem.getChild("viernes").getTextTrim())));
                    programacion_radio.setSabado(programaDAO.findById(Integer.parseInt(elem.getChild("sabado").getTextTrim())));
                    programacion_radio.setDomingo(programaDAO.findById(Integer.parseInt(elem.getChild("domingo").getTextTrim())));
                    programacion_radio.setActivo(Boolean.parseBoolean(elem.getChild("activo").getTextTrim()));
                }
            }

        } catch (JDOMException ex) {
            Logger.getLogger(XMLProgramacionRadioDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        doc2 = null;
        return programacion_radio;
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
        //String xPath = "programacion_radio/programacion_radio/@id[not(. <=../preceding-sibling::programacion_radio/@id) and not(. <=../following-sibling::programacion_radio/@id)]";
        String xPath = "/programaciones_radio/programacion_radio/@id[not(. < ../../programacion_radio/@id)][1]";
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
            Logger.getLogger(XMLProgramacionRadioDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        doc2 = null;
        return maxId;
    }

    @Override
    public List<ProgramacionRadio> findBy(int limite, String hora) {
                List programaciones_radio = new ArrayList();
        ProgramacionRadio programacion_radio = null;
        String xPath = "programaciones_radio/programacion_radio[activo='true'][contains(horario,'"+hora+"')] [position() <= "+limite+"]";
        Document doc2 = XMLDAOFactory.getDocument(XMLpath);
        try {

            XPath xpath = XPath.newInstance(xPath);
            List list = xpath.selectNodes(doc2);

            if (!list.isEmpty()) {
                for (Iterator iter = list.iterator(); iter.hasNext();) {
                    Element elem = (Element) iter.next();
                    programacion_radio = new ProgramacionRadio();
                    programacion_radio.setId(Integer.parseInt(elem.getAttributeValue("id")));
                    programacion_radio.setHorario(elem.getChild("horario").getTextTrim());
                    programacion_radio.setLunes(programaDAO.findById(Integer.parseInt(elem.getChild("lunes").getTextTrim())));
                    programacion_radio.setMartes(programaDAO.findById(Integer.parseInt(elem.getChild("martes").getTextTrim())));
                    programacion_radio.setMiercoles(programaDAO.findById(Integer.parseInt(elem.getChild("miercoles").getTextTrim())));
                    programacion_radio.setJueves(programaDAO.findById(Integer.parseInt(elem.getChild("jueves").getTextTrim())));
                    programacion_radio.setViernes(programaDAO.findById(Integer.parseInt(elem.getChild("viernes").getTextTrim())));
                    programacion_radio.setSabado(programaDAO.findById(Integer.parseInt(elem.getChild("sabado").getTextTrim())));
                    programacion_radio.setDomingo(programaDAO.findById(Integer.parseInt(elem.getChild("domingo").getTextTrim())));
                    programacion_radio.setActivo(Boolean.parseBoolean(elem.getChild("activo").getTextTrim()));
                    programaciones_radio.add(programacion_radio);
                }
            }

        } catch (JDOMException ex) {
            Logger.getLogger(XMLProgramacionRadioDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        doc2 = null;
        return programaciones_radio;
    }

}
