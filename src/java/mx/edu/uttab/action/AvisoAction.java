/**
 *
 * @author Roberto Eder Weiss Juárez
 * @see {@link http://webxico.blogspot.mx/}
 */

package mx.edu.uttab.action;

import static com.opensymphony.xwork2.Action.INPUT;
import static com.opensymphony.xwork2.Action.SUCCESS;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import mx.edu.uttab.dao.xml.aviso.AvisoDAO;
import mx.edu.uttab.dao.DAOFactory;
import mx.edu.uttab.dao.xml.aviso.XMLAvisoDAO;
import mx.edu.uttab.model.Aviso;
import org.apache.commons.io.FileUtils;
import org.apache.struts2.ServletActionContext;
import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Result;
import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.interceptor.validation.SkipValidation;

public class AvisoAction extends ActionSupport implements ModelDriven<Aviso>, ServletRequestAware {

    private Aviso aviso = new Aviso();
    private List<Aviso> avisoList = new ArrayList<Aviso>();
    private AvisoDAO avisoDAO = DAOFactory.getDAOFactory(DAOFactory.XML).getAvisoDAO();
    private String fileName = "";
    private String contentType = "";
    private String contentDisposition = "";
    private InputStream fileInputStream;
    private final String[] ArrayContentType = {"audio/mpeg", "audio/wav", "audio/ogg", "application/pdf", "image/jpeg", "application/msword"};

    private File fileUpload;
    private String fileUploadContentType;
    private String fileUploadFileName;

    private HttpServletRequest servletRequest;

    public AvisoAction() {
        if (avisoDAO instanceof XMLAvisoDAO) {
            ((XMLAvisoDAO) avisoDAO).setXMLpath(ServletActionContext.getServletContext().getRealPath("/") + "WEB-INF/avisos.xml");
        }
    }

    @Override
    public Aviso getModel() {
        return aviso;
    }

    public Aviso getAviso() {
        return aviso;
    }

    public void setAviso(Aviso aviso) {
        this.aviso = aviso;
    }

    public List<Aviso> getAvisoList() {
        return avisoList;
    }

    public void setAvisoList(List<Aviso> avisoList) {
        this.avisoList = avisoList;
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

    public String getFileUploadContentType() {
        return fileUploadContentType;
    }

    public void setFileUploadContentType(String fileUploadContentType) {
        this.fileUploadContentType = fileUploadContentType;
    }

    public String getFileUploadFileName() {
        return fileUploadFileName;
    }

    public void setFileUploadFileName(String fileUploadFileName) {
        this.fileUploadFileName = fileUploadFileName;
    }

    public File getFileUpload() {
        return fileUpload;
    }

    public void setFileUpload(File fileUpload) {
        this.fileUpload = fileUpload;
    }

    @Action(value = "/listAvisos", results = {
        @Result(name = "success", type = "redirectAction", params = {"namespace", "/otras_secciones", "actionName", "avisos"}),
        @Result(name = "error", location = "/WEB-INF/jsp/error.jsp")})
    @SkipValidation
    public String listAvisosActivos() {
        avisoList = avisoDAO.findAllBy(true);
        return SUCCESS;
    }

    @Action(value = "/viewAvisoPDF", results = {
        @Result(name = "success", type = "stream",
                params = {"contentType", "${contentType}", "inputName", "fileInputStream",
                    "contentDisposition", "${contentDisposition}", "bufferSize", "1024"}),
        @Result(name = "error", location = "/WEB-INF/jsp/error.jsp"),
        @Result(name = "input", location = "/WEB-INF/jsp/error.jsp")
    })
    @SkipValidation
    public String viewPDF() throws Exception {
        //Debido a que implemento "ModelDriven" el parametro "id" es asignado a la propieda "id" del objeto evento, por lo que el
        //objeto HttpServletRequest ya no es requerido para obtener el valor de este parametro, es un proceso automático que realiza struts2 quizas usando inyección de dependecias.
        
        /*HttpServletRequest request = (HttpServletRequest) ActionContext.getContext().get(ServletActionContext.HTTP_REQUEST);
        int id = Integer.parseInt(request.getParameter("id"));
        String destino = request.getParameter("d");
        setContentType(ArrayContentType[3]);
        setContentDisposition("inline; filename=\"Aviso_" + id + "\"");
        aviso = avisoDAO.findBy(id);*/
        
        setContentType(ArrayContentType[3]);
        setContentDisposition("inline; filename=\"Aviso_" + aviso.getId() + "\"");
        aviso = avisoDAO.findBy(aviso.getId());
        fileInputStream = new FileInputStream(new File(ServletActionContext.getServletContext().getRealPath("/") + aviso.getPdf()));
        return SUCCESS;
    }

    @Action(value = "/viewAvisoIMG", results = {
        @Result(name = "success", type = "stream",
                params = {"contentType", "${contentType}", "inputName", "fileInputStream",
                    "contentDisposition", "${contentDisposition}", "bufferSize", "1024"}),
        @Result(name = "error", location = "/jsp/error.jsp")
    })
    @SkipValidation
    public String viewIMG() throws Exception {
        //Debido a que implemento "ModelDriven" el parametro "id" es asignado a la propieda "id" del objeto evento, por lo que el
        //objeto HttpServletRequest ya no es requerido para obtener el valor de este parametro, es un proceso automático que realiza struts2 quizas usando inyección de dependecias.
        
        /*HttpServletRequest request = (HttpServletRequest) ActionContext.getContext().get(ServletActionContext.HTTP_REQUEST);
        int id = Integer.parseInt(request.getParameter("id"));
        setContentType(ArrayContentType[4]);
        setContentDisposition("inline; filename=\"Aviso_" + id + "\"");
        aviso = avisoDAO.findBy(id);*/
        
        setContentType(ArrayContentType[4]);
        setContentDisposition("inline; filename=\"Aviso_" + aviso.getId() + "\"");
        aviso = avisoDAO.findBy(aviso.getId());
        
        fileInputStream = new FileInputStream(new File(ServletActionContext.getServletContext().getRealPath("/") + aviso.getImg()));
        return SUCCESS;
    }

    @Override
    public void setServletRequest(HttpServletRequest hsr) {
        this.servletRequest = hsr;
    }

    @Override
    public String input() {
        avisoList = avisoDAO.findTop(1, 21);
        return SUCCESS;
    }

    public String saveOrUpdate() {
        boolean grabo = avisoDAO.saveOrUpdate(aviso);
        if (!grabo) {
            addActionMessage("[ERROR] aviso no guardado.");
            return ERROR;
        } else {
            addActionMessage("aviso guardado con éxito.");
            avisoList = avisoDAO.findTop(1, 21);
            return SUCCESS;
        }
    }

    @SkipValidation
    public String edit() {
        //Debido a que implemento "ModelDriven" el parametro "id" es asignado a la propieda "id" del objeto evento, por lo que el
        //objeto HttpServletRequest ya no es requerido para obtener el valor de este parametro, es un proceso automático que realiza struts2 quizas usando inyección de dependecias.
        
        //HttpServletRequest request = (HttpServletRequest) ActionContext.getContext().get(ServletActionContext.HTTP_REQUEST);
        //aviso = avisoDAO.findBy(Integer.parseInt(request.getParameter("id")));
        
        aviso = avisoDAO.findBy(aviso.getId());
        return SUCCESS;
    }

    @SkipValidation
    public String delete() {
        //Debido a que implemento "ModelDriven" el parametro "id" es asignado a la propieda "id" del objeto evento, por lo que el
        //objeto HttpServletRequest ya no es requerido para obtener el valor de este parametro, es un proceso automático que realiza struts2 quizas usando inyección de dependecias.
        
        //HttpServletRequest request = (HttpServletRequest) ActionContext.getContext().get(ServletActionContext.HTTP_REQUEST);
        //avisoDAO.delete(Integer.parseInt(request.getParameter("id")));
        
        avisoDAO.delete(aviso.getId());
        return SUCCESS;
    }

    @SkipValidation
    public String form_upload_img() {
        //Debido a que implemento "ModelDriven" el parametro "id" es asignado a la propieda "id" del objeto evento, por lo que el
        //objeto HttpServletRequest ya no es requerido para obtener el valor de este parametro, es un proceso automático que realiza struts2 quizas usando inyección de dependecias.
        
        //HttpServletRequest request = (HttpServletRequest) ActionContext.getContext().get(ServletActionContext.HTTP_REQUEST);
        //aviso = avisoDAO.findBy(Integer.parseInt(request.getParameter("id")));
        
        aviso = avisoDAO.findBy(aviso.getId());
        return SUCCESS;
    }

    @SkipValidation
    public String uploadIMG() {
        try {
            aviso = avisoDAO.findBy(aviso.getId());
            String filePath = servletRequest.getRealPath("/img/otras_secciones/avisos");
            String fileName = "Avisos_" + aviso.getId() + this.fileUploadFileName.subSequence(this.fileUploadFileName.lastIndexOf("."), fileUploadFileName.length());
            aviso.setImg("img/otras_secciones/avisos/" + fileName);
            File fileToCreate = new File(filePath, fileName);
            FileUtils.copyFile(this.fileUpload, fileToCreate);
            addActionMessage("Imagen subida con éxito.");
        } catch (Exception e) {
            e.printStackTrace();
            addActionError(e.getMessage());

            return INPUT;
        }
        return SUCCESS;
    }

    @SkipValidation
    public String form_upload_pdf() {
        //Debido a que implemento "ModelDriven" el parametro "id" es asignado a la propieda "id" del objeto evento, por lo que el
        //objeto HttpServletRequest ya no es requerido para obtener el valor de este parametro, es un proceso automático que realiza struts2 quizas usando inyección de dependecias.
        
        //HttpServletRequest request = (HttpServletRequest) ActionContext.getContext().get(ServletActionContext.HTTP_REQUEST);
        //aviso = avisoDAO.findBy(Integer.parseInt(request.getParameter("id")));
        
        aviso = avisoDAO.findBy(aviso.getId());
        return SUCCESS;
    }

    @SkipValidation
    public String uploadPDF() {
        try {
            aviso = avisoDAO.findBy(aviso.getId());
            String filePath = servletRequest.getRealPath("/WEB-INF/doctos/otras_secciones/avisos");
            String fileName = "Avisos_" + aviso.getId() + this.fileUploadFileName.subSequence(this.fileUploadFileName.lastIndexOf("."), fileUploadFileName.length());
            aviso.setPdf("WEB-INF/doctos/otras_secciones/avisos/" + fileName);
            File fileToCreate = new File(filePath, fileName);
            FileUtils.copyFile(this.fileUpload, fileToCreate);
            addActionMessage("PDF subido con éxito.");
        } catch (Exception e) {
            e.printStackTrace();
            addActionError(e.getMessage());

            return INPUT;
        }
        return SUCCESS;
    }

    @Override
    public void validate() {
        if (aviso.getNombre().equals("")) {
            addActionError("El campo nombre dede tener una valor diferente de vacío");
        }
        if (aviso.getFecha_realizacion().equals("")) {
            addActionError("El campo fecha de realización dede tener una valor diferente de vacío");
        }
        if (aviso.getLink().equals("")) {
            addActionError("El campo link dede tener una valor diferente de vacío");
        }
    }

}