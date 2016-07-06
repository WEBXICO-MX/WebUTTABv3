/**
 *
 * @author Roberto Eder Weiss Juárez
 * @see {@link http://webxico.blogspot.mx/}
 */
package mx.edu.uttab.dao.xml.calendarioescolar;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import mx.edu.uttab.dao.xml.XMLDAOFactory;
import mx.edu.uttab.model.CalendarioEscolar;
import org.jdom2.Document;
import org.jdom2.Element;
import org.jdom2.JDOMException;
import org.jdom2.xpath.XPath;

public class XMLCalendarioEscolarDAO implements CalendarioEscolarDAO {

    Document doc = null;
    String XMLpath = "";

    public XMLCalendarioEscolarDAO() {

    }

    @Override
    public List<CalendarioEscolar> findAll() {
        List calendarios = new ArrayList();
        CalendarioEscolar calendario = null;
        String xPath = "calendario_escolares/calendario_escolar";
        doc = XMLDAOFactory.getDocument(XMLpath);
        try {

            XPath xpath = XPath.newInstance(xPath);
            List list = xpath.selectNodes(doc);

            if (!list.isEmpty()) {
                for (Iterator iter = list.iterator(); iter.hasNext();) {
                    Element elem = (Element) iter.next();
                    calendario = new CalendarioEscolar();
                    calendario.setId(Integer.parseInt(elem.getAttributeValue("id")));
                    calendario.setMes(elem.getChild("imagen").getTextTrim());
                    calendarios.add(calendario);
                }
            }

        } catch (JDOMException ex) {
            Logger.getLogger(XMLCalendarioEscolarDAO.class.getName()).log(Level.SEVERE, null, ex);
        }

        return calendarios;
    }

    public String getXMLpath() {
        return XMLpath;
    }

    public void setXMLpath(String XMLpath) {
        this.XMLpath = XMLpath;
    }

}