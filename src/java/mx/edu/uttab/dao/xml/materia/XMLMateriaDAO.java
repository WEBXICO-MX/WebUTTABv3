/**
 *
 * @author Roberto Eder Weiss Juárez
 * @see {@link http://webxico.blogspot.mx/}
 */
package mx.edu.uttab.dao.xml.materia;

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
import mx.edu.uttab.model.Materia;
import org.jdom2.Document;
import org.jdom2.Element;
import org.jdom2.JDOMException;
import org.jdom2.output.Format;
import org.jdom2.output.XMLOutputter;
import org.jdom2.xpath.XPath;

public class XMLMateriaDAO implements MateriaDAO {

    Document doc = null;
    String XMLpath = "";

    public XMLMateriaDAO() {

    }

    @Override
    public boolean saveOrUpdate(Materia materia) {
        try {

            Document input = XMLDAOFactory.getDocument(XMLpath);
            Element raiz = input.getRootElement();
            Element hijo = new Element("materia");
            hijo.setAttribute("cve_carrera", String.valueOf(materia.getCve_carerra().getCve_carrera()));
            hijo.setAttribute("cuatrimestre", String.valueOf(materia.getCuatrimestre()));
            hijo.setAttribute("nombre", String.valueOf(materia.getNombre()));
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
    public List<Materia> findAll() {
        List materias = new ArrayList();
        Materia materia = null;
        String xPath = "materias/materia";
        doc = XMLDAOFactory.getDocument(XMLpath);
        try {

            XPath xpath = XPath.newInstance(xPath);
            List list = xpath.selectNodes(doc);

            if (!list.isEmpty()) {
                for (Iterator iter = list.iterator(); iter.hasNext();) {
                    Element elem = (Element) iter.next();
                    materia = new Materia();
                    materia.setCve_carerra(new Carrera(Integer.parseInt(elem.getAttributeValue("cve_carrera"))));
                    materia.setCuatrimestre(Integer.parseInt(elem.getAttributeValue("cuatrimestre")));
                    materia.setNombre(elem.getAttributeValue("nombre"));
                    materias.add(materia);
                }
            }

        } catch (JDOMException ex) {
            Logger.getLogger(XMLMateriaDAO.class.getName()).log(Level.SEVERE, null, ex);
        }

        return materias;
    }

    @Override
    public List<Materia> findAllByCarreraCuatrimestre(int cve_carrera, int cuatrimestre) {
        List materias = new ArrayList();
        Materia materia = null;
        String xPath = "materias/materia[@cve_carrera='" + cve_carrera + "'][@cuatrimestre='" + cuatrimestre + "']";
        doc = XMLDAOFactory.getDocument(XMLpath);
        try {

            XPath xpath = XPath.newInstance(xPath);
            List list = xpath.selectNodes(doc);

            if (!list.isEmpty()) {
                for (Iterator iter = list.iterator(); iter.hasNext();) {
                    Element elem = (Element) iter.next();
                    materia = new Materia();
                    materia.setCve_carerra(new Carrera(Integer.parseInt(elem.getAttributeValue("cve_carrera"))));
                    materia.setCuatrimestre(Integer.parseInt(elem.getAttributeValue("cuatrimestre")));
                    materia.setNombre(elem.getAttributeValue("nombre"));
                    materias.add(materia);
                }
            }

        } catch (JDOMException ex) {
            Logger.getLogger(XMLMateriaDAO.class.getName()).log(Level.SEVERE, null, ex);
        }

        return materias;

    }

    @Override
    public Materia findByCarreraCuatrimestreNombre(int cve_carrera, int cuatrimestre, String nombre) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
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
