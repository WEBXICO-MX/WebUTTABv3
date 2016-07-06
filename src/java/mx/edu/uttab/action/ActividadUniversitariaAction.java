/**
 *
 * @author Roberto Eder Weiss Juárez
 * @see {@link http://webxico.blogspot.mx/}
 */

package mx.edu.uttab.action;

import static com.opensymphony.xwork2.Action.INPUT;
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
import mx.edu.uttab.dao.xml.actividaduniversitaria.ActividadUniversitariaDAO;
import mx.edu.uttab.dao.DAOFactory;
import mx.edu.uttab.dao.xml.actividaduniversitaria.XMLActividadUniversitariaDAO;
import mx.edu.uttab.model.ActividadUniversitaria;
import org.apache.commons.io.FileUtils;
import org.apache.struts2.ServletActionContext;
import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Result;
import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.interceptor.validation.SkipValidation;

public class ActividadUniversitariaAction extends ActionSupport implements ModelDriven<ActividadUniversitaria>, ServletRequestAware {

    private ActividadUniversitaria actividad = new ActividadUniversitaria();
    private List<ActividadUniversitaria> actividadList = new ArrayList<ActividadUniversitaria>();
    private ActividadUniversitariaDAO actividadDAO = DAOFactory.getDAOFactory(DAOFactory.XML).getActividadUniversitariaDAO();
    private String fileName = "";
    private String contentType = "";
    private String contentDisposition = "";
    private InputStream fileInputStream;
    private final String[] ArrayContentType = {"audio/mpeg", "audio/wav", "audio/ogg", "application/pdf", "image/jpeg", "application/msword"};

    private File fileUpload;
    private String fileUploadContentType;
    private String fileUploadFileName;

    private HttpServletRequest servletRequest;
    private int num;

    public ActividadUniversitariaAction() {
        if (actividadDAO instanceof XMLActividadUniversitariaDAO) {
            ((XMLActividadUniversitariaDAO) actividadDAO).setXMLpath(ServletActionContext.getServletContext().getRealPath("/") + "WEB-INF/actividades_universitarias.xml");
        }
    }

    @Override
    public ActividadUniversitaria getModel() {
        return actividad;
    }

    public ActividadUniversitaria getActividad() {
        return actividad;
    }

    public void setActividad(ActividadUniversitaria actividad) {
        this.actividad = actividad;
    }

    public List<ActividadUniversitaria> getActividadList() {
        return actividadList;
    }

    public void setActividadList(List<ActividadUniversitaria> actividadList) {
        this.actividadList = actividadList;
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

    public int getNum() {
        return num;
    }

    public void setNum(int num) {
        this.num = num;
    }

    @Override
    public void setServletRequest(HttpServletRequest hsr) {
        this.servletRequest = hsr;
    }

    @Action(value = "/listActividadesUniversitariasBy", results = {
        @Result(name = "success", location = "/WEB-INF/jsp/otras_secciones/actividades_universitarias_anteriores_ajax.jsp"),
        @Result(name = "error", location = "/WEB-INF/jsp/error.jsp")})
    @SkipValidation
    public String listByMes() {
        HttpServletRequest request = (HttpServletRequest) ActionContext.getContext().get(ServletActionContext.HTTP_REQUEST);
        String mes = request.getParameter("mes");
        int anio = Integer.parseInt(request.getParameter("anio"));
        actividadList = actividadDAO.findByAnioMes(anio,mes);
        return SUCCESS;
    }

    @Action(value = "/viewActividadUniversitariaPDF", results = {
        @Result(name = "success", type = "stream",
                params = {"contentType", "${contentType}", "inputName", "fileInputStream",
                    "contentDisposition", "${contentDisposition}", "bufferSize", "1024"}),
        @Result(name = "error", location = "/WEB-INF/jsp/error.jsp"),
        @Result(name = "input", location = "/WEB-INF/jsp/error.jsp")
    })
    @SkipValidation
    public String viewPDF() throws Exception {
        //Debido a que implemento "ModelDriven" el parametro "id" es asignado a la propieda "id" del objeto actividad, por lo que el
        //objeto HttpServletRequest ya no es requerido para obtener el valor de este parametro, es un proceso automático que realiza struts2 quizas usando inyección de dependecias.

        /*HttpServletRequest request = (HttpServletRequest) ActionContext.getContext().get(ServletActionContext.HTTP_REQUEST);
         int id = Integer.parseInt(request.getParameter("id"));
         setContentType(ArrayContentType[3]);
         setContentDisposition("inline; filename=\"ActividadUniversitaria_" + id + "\"");
         actividad = actividadDAO.findById(id);*/
        setContentType(ArrayContentType[3]);
        setContentDisposition("inline; filename=\"ActividadUniversitaria_" + actividad.getId() + "\"");
        actividad = actividadDAO.findById(actividad.getId());

        fileInputStream = new FileInputStream(new File(ServletActionContext.getServletContext().getRealPath("/") + actividad.getPdf()));
        return SUCCESS;
    }

    @Action(value = "/viewActividadUniversitariaIMG", results = {
        @Result(name = "success", type = "stream",
                params = {"contentType", "${contentType}", "inputName", "fileInputStream",
                    "contentDisposition", "${contentDisposition}", "bufferSize", "1024"}),
        @Result(name = "error", location = "/jsp/error.jsp")
    })
    @SkipValidation
    public String viewIMG() throws Exception {
        //Debido a que implemento "ModelDriven" el parametro "id" es asignado a la propieda "id" del objeto actividad, por lo que el
        //objeto HttpServletRequest ya no es requerido para obtener el valor de este parametro, es un proceso automático que realiza struts2 quizas usando inyección de dependecias.

        /*HttpServletRequest request = (HttpServletRequest) ActionContext.getContext().get(ServletActionContext.HTTP_REQUEST);
         int id = Integer.parseInt(request.getParameter("id"));
         setContentType(ArrayContentType[4]);
         setContentDisposition("inline; filename=\"ActividadUniversitaria_" + id + "\"");
         actividad = actividadDAO.findById(id);*/
        String imagen = "";
        setContentType(ArrayContentType[4]);
        setContentDisposition("inline; filename=\"ActividadUniversitaria_" + actividad.getId() + "\"");
        actividad = actividadDAO.findById(actividad.getId());

        switch (num) {
            case 1:
                imagen = actividad.getImg();
                break;

            case 2:
                imagen = actividad.getImg_movil();
                break;
            case 3:
                imagen = actividad.getImg_movil1();
                break;
            default:
                imagen = actividad.getImg();
                break;
        }

        fileInputStream = new FileInputStream(new File(ServletActionContext.getServletContext().getRealPath("/") + imagen));
        return SUCCESS;
    }

    @Override
    public String input() {
        actividadList = actividadDAO.findTop(1, 21);
        return SUCCESS;
    }

    public String saveOrUpdate() {
        boolean grabo = actividadDAO.saveOrUpdate(actividad);
        if (!grabo) {
            addActionMessage("[ERROR] actividad universitaria no guardada.");
            return ERROR;
        } else {
            addActionMessage("actividad universitaria guardada con éxito.");
            actividadList = actividadDAO.findTop(1, 21);
            return SUCCESS;
        }
    }

    @SkipValidation
    public String edit() {
        //Debido a que implemento "ModelDriven" el parametro "id" es asignado a la propieda "id" del objeto actividad, por lo que el
        //objeto HttpServletRequest ya no es requerido para obtener el valor de este parametro, es un proceso automático que realiza struts2 quizas usando inyección de dependecias.

        /*HttpServletRequest request = (HttpServletRequest) ActionContext.getContext().get(ServletActionContext.HTTP_REQUEST);
         actividad = actividadDAO.findById(Integer.parseInt(request.getParameter("id")));*/
        actividad = actividadDAO.findById(actividad.getId());
        return SUCCESS;
    }

    @SkipValidation
    public String delete() {
        //Debido a que implemento "ModelDriven" el parametro "id" es asignado a la propieda "id" del objeto actividad, por lo que el
        //objeto HttpServletRequest ya no es requerido para obtener el valor de este parametro, es un proceso automático que realiza struts2 quizas usando inyección de dependecias.

        /*HttpServletRequest request = (HttpServletRequest) ActionContext.getContext().get(ServletActionContext.HTTP_REQUEST);
         actividadDAO.delete(Integer.parseInt(request.getParameter("id")));*/
        actividadDAO.delete(actividad.getId());
        return SUCCESS;
    }

    @SkipValidation
    public String form_upload_img() {
        //Desde /web/WEB-INF/jsp/admin/actividad/input.jsp  hay un link que llama a una ventana modal y por ajax se le inyecta el contenido procedente del action "form_upload_img" mandandole como parametros "id" y "num".
        //<a href="javascript:void(0);" data-toggle="modal" data-remote="/WebUTTABv3/SistemasAdmin/actividads/form_upload_img.action?id=90&amp;num=1" data-target="#mUploadImagen">Cambiar imagen fondo</a>
        //Debido a que implemento "ModelDriven" el parametro "id" es asignado a la propieda "id" del objeto actividad y el parametro "num" es asigando a la propidad "num" que se encuentra en este action, por lo que el
        //objeto HttpServletRequest ya no es requerido para obtener los valores de estos parametros, es un proceso automático que realiza struts2 quizas usando inyección de dependecias.

        // ANTES:
        //HttpServletRequest request = (HttpServletRequest) ActionContext.getContext().get(ServletActionContext.HTTP_REQUEST);
        //actividad = actividadDAO.findById(Integer.parseInt(request.getParameter("id")));
        //num  = Integer.parseInt(request.getParameter("num"));
        actividad = actividadDAO.findById(actividad.getId());
        return SUCCESS;
    }

    @SkipValidation
    public String uploadIMG() {
        try {
            //Debido a que implemento "ModelDriven" el parametro "id" es asignado a la propieda "id" del objeto actividad y el parametro "num" es asigando a la propidad "num" que se encuentra en este action, por lo que el
            //objeto HttpServletRequest ya no es requerido para obtener los valores de estos parametros, es un proceso automático que realiza struts2 quizas usando inyección de dependecias.

            //ANTES:
            //HttpServletRequest request = (HttpServletRequest) ActionContext.getContext().get(ServletActionContext.HTTP_REQUEST);
            //int num = Integer.parseInt(request.getParameter("num"));
            //actividad = actividadDAO.findById(Integer.parseInt(request.getParameter("id")));
            String tmp = "";
            String path = "";
            String filePath = "";
            String fileName = "";

            actividad = actividadDAO.findById(actividad.getId());

            if (num == 1)//imagen web
            {
                path = "/img/actividades_uni";
                fileName = String.valueOf(actividad.getId()) + this.fileUploadFileName.subSequence(this.fileUploadFileName.lastIndexOf("."), fileUploadFileName.length());
            } else if (num == 2)// imagenes app 1
            {
                path = "/img/movil/android/actividades_universitarias";
                fileName = String.valueOf(actividad.getId()) + "_m" + this.fileUploadFileName.subSequence(this.fileUploadFileName.lastIndexOf("."), fileUploadFileName.length());
            } else// imagenes app 2
            {
                path = "/img/movil/android/actividades_universitarias";
                fileName = String.valueOf(actividad.getId()) + "_m1" + this.fileUploadFileName.subSequence(this.fileUploadFileName.lastIndexOf("."), fileUploadFileName.length());
            }

            filePath = servletRequest.getRealPath(path);

            switch (num) {
                case 1:
                    tmp = "imagen web";
                    actividad.setImg(path + "/" + fileName);
                    break;
                case 2:
                    tmp = "imagen app 1";
                    actividad.setImg_movil(path + "/" + fileName);
                    break;
                case 3:
                    tmp = "imagen app2";
                    actividad.setImg_movil1(path + "/" + fileName);
                    break;
            }

            File fileToCreate = new File(filePath, fileName);
            FileUtils.copyFile(this.fileUpload, fileToCreate);
            addActionMessage(tmp + " subida con éxito.");
        } catch (Exception e) {
            e.printStackTrace();
            addActionError(e.getMessage());

            return INPUT;
        }
        return SUCCESS;
    }

    @SkipValidation
    public String form_upload_pdf() {
        //Debido a que implemento "ModelDriven" el parametro "id" es asignado a la propieda "id" del objeto actividad, por lo que el
        //objeto HttpServletRequest ya no es requerido para obtener el valor de este parametro, es un proceso automático que realiza struts2 quizas usando inyección de dependecias.
        //ANTES:
        //HttpServletRequest request = (HttpServletRequest) ActionContext.getContext().get(ServletActionContext.HTTP_REQUEST);
        //actividad = actividadDAO.findById(Integer.parseInt(request.getParameter("id")));

        actividad = actividadDAO.findById(actividad.getId());
        return SUCCESS;
    }

    @SkipValidation
    public String uploadPDF() {
        try {
            actividad = actividadDAO.findById(actividad.getId());
            String filePath = servletRequest.getRealPath("/WEB-INF/doctos/actividades_uni");
            String fileName = String.valueOf(actividad.getId()) + this.fileUploadFileName.subSequence(this.fileUploadFileName.lastIndexOf("."), fileUploadFileName.length());
            actividad.setPdf("WEB-INF/doctos/actividades_uni/" + fileName);
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
        if (actividad.getNombre().equals("")) {
            addActionError("El campo nombre dede tener una valor diferente de vacío");
        }
        if (actividad.getText_preview().equals("")) {
            addActionError("El campo text preview dede tener una valor diferente de vacío");
        }
        if (actividad.getText_completo().equals("")) {
            addActionError("El campo text completo dede tener una valor diferente de vacío");
        }
        if (actividad.getFecha_realizacion().equals("")) {
            addActionError("El campo fecha de realización dede tener una valor diferente de vacío");
        }
        if (actividad.getLink().equals("")) {
            addActionError("El campo link dede tener una valor diferente de vacío");
        }
    }

}