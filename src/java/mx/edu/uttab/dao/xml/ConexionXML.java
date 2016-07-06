package mx.edu.uttab.dao.xml;

import org.jdom2.Document;
import org.jdom2.input.SAXBuilder;
import java.io.FileInputStream;
import java.io.IOException;
import org.jdom2.JDOMException;

/**
 *
 * @author Weisß
 */
public class ConexionXML {
    // Lee un fichero XML y genera el objeto Document

    private static ConexionXML xml = null;

    public Document getDocument(String filePath) {
        FileInputStream in = null;
        SAXBuilder builder = null;
        Document doc = null;
        try {
            in = new FileInputStream(filePath);
            builder = new SAXBuilder();
            doc = builder.build(in);
            in.close();

        } catch (JDOMException | IOException e) {
        }
        return doc;
    }

    public static ConexionXML getInstance() {
        if (xml == null) {
            xml = new ConexionXML();
        }
        return xml;
    }
}
