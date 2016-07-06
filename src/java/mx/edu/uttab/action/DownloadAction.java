/**
 *
 * @author Weisß
 */
package mx.edu.uttab.action;

import static com.opensymphony.xwork2.Action.SUCCESS;
import com.opensymphony.xwork2.ActionContext;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import com.opensymphony.xwork2.ActionSupport;
import javax.servlet.http.HttpServletRequest;
import org.apache.struts2.ServletActionContext;
import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Result;

public class DownloadAction extends ActionSupport {

    private String fileName = "";
    private String contentType = "";
    private String contentDisposition = "";
    private InputStream fileInputStream;
    private final String[] ArrayContentType = {"audio/mpeg", "audio/wav", "audio/ogg", "application/pdf", "image/jpeg", "application/msword"};

    public String getFileName() {
        return fileName;
    }

    public void setFileName(String fileName) {
        this.fileName = fileName;
    }

    public String getContentDisposition() {
        return contentDisposition;
    }

    public void setContentDisposition(String contentDisposition) {
        this.contentDisposition = contentDisposition;
    }

    public String getContentType() {
        return contentType;
    }

    public void setContentType(String contentType) {
        this.contentType = contentType;
    }

    public InputStream getFileInputStream() {
        return fileInputStream;
    }

    public void setFileInputStream(InputStream fileInputStream) {
        this.fileInputStream = fileInputStream;
    }

    @Override
    @Action(value = "/downloadPodcast", results = {
        @Result(name = "success", type = "stream",
                params = {"contentType", "${contentType}", "inputName", "fileInputStream",
            "contentDisposition", "${contentDisposition}", "bufferSize", "1024"}),
        @Result(name = "error", location = "/jsp/error.jsp")
    })
    public String execute() throws Exception {
        HttpServletRequest request = (HttpServletRequest) ActionContext.getContext().get(ServletActionContext.HTTP_REQUEST);
        int tipo = Integer.parseInt(request.getParameter("t"));
        String nombre = request.getParameter("n");
        String posicion = request.getParameter("p");
        setContentType(ArrayContentType[tipo - 1]);
        setContentDisposition("attachment; filename=\"" + nombre + "\"");
        fileInputStream = new FileInputStream(new File(ServletActionContext.getServletContext().getRealPath("/") + "WEB-INF\\podcast\\otras_secciones\\radio\\" + posicion + "\\" + nombre + ".mp3"));
        return SUCCESS;
    }

    @Action(value = "/viewPodcast", results = {
        @Result(name = "success", type = "stream",
                params = {"contentType", "${contentType}", "inputName", "fileInputStream",
            "contentDisposition", "${contentDisposition}", "bufferSize", "1024"}),
        @Result(name = "error", location = "/jsp/error.jsp")
    })
    public String viewPodcast() throws Exception {
        HttpServletRequest request = (HttpServletRequest) ActionContext.getContext().get(ServletActionContext.HTTP_REQUEST);
        int tipo = Integer.parseInt(request.getParameter("t"));
        String nombre = request.getParameter("n");
        String posicion = request.getParameter("p");
        setContentType(ArrayContentType[tipo - 1]);
        setContentDisposition("inine; filename=\"" + nombre + "\"");

        String extension = "";

        switch (tipo - 1) {
            case 0:
                extension = ".mp3";
                break;
            case 1:
                extension = ".wav";
                break;
            case 2:
                extension = ".ogg";
                break;
            default:
        }
        fileInputStream = new FileInputStream(new File(ServletActionContext.getServletContext().getRealPath("/") + "WEB-INF\\podcast\\otras_secciones\\radio\\" + posicion + "\\" + nombre + extension));
        return SUCCESS;
    }
}
