/**
 *
 * @author Roberto Eder Weiss Juárez
 * @see {@link http://webxico.blogspot.mx/}
 */
package mx.edu.uttab.action;

import static com.opensymphony.xwork2.Action.SUCCESS;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import mx.edu.uttab.dao.DAOFactory;
import mx.edu.uttab.dao.xml.fichero.FicheroDAO;
import mx.edu.uttab.dao.xml.fichero.XMLFicheroDAO;
import mx.edu.uttab.model.Fichero;
import org.apache.struts2.ServletActionContext;
import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Result;

public class FicheroAction extends ActionSupport implements ModelDriven<Fichero> {

    private Fichero fichero = new Fichero();
    private List<Fichero> ficheroList = new ArrayList<>();
    private FicheroDAO ficheroDAO = DAOFactory.getDAOFactory(DAOFactory.XML).getFicheroDAO();
    private String fileName = "";
    private String contentType = "";
    private String contentDisposition = "";
    private InputStream fileInputStream;

    public FicheroAction() {
        if (ficheroDAO instanceof XMLFicheroDAO) {
            ((XMLFicheroDAO) ficheroDAO).setXMLpath(ServletActionContext.getServletContext().getRealPath("/") + "WEB-INF/ficheros.xml");
        }
    }

    @Override
    public Fichero getModel() {
        return fichero;
    }

    public Fichero getFichero() {
        return fichero;
    }

    public void setFichero(Fichero fichero) {
        this.fichero = fichero;
    }

    public List<Fichero> getFicheroList() {
        return ficheroList;
    }

    public void setFicheroList(List<Fichero> ficheroList) {
        this.ficheroList = ficheroList;
    }

    public String getFileName() {
        return fileName;
    }

    public void setFileName(String fileName) {
        this.fileName = fileName;
    }

    public String getContentType() {
        return contentType;
    }

    public void setContentType(String contentType) {
        this.contentType = contentType;
    }

    public String getContentDisposition() {
        return contentDisposition;
    }

    public void setContentDisposition(String contentDisposition) {
        this.contentDisposition = contentDisposition;
    }

    public InputStream getFileInputStream() {
        return fileInputStream;
    }

    public void setFileInputStream(InputStream fileInputStream) {
        this.fileInputStream = fileInputStream;
    }

    @Action(value = "/listFicheros", results = {
        @Result(name = "success", location = "/WEB-INF/jsp/otras_secciones/fichero.jsp")
        ,
        @Result(name = "error", location = "/WEB-INF/jsp/error.jsp")})
    public String list() {
        ficheroList = ficheroDAO.findAll();
        return SUCCESS;
    }

    @Action(value = "/viewFile", results = {
        @Result(name = "success", type = "stream",
                params = {"contentType", "${contentType}", "inputName", "fileInputStream",
                    "contentDisposition", "${contentDisposition}", "bufferSize", "1024"})
        ,
        @Result(name = "error", location = "/WEB-INF/jsp/error.jsp")
        ,
        @Result(name = "input", location = "/WEB-INF/jsp/error.jsp")
    })
    public String viewFile() throws Exception {
        HttpServletRequest request = (HttpServletRequest) ActionContext.getContext().get(ServletActionContext.HTTP_REQUEST);
        int id = Integer.parseInt(request.getParameter("i"));
        String destino = request.getParameter("d");
        fichero = ficheroDAO.findById(id, destino);
        setContentType(fichero.getMime());
        if (fichero.getNombre().equals("")) {
            setContentDisposition("inline; filename=\"Fichero_" + destino + "_" + id + "\"");
        } else {
            setContentDisposition("inline; filename=\"" + fichero.getNombre() + "\"");
        }
        System.out.println(fichero.getMime());
        System.out.println(fichero.getNombre());
        fileInputStream = new FileInputStream(new File(ServletActionContext.getServletContext().getRealPath("/") + fichero.getRuta()));
        return SUCCESS;
    }

    @Action(value = "/downloadFile", results = {
        @Result(name = "success", type = "stream",
                params = {"contentType", "${contentType}", "inputName", "fileInputStream",
                    "contentDisposition", "${contentDisposition}", "bufferSize", "1024"})
        ,
        @Result(name = "error", location = "/WEB-INF/jsp/error.jsp")
        ,
        @Result(name = "input", location = "/WEB-INF/jsp/error.jsp")
    })
    public String downloadFile() throws Exception {
        HttpServletRequest request = (HttpServletRequest) ActionContext.getContext().get(ServletActionContext.HTTP_REQUEST);
        int id = Integer.parseInt(request.getParameter("i"));
        String destino = request.getParameter("d");
        fichero = ficheroDAO.findById(id, destino);
        setContentType(fichero.getMime());
        System.out.println(fichero.getMime());
        System.out.println(fichero.getNombre());
        System.out.println(ServletActionContext.getServletContext().getRealPath("/") + fichero.getRuta());
        if (fichero.getNombre().equals("")) {
            setContentDisposition("attachment; filename=\"Fichero_" + destino + "_" + id + "\"");
        } else {
            setContentDisposition("attachment; filename=\"" + fichero.getNombre() + "\"");
        }
        fileInputStream = new FileInputStream(new File(ServletActionContext.getServletContext().getRealPath("/") + fichero.getRuta()));
        return SUCCESS;
    }

}
