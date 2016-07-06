/**
 *
 * @author Roberto Eder Weiss Juárez
 * @see {@link http://webxico.blogspot.mx/}
 */
package mx.edu.uttab.action;

import static com.opensymphony.xwork2.Action.SUCCESS;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import mx.edu.uttab.dao.DAOFactory;
import mx.edu.uttab.dao.xml.gaceta.GacetaDAO;
import mx.edu.uttab.dao.xml.gaceta.XMLGacetaDAO;
import mx.edu.uttab.model.Gaceta;
import org.apache.commons.io.FileUtils;
import org.apache.struts2.ServletActionContext;
import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Result;
import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.interceptor.validation.SkipValidation;

public class GacetaAction extends ActionSupport implements ModelDriven<Gaceta>, ServletRequestAware {

    private Gaceta gaceta = new Gaceta();
    private List<Gaceta> gacetaList = new ArrayList<Gaceta>();
    private GacetaDAO gacetaDAO = DAOFactory.getDAOFactory(DAOFactory.XML).getGacetaDAO();

    private String fileName = "";
    private String contentType = "";
    private String contentDisposition = "";
    private InputStream fileInputStream;
    private final String[] ArrayContentType = {"audio/mpeg", "audio/wav", "audio/ogg", "application/pdf", "image/jpeg", "application/msword"};

    private File fileUpload;
    private String fileUploadContentType;
    private String fileUploadFileName;

    private HttpServletRequest servletRequest;

    public GacetaAction() {
        if (gacetaDAO instanceof XMLGacetaDAO) {
            ((XMLGacetaDAO) gacetaDAO).setXMLpath(ServletActionContext.getServletContext().getRealPath("/") + "WEB-INF/gacetas.xml");
        }
    }

    @Override
    public Gaceta getModel() {
        return gaceta;
    }

    public Gaceta getGaceta() {
        return gaceta;
    }

    public void setGaceta(Gaceta gaceta) {
        this.gaceta = gaceta;
    }

    public List<Gaceta> getGacetaList() {
        return gacetaList;
    }

    public void setGacetaList(List<Gaceta> gacetaList) {
        this.gacetaList = gacetaList;
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

    @Action(value = "/listGacetas", results = {
        @Result(name = "success", location = "/WEB-INF/jsp/otras_secciones/gaceta.jsp"),
        @Result(name = "error", location = "/WEB-INF/jsp/error.jsp")})
    public String list() {
        gacetaList = gacetaDAO.findAll();
        return SUCCESS;
    }

    @Action(value = "/listGacetasBy", results = {
        @Result(name = "success", location = "/WEB-INF/jsp/otras_secciones/gaceta_ajax.jsp"),
        @Result(name = "error", location = "/WEB-INF/jsp/error.jsp")})
    @SkipValidation
    public String listByMesAndActivo() {
        //Debido a que implemento "ModelDriven" el parametro "id" es asignado a la propieda "id" del objeto evento, por lo que el
        //objeto HttpServletRequest ya no es requerido para obtener el valor de este parametro, es un proceso automático que realiza struts2 quizas usando inyección de dependecias.

        /*HttpServletRequest request = (HttpServletRequest) ActionContext.getContext().get(ServletActionContext.HTTP_REQUEST);
         int anio = Integer.parseInt(request.getParameter("anio"));
         gacetaList = gacetaDAO.findByAnio(anio, false);*/
        gacetaList = gacetaDAO.findByAnio(Integer.parseInt(gaceta.getAnio()));
        return SUCCESS;
    }

    @Action(value = "/viewGacetaPDF", results = {
        @Result(name = "success", type = "stream",
                params = {"contentType", "${contentType}", "inputName", "fileInputStream",
                    "contentDisposition", "${contentDisposition}", "bufferSize", "1024"}),
        @Result(name = "error", location = "/WEB-INF/jsp/error.jsp")
    })
    @SkipValidation
    public String viewPDF() throws Exception {
        //Debido a que implemento "ModelDriven" el parametro "id" es asignado a la propieda "id" del objeto evento, por lo que el
        //objeto HttpServletRequest ya no es requerido para obtener el valor de este parametro, es un proceso automático que realiza struts2 quizas usando inyección de dependecias.

        /*HttpServletRequest request = (HttpServletRequest) ActionContext.getContext().get(ServletActionContext.HTTP_REQUEST);
         int id = Integer.parseInt(request.getParameter("id"));
         setContentType(ArrayContentType[3]);
         setContentDisposition("inline; filename=\"Gaceta_" + id + "\"");
         gaceta = gacetaDAO.findById(id);*/
        setContentType(ArrayContentType[3]);
        setContentDisposition("inline; filename=\"Gaceta_" + gaceta.getId() + "\"");
        gaceta = gacetaDAO.findById(gaceta.getId());
        fileInputStream = new FileInputStream(new File(ServletActionContext.getServletContext().getRealPath("/") + gaceta.getPdf()));
        return SUCCESS;
    }

    @Action(value = "/viewGacetaIMG", results = {
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
         setContentDisposition("inline; filename=\"Gaceta_" + id + "\"");
         gaceta = gacetaDAO.findById(id);*/
        setContentType(ArrayContentType[4]);
        setContentDisposition("inline; filename=\"Gaceta_" + gaceta.getId() + "\"");
        gaceta = gacetaDAO.findById(gaceta.getId());
        fileInputStream = new FileInputStream(new File(ServletActionContext.getServletContext().getRealPath("/") + gaceta.getImg()));
        return SUCCESS;
    }

    @Override
    public void setServletRequest(HttpServletRequest hsr) {
        this.servletRequest = hsr;
    }

    /*@Action(value = "/inputGaceta", results = {
     @Result(name = "success", location = "/WEB-INF/jsp/admin/gaceta/input.jsp"),
     @Result(name = "error", location = "/WEB-INF/jsp/admin/gaceta/input.jsp")})*/
    @Override
    public String input() {
        gacetaList = gacetaDAO.findTop(1, 21);
        return SUCCESS;
    }

    /*@Action(value = "/saveGaceta", results = {
     @Result(name = "success", location = "/WEB-INF/jsp/admin/gaceta/input.jsp"),
     @Result(name = "input", location = "/WEB-INF/jsp/admin/gaceta/input.jsp"),
     @Result(name = "error", location = "/WEB-INF/jsp/admin/gaceta/input.jsp")
     })*/
    public String saveOrUpdate() {
        boolean grabo = gacetaDAO.saveOrUpdate(gaceta);
        if (!grabo) {
            addActionMessage("[ERROR] Gaceta no guardada.");
            return ERROR;
        } else {
            addActionMessage("Gaceta guardada con éxito.");
            gacetaList = gacetaDAO.findTop(1, 21);
            return SUCCESS;
        }
    }

    /*@Action(value = "/editGaceta", results = {
     @Result(name = "success", location = "/WEB-INF/jsp/admin/gaceta/input.jsp"),
     @Result(name = "error", location = "/WEB-INF/jsp/admin/gaceta/input.jsp")})*/
    @SkipValidation
    public String edit() {
        //Debido a que implemento "ModelDriven" el parametro "id" es asignado a la propieda "id" del objeto evento, por lo que el
        //objeto HttpServletRequest ya no es requerido para obtener el valor de este parametro, es un proceso automático que realiza struts2 quizas usando inyección de dependecias.

        //HttpServletRequest request = (HttpServletRequest) ActionContext.getContext().get(ServletActionContext.HTTP_REQUEST);
        //gaceta = gacetaDAO.findById(Integer.parseInt(request.getParameter("id")));
        gaceta = gacetaDAO.findById(gaceta.getId());
        return SUCCESS;
    }

    @SkipValidation
    public String delete() {
        //Debido a que implemento "ModelDriven" el parametro "id" es asignado a la propieda "id" del objeto evento, por lo que el
        //objeto HttpServletRequest ya no es requerido para obtener el valor de este parametro, es un proceso automático que realiza struts2 quizas usando inyección de dependecias.

        //HttpServletRequest request = (HttpServletRequest) ActionContext.getContext().get(ServletActionContext.HTTP_REQUEST);
        //gacetaDAO.delete(Integer.parseInt(request.getParameter("id")));
        gacetaDAO.delete(gaceta.getId());
        return SUCCESS;
    }

    @SkipValidation
    public String form_upload_img() {
        //Debido a que implemento "ModelDriven" el parametro "id" es asignado a la propieda "id" del objeto evento, por lo que el
        //objeto HttpServletRequest ya no es requerido para obtener el valor de este parametro, es un proceso automático que realiza struts2 quizas usando inyección de dependecias.

        //HttpServletRequest request = (HttpServletRequest) ActionContext.getContext().get(ServletActionContext.HTTP_REQUEST);
        //gaceta = gacetaDAO.findById(Integer.parseInt(request.getParameter("id")));
        gaceta = gacetaDAO.findById(gaceta.getId());
        return SUCCESS;
    }

    /*@Action(value = "/uploadImgGaceta", results = {
     @Result(name = "success", location = "/WEB-INF/jsp/admin/gaceta/uploadIMG.jsp"),
     @Result(name = "input", location = "/WEB-INF/jsp/admin/gaceta/uploadIMG.jsp"),
     @Result(name = "error", location = "/WEB-INF/jsp/admin/gaceta/uploadIMG.jsp")},
     interceptorRefs = {
     @InterceptorRef(value = "fileUpload", params = {"maximumSize", "2097152", "allowedTypes", "image/png,image/jpeg,image/pjpeg"}),
     @InterceptorRef(value = "defaultStack")})*/
    @SkipValidation
    public String uploadIMG() {
        try {
            gaceta = gacetaDAO.findById(gaceta.getId());
            String filePath = servletRequest.getRealPath("/img/otras_secciones/gaceta");
            String fileName = "ejemplar" + gaceta.getId() + this.fileUploadFileName.subSequence(this.fileUploadFileName.lastIndexOf("."), fileUploadFileName.length());
            gaceta.setImg("img/otras_secciones/gaceta/" + fileName);
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
        //gaceta = gacetaDAO.findById(Integer.parseInt(request.getParameter("id")));
        gaceta = gacetaDAO.findById(gaceta.getId());
        return SUCCESS;
    }

    /*@Action(value = "/uploadImgGaceta", results = {
     @Result(name = "success", location = "/WEB-INF/jsp/admin/gaceta/uploadIMG.jsp"),
     @Result(name = "input", location = "/WEB-INF/jsp/admin/gaceta/uploadIMG.jsp"),
     @Result(name = "error", location = "/WEB-INF/jsp/admin/gaceta/uploadIMG.jsp")},
     interceptorRefs = {
     @InterceptorRef(value = "fileUpload", params = {"maximumSize", "2097152", "allowedTypes", "image/png,image/jpeg,image/pjpeg"}),
     @InterceptorRef(value = "defaultStack")})*/
    @SkipValidation
    public String uploadPDF() {
        try {
            gaceta = gacetaDAO.findById(gaceta.getId());
            String filePath = servletRequest.getRealPath("/WEB-INF/doctos/otras_secciones/gaceta");
            String fileName = "GACETA_" + gaceta.getId() + this.fileUploadFileName.subSequence(this.fileUploadFileName.lastIndexOf("."), fileUploadFileName.length());
            gaceta.setPdf("WEB-INF/doctos/otras_secciones/gaceta/" + fileName);
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
        if (gaceta.getFecha_ejemplar().equals("")) {
            addActionError("Debe seleccionar una fecha del ejemplar");
        }
    }
}