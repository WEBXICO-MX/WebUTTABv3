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
import java.util.Iterator;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import mx.edu.uttab.dao.xml.XMLDAOFactory;
import mx.edu.uttab.model.CASE.Usuario;
import org.jdom2.Document;
import org.jdom2.Element;
import org.jdom2.JDOMException;
import org.jdom2.output.Format;
import org.jdom2.output.XMLOutputter;
import org.jdom2.xpath.XPath;

public class XMLUsuarioDAO implements UsuarioDAO {

    Document doc = null;
    String XMLpath = "";

    public XMLUsuarioDAO() {
    }

    @Override
    public boolean saveOrUpdate(Usuario usuario) {
        boolean grabo = false;

        try {
            doc = XMLDAOFactory.getDocument(XMLpath);
            Element raiz = doc.getRootElement();
            //UPDATE
            if (usuario.getId() != 0) {
                List<Element> elements = raiz.getChildren("usuario");
                Element zsElement = null;
                for (Element e : elements) {
                    if (e.getAttributeValue("id").equals(String.valueOf(usuario.getId()))) {
                        zsElement = e;
                        break;
                    }
                }
                if (zsElement != null) {
                    zsElement.getChild("nombre").removeContent();
                    zsElement.getChild("nombre").addContent(usuario.getNombre());
                    zsElement.getChild("login").removeContent();
                    zsElement.getChild("login").addContent(usuario.getLogin());
                    zsElement.getChild("password").removeContent();
                    zsElement.getChild("password").addContent(usuario.getPassword());
                    zsElement.getChild("activo").removeContent();
                    zsElement.getChild("activo").addContent(String.valueOf(usuario.isActivo()));
                }
            } else { //INSERT
                Element hijo = new Element("usuario");
                hijo.setAttribute("id", String.valueOf(getMaxId() + 1));
                hijo.addContent(new Element("nombre").addContent(usuario.getNombre()));
                hijo.addContent(new Element("login").addContent(usuario.getLogin()));
                hijo.addContent(new Element("password").addContent(usuario.getPassword()));
                hijo.addContent(new Element("activo").addContent(String.valueOf(usuario.isActivo())));
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
        doc = null;
        return grabo;
    }

    @Override
    public List<Usuario> findAll() {
        List usuarios = new ArrayList();
        Usuario usuario = null;
        String xPath = "usuarios/usuario";
        doc = XMLDAOFactory.getDocument(XMLpath);
        try {

            XPath xpath = XPath.newInstance(xPath);
            List list = xpath.selectNodes(doc);

            if (!list.isEmpty()) {
                for (Iterator iter = list.iterator(); iter.hasNext();) {
                    Element elem = (Element) iter.next();
                    usuario = new Usuario();
                    usuario.setId(Integer.parseInt(elem.getAttributeValue("id")));
                    usuario.setNombre(elem.getChild("nombre").getTextTrim());
                    usuario.setLogin(elem.getChild("login").getTextTrim());
                    usuario.setPassword(elem.getChild("password").getTextTrim());
                    usuario.setActivo(Boolean.parseBoolean(elem.getChild("activo").getTextTrim()));
                    usuarios.add(usuario);
                }
            }

        } catch (JDOMException ex) {
            Logger.getLogger(XMLUsuarioDAO.class.getName()).log(Level.SEVERE, null, ex);
        }

        return usuarios;
    }

    @Override
    public Usuario findBy(int id) {
        Usuario usuario = null;
        String xPath = "usuarios/usuario[@id='" + id + "']";
        doc = XMLDAOFactory.getDocument(XMLpath);

        try {

            XPath xpath = XPath.newInstance(xPath);
            List list = xpath.selectNodes(doc);

            if (!list.isEmpty()) {
                for (Iterator iter = list.iterator(); iter.hasNext();) {
                    Element elem = (Element) iter.next();
                    usuario = new Usuario();
                    usuario.setId(Integer.parseInt(elem.getAttributeValue("id")));
                    usuario.setNombre(elem.getChild("nombre").getTextTrim());
                    usuario.setLogin(elem.getChild("login").getTextTrim());
                    usuario.setPassword(elem.getChild("password").getTextTrim());
                    usuario.setActivo(Boolean.parseBoolean(elem.getChild("activo").getTextTrim()));
                }
            }

        } catch (JDOMException ex) {
            Logger.getLogger(XMLUsuarioDAO.class.getName()).log(Level.SEVERE, null, ex);
        }

        return usuario;
    }

    @Override
    public Usuario findBy(String login, String password) {
        Usuario usuario = null;
        String xPath = "usuarios/usuario[login='" + login + "'][password='" + password + "'][activo='true']";
        doc = XMLDAOFactory.getDocument(XMLpath);

        try {

            XPath xpath = XPath.newInstance(xPath);
            List list = xpath.selectNodes(doc);

            if (!list.isEmpty()) {
                for (Iterator iter = list.iterator(); iter.hasNext();) {
                    Element elem = (Element) iter.next();
                    usuario = new Usuario();
                    usuario.setId(Integer.parseInt(elem.getAttributeValue("id")));
                    usuario.setNombre(elem.getChild("nombre").getTextTrim());
                    usuario.setLogin(elem.getChild("login").getTextTrim());
                    usuario.setPassword(elem.getChild("password").getTextTrim());
                    usuario.setActivo(Boolean.parseBoolean(elem.getChild("activo").getTextTrim()));
                }
            }

        } catch (JDOMException ex) {
            Logger.getLogger(XMLUsuarioDAO.class.getName()).log(Level.SEVERE, null, ex);
        }

        return usuario;
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
        //String xPath = "usuarios/usuario/@id[not(. <=../preceding-sibling::usuario/@id) and not(. <=../following-sibling::usuario/@id)]";
        String xPath = "/usuarios/usuario/@id[not(. < ../../usuario/@id)][1]";
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
            Logger.getLogger(XMLUsuarioDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        doc2 = null;
        return maxId;
    }

}
