/**
 *
 * @author Roberto Eder Weiss Juárez
 * @see {@link http://webxico.blogspot.mx/}
 */
package mx.edu.uttab.dao.xml.calendarioeventos;

import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import leerdirectorio.Utilerias;
import mx.edu.uttab.dao.xml.XMLDAOFactory;
import mx.edu.uttab.model.CalendarioEventos;
import org.jdom2.Document;
import org.jdom2.Element;
import org.jdom2.JDOMException;
import org.jdom2.filter.Filters;
import org.jdom2.output.Format;
import org.jdom2.output.XMLOutputter;
import org.jdom2.xpath.XPath;
import org.jdom2.xpath.XPathExpression;
import org.jdom2.xpath.XPathFactory;

public class XMLCalendarioEventosDAO implements CalendarioEventosDAO {

    Document doc = null;
    String XMLpath = "";
    DateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
    Date date = null;
    Calendar cal = null;

    public XMLCalendarioEventosDAO() {

    }

    @Override
    public boolean saveOrUpdate(CalendarioEventos calendario) {
        try {

            Document input = XMLDAOFactory.getDocument(XMLpath);
            Element raiz = input.getRootElement();
            Element hijo = new Element("calendario");
            hijo.setAttribute("id", String.valueOf(calendario.getId()));
            hijo.addContent(new Element("nombre").addContent(calendario.getNombre()));
            hijo.addContent(new Element("descripcion").addContent(calendario.getDescripcion()));
            hijo.addContent(new Element("lugar_realizacion").addContent(calendario.getLugar_realizacion()));
            hijo.addContent(new Element("organizador").addContent(calendario.getOrganizador()));
            hijo.addContent(new Element("costo").addContent(calendario.getCosto()));
            hijo.addContent(new Element("informes").addContent(calendario.getInformes()));
            hijo.addContent(new Element("fecha_realizacion").addContent(Utilerias.getCadenaFechaLarga(calendario.getFecha_realizacion())));
            hijo.addContent(new Element("hora_realizacion").addContent(calendario.getHora_realizacion()));
            hijo.addContent(new Element("fecha_publicacion").addContent(Utilerias.getCadenaFechaLarga(calendario.getFecha_publicacion())));
            hijo.addContent(new Element("activo").addContent(String.valueOf(calendario.isActivo())));
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

        } catch (IOException | java.lang.NullPointerException e) {
        } catch (Exception e) {
        }
        return true;
    }

    @Override
    public List<CalendarioEventos> findAll() {
        List calendarioevento = new ArrayList();
        CalendarioEventos calendario = null;
        String xPath = "calendario_eventos/calendario_evento";
        doc = XMLDAOFactory.getDocument(XMLpath);

        XPathFactory xFactory = XPathFactory.instance();
        XPathExpression<Element> expr = xFactory.compile(xPath, Filters.element());
        List<Element> list = expr.evaluate(doc);

        for (Element elem : list) {
            try {
                calendario = new CalendarioEventos();
                calendario.setId(Integer.parseInt(elem.getAttributeValue("id")));
                calendario.setNombre(elem.getChild("nombre").getTextTrim());
                calendario.setDescripcion(elem.getChild("descripcion").getTextTrim());
                calendario.setLugar_realizacion(elem.getChild("lugar_realizacion").getTextTrim());
                calendario.setOrganizador(elem.getChild("organizador").getTextTrim());
                calendario.setHora_realizacion(elem.getChild("hora_realizacion").getTextTrim());

                date = formatter.parse(elem.getChild("fecha_realizacion").getTextTrim());
                cal = Calendar.getInstance();
                cal.setTime(date);
                calendario.setFecha_realizacion(cal);

                date = formatter.parse(elem.getChild("fecha_publicacion").getTextTrim());
                cal = Calendar.getInstance();
                cal.setTime(date);
                calendario.setFecha_publicacion(cal);

                calendario.setCosto(elem.getChild("costo").getTextTrim());
                calendario.setInformes(elem.getChild("informes").getTextTrim());
                calendario.setActivo(Boolean.parseBoolean(elem.getChild("activo").getTextTrim()));
                calendarioevento.add(calendario);
            } catch (ParseException ex) {
                Logger.getLogger(XMLCalendarioEventosDAO.class.getName()).log(Level.SEVERE, null, ex);
            }
        }

        return calendarioevento;
    }

    @Override
    public List<CalendarioEventos> findByDiaMesAnio(String dia_fecha_realizacion, String mes_fecha_realizacion, int anio_fecha_realizacion, boolean activo) {
        List calendarioevento = new ArrayList();
        CalendarioEventos calendario = null;
        String xPath = "calendario_eventos/calendario_evento[contains(fecha_realizacion,'" + anio_fecha_realizacion + '-' + mes_fecha_realizacion + '-' + dia_fecha_realizacion + "')][activo='" + Boolean.toString(activo) + "']";
        doc = XMLDAOFactory.getDocument(XMLpath);

        XPathFactory xFactory = XPathFactory.instance();
        XPathExpression<Element> expr = xFactory.compile(xPath, Filters.element());
        List<Element> list = expr.evaluate(doc);

        for (Element elem : list) {

            try {
                calendario = new CalendarioEventos();
                calendario.setId(Integer.parseInt(elem.getAttributeValue("id")));
                calendario.setNombre(elem.getChild("nombre").getTextTrim());
                calendario.setDescripcion(elem.getChild("descripcion").getTextTrim());
                calendario.setLugar_realizacion(elem.getChild("lugar_realizacion").getTextTrim());
                calendario.setOrganizador(elem.getChild("organizador").getTextTrim());
                calendario.setHora_realizacion(elem.getChild("hora_realizacion").getTextTrim());

                date = formatter.parse(elem.getChild("fecha_realizacion").getTextTrim());
                cal = Calendar.getInstance();
                cal.setTime(date);
                calendario.setFecha_realizacion(cal);

                date = formatter.parse(elem.getChild("fecha_publicacion").getTextTrim());
                cal = Calendar.getInstance();
                cal.setTime(date);
                calendario.setFecha_publicacion(cal);

                calendario.setCosto(elem.getChild("costo").getTextTrim());
                calendario.setInformes(elem.getChild("informes").getTextTrim());
                calendario.setActivo(Boolean.parseBoolean(elem.getChild("activo").getTextTrim()));
                calendarioevento.add(calendario);
            } catch (ParseException ex) {
                Logger.getLogger(XMLCalendarioEventosDAO.class.getName()).log(Level.SEVERE, null, ex);
            }
        }

        return calendarioevento;

    }

    @Override
    public List<CalendarioEventos> findBySemana(String inicio, String fin) {
        List calendarioevento = new ArrayList();
        CalendarioEventos calendario = null;
        String xPath = "calendario_eventos/calendario_evento[number(translate(fecha_realizacion,'-','')) >= " + inicio.replace("-", "") + " and number(translate(fecha_realizacion,'-','')) <= " + fin.replace("-", "") + "]";
        doc = XMLDAOFactory.getDocument(XMLpath);

        XPathFactory xFactory = XPathFactory.instance();
        XPathExpression<Element> expr = xFactory.compile(xPath, Filters.element());
        List<Element> list = expr.evaluate(doc);

        for (Element elem : list) {
            try {
                calendario = new CalendarioEventos();
                calendario.setId(Integer.parseInt(elem.getAttributeValue("id")));
                calendario.setNombre(elem.getChild("nombre").getTextTrim());
                calendario.setDescripcion(elem.getChild("descripcion").getTextTrim());
                calendario.setLugar_realizacion(elem.getChild("lugar_realizacion").getTextTrim());
                calendario.setOrganizador(elem.getChild("organizador").getTextTrim());
                calendario.setHora_realizacion(elem.getChild("hora_realizacion").getTextTrim());

                date = formatter.parse(elem.getChild("fecha_realizacion").getTextTrim());
                cal = Calendar.getInstance();
                cal.setTime(date);
                calendario.setFecha_realizacion(cal);

                date = formatter.parse(elem.getChild("fecha_publicacion").getTextTrim());
                cal = Calendar.getInstance();
                cal.setTime(date);
                calendario.setFecha_publicacion(cal);

                calendario.setCosto(elem.getChild("costo").getTextTrim());
                calendario.setInformes(elem.getChild("informes").getTextTrim());
                calendario.setActivo(Boolean.parseBoolean(elem.getChild("activo").getTextTrim()));
                calendarioevento.add(calendario);
            } catch (ParseException ex) {
                Logger.getLogger(XMLCalendarioEventosDAO.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return calendarioevento;
    }

    @Override
    public List<CalendarioEventos> findByMes(String inicio, String fin) {
        List calendarioevento = new ArrayList();
        CalendarioEventos calendario = null;
        String xPath = "calendario_eventos/calendario_evento[number(translate(fecha_realizacion,'-','')) >= " + inicio.replace("-", "") + " and number(translate(fecha_realizacion,'-','')) <= " + fin.replace("-", "") + "][activo='true']";
        doc = XMLDAOFactory.getDocument(XMLpath);

        XPathFactory xFactory = XPathFactory.instance();
        XPathExpression<Element> expr = xFactory.compile(xPath, Filters.element());
        List<Element> list = expr.evaluate(doc);

        for (Element elem : list) {
            try {
                calendario = new CalendarioEventos();
                calendario.setId(Integer.parseInt(elem.getAttributeValue("id")));
                calendario.setNombre(elem.getChild("nombre").getTextTrim());
                calendario.setDescripcion(elem.getChild("descripcion").getTextTrim());
                calendario.setLugar_realizacion(elem.getChild("lugar_realizacion").getTextTrim());
                calendario.setOrganizador(elem.getChild("organizador").getTextTrim());
                calendario.setHora_realizacion(elem.getChild("hora_realizacion").getTextTrim());

                date = formatter.parse(elem.getChild("fecha_realizacion").getTextTrim());
                cal = Calendar.getInstance();
                cal.setTime(date);
                calendario.setFecha_realizacion(cal);

                date = formatter.parse(elem.getChild("fecha_publicacion").getTextTrim());
                cal = Calendar.getInstance();
                cal.setTime(date);
                calendario.setFecha_publicacion(cal);

                calendario.setCosto(elem.getChild("costo").getTextTrim());
                calendario.setInformes(elem.getChild("informes").getTextTrim());
                calendario.setActivo(Boolean.parseBoolean(elem.getChild("activo").getTextTrim()));
                calendarioevento.add(calendario);
            } catch (ParseException ex) {
                Logger.getLogger(XMLCalendarioEventosDAO.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return calendarioevento;
    }

    @Override
    public CalendarioEventos findById(int id) {
        CalendarioEventos calendario = null;
        String xPath = "calendario_eventos/calendario_evento[@id='" + id + "']";
        doc = XMLDAOFactory.getDocument(XMLpath);

        try {

            XPath xpath = XPath.newInstance(xPath);
            List list = xpath.selectNodes(doc);

            if (!list.isEmpty()) {
                for (Iterator iter = list.iterator(); iter.hasNext();) {
                    Element elem = (Element) iter.next();
                    calendario = new CalendarioEventos();
                    calendario.setId(Integer.parseInt(elem.getAttributeValue("id")));
                    calendario.setNombre(elem.getChild("nombre").getTextTrim());
                    calendario.setDescripcion(elem.getChild("descripcion").getTextTrim());
                    calendario.setLugar_realizacion(elem.getChild("lugar_realizacion").getTextTrim());
                    calendario.setOrganizador(elem.getChild("organizador").getTextTrim());
                    calendario.setHora_realizacion(elem.getChild("hora_realizacion").getTextTrim());

                    date = formatter.parse(elem.getChild("fecha_realizacion").getTextTrim());
                    cal = Calendar.getInstance();
                    cal.setTime(date);
                    calendario.setFecha_realizacion(cal);

                    date = formatter.parse(elem.getChild("fecha_publicacion").getTextTrim());
                    cal = Calendar.getInstance();
                    cal.setTime(date);
                    calendario.setFecha_publicacion(cal);

                    calendario.setCosto(elem.getChild("costo").getTextTrim());
                    calendario.setInformes(elem.getChild("informes").getTextTrim());
                    calendario.setActivo(Boolean.parseBoolean(elem.getChild("activo").getTextTrim()));
                }
            }

        } catch (JDOMException | ParseException ex) {
            Logger.getLogger(XMLCalendarioEventosDAO.class.getName()).log(Level.SEVERE, null, ex);
        }

        return calendario;
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
