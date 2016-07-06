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
import mx.edu.uttab.dao.xml.evento.EventoDAO;
import mx.edu.uttab.dao.DAOFactory;
import mx.edu.uttab.dao.xml.evento.XMLEventoDAO;
import mx.edu.uttab.model.Evento;
import org.apache.commons.io.FileUtils;
import org.apache.struts2.ServletActionContext;
import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Result;
import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.interceptor.validation.SkipValidation;

public class EventoAction extends ActionSupport implements ModelDriven<Evento>, ServletRequestAware {

    private Evento evento = new Evento();
    private List<Evento> eventoList = new ArrayList<>();
    private final EventoDAO eventoDAO = DAOFactory.getDAOFactory(DAOFactory.XML).getEventoDAO();
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

    public EventoAction() {
        if (eventoDAO instanceof XMLEventoDAO) {
            ((XMLEventoDAO) eventoDAO).setXMLpath(ServletActionContext.getServletContext().getRealPath("/") + "WEB-INF/eventos.xml");
        }
    }

    @Override
    public Evento getModel() {
        return evento;
    }

    public Evento getEvento() {
        return evento;
    }

    public void setEvento(Evento evento) {
        this.evento = evento;
    }

    public List<Evento> getEventoList() {
        return eventoList;
    }

    public void setEventoList(List<Evento> eventoList) {
        this.eventoList = eventoList;
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

    @Action(value = "/viewEventoPDF", results = {
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

        /*
         HttpServletRequest request = (HttpServletRequest) ActionContext.getContext().get(ServletActionContext.HTTP_REQUEST);
         int id = Integer.parseInt(request.getParameter("id"));
         setContentType(ArrayContentType[3]);
         setContentDisposition("inline; filename=\"Evento_" + id + "\"");
         evento = eventoDAO.findById(id);
         */
        setContentType(ArrayContentType[3]);
        setContentDisposition("inline; filename=\"Evento_" + evento.getId() + "\"");
        evento = eventoDAO.findById(evento.getId());
        fileInputStream = new FileInputStream(new File(ServletActionContext.getServletContext().getRealPath("/") + evento.getPdf()));
        return SUCCESS;
    }

    @Action(value = "/viewEventoIMG", results = {
        @Result(name = "success", type = "stream",
                params = {"contentType", "${contentType}", "inputName", "fileInputStream",
                    "contentDisposition", "${contentDisposition}", "bufferSize", "1024"}),
        @Result(name = "error", location = "/jsp/error.jsp")
    })
    @SkipValidation
    public String viewIMG() throws Exception {
        //Debido a que implemento "ModelDriven" el parametro "id" es asignado a la propieda "id" del objeto evento y el parametro "num" es asigando a la propidad "num" que se encuentra en este action, por lo que el
        //objeto HttpServletRequest ya no es requerido para obtener los valores de estos parametros, es un proceso automático que realiza struts2 quizas usando inyección de dependecias.

        /*HttpServletRequest request = (HttpServletRequest) ActionContext.getContext().get(ServletActionContext.HTTP_REQUEST);
         int id = Integer.parseInt(request.getParameter("id"));
         int num = Integer.parseInt(request.getParameter("num"));
         String imagen = "";
         setContentType(ArrayContentType[4]);
         setContentDisposition("inline; filename=\"Evento_" + id + "\"");
         evento = eventoDAO.findById(id);*/
        String imagen = "";
        setContentType(ArrayContentType[4]);
        setContentDisposition("inline; filename=\"Evento_" + evento.getId() + "\"");
        evento = eventoDAO.findById(evento.getId());

        switch (num) {
            case 1:
                imagen = evento.getImg1();
                break;

            case 2:
                imagen = evento.getImg2();
                break;
            case 3:
                imagen = evento.getImg3();
                break;
            case 4:
                imagen = evento.getImg4();
                break;
            case 5:
                imagen = evento.getImg5();
                break;
            case 6:
                imagen = evento.getImg6();
                break;
        }
        fileInputStream = new FileInputStream(new File(ServletActionContext.getServletContext().getRealPath("/") + imagen));
        return SUCCESS;
    }

    @Override
    public String input() {
        eventoList = eventoDAO.findTop(1, 21);
        return SUCCESS;
    }

    public String saveOrUpdate() {
        boolean grabo = eventoDAO.saveOrUpdate(evento);
        if (!grabo) {
            addActionMessage("[ERROR] evento no guardado.");
            return ERROR;
        } else {
            addActionMessage("evento guardado con éxito.");
            eventoList = eventoDAO.findTop(1, 21);
            return SUCCESS;
        }
    }

    @SkipValidation
    public String edit() {
        //Debido a que implemento "ModelDriven" el parametro "id" es asignado a la propieda "id" del objeto evento, por lo que el
        //objeto HttpServletRequest ya no es requerido para obtener el valor de este parametro, es un proceso automático que realiza struts2 quizas usando inyección de dependecias.

        /*HttpServletRequest request = (HttpServletRequest) ActionContext.getContext().get(ServletActionContext.HTTP_REQUEST);
         evento = eventoDAO.findById(Integer.parseInt(request.getParameter("id")));*/
        evento = eventoDAO.findById(evento.getId());
        return SUCCESS;
    }

    @SkipValidation
    public String delete() {
        //Debido a que implemento "ModelDriven" el parametro "id" es asignado a la propieda "id" del objeto evento, por lo que el
        //objeto HttpServletRequest ya no es requerido para obtener el valor de este parametro, es un proceso automático que realiza struts2 quizas usando inyección de dependecias.

        /*HttpServletRequest request = (HttpServletRequest) ActionContext.getContext().get(ServletActionContext.HTTP_REQUEST);
         eventoDAO.delete(Integer.parseInt(request.getParameter("id")));*/
        eventoDAO.delete(evento.getId());
        return SUCCESS;
    }

    @SkipValidation
    public String form_upload_img() {
        //Desde /web/WEB-INF/jsp/admin/evento/input.jsp  hay un link que llama a una ventana modal y por ajax se le inyecta el contenido procedente del action "form_upload_img" mandandole como parametros "id" y "num".
        //<a href="javascript:void(0);" data-toggle="modal" data-remote="/WebUTTABv3/SistemasAdmin/eventos/form_upload_img.action?id=90&amp;num=1" data-target="#mUploadImagen">Cambiar imagen fondo</a>
        //Debido a que implemento "ModelDriven" el parametro "id" es asignado a la propieda "id" del objeto evento y el parametro "num" es asigando a la propidad "num" que se encuentra en este action, por lo que el
        //objeto HttpServletRequest ya no es requerido para obtener los valores de estos parametros, es un proceso automático que realiza struts2 quizas usando inyección de dependecias.

        // ANTES:
        //HttpServletRequest request = (HttpServletRequest) ActionContext.getContext().get(ServletActionContext.HTTP_REQUEST);
        //evento = eventoDAO.findById(Integer.parseInt(request.getParameter("id")));
        //num  = Integer.parseInt(request.getParameter("num"));
        evento = eventoDAO.findById(evento.getId());
        return SUCCESS;
    }

    @SkipValidation
    public String uploadIMG() {
        try {
            //Debido a que implemento "ModelDriven" el parametro "id" es asignado a la propieda "id" del objeto evento y el parametro "num" es asigando a la propidad "num" que se encuentra en este action, por lo que el
            //objeto HttpServletRequest ya no es requerido para obtener los valores de estos parametros, es un proceso automático que realiza struts2 quizas usando inyección de dependecias.

            //ANTES:
            //HttpServletRequest request = (HttpServletRequest) ActionContext.getContext().get(ServletActionContext.HTTP_REQUEST);
            //int num = Integer.parseInt(request.getParameter("num"));
            //evento = eventoDAO.findById(Integer.parseInt(request.getParameter("id")));
            evento = eventoDAO.findById(evento.getId());
            String tmp = "";
            String path = "img/eventos/" + (evento.getId() > 0 && evento.getId() < 10 ? "0" + evento.getId() : evento.getId());
            String filePath = servletRequest.getRealPath("") +path;
            this.fileName = String.valueOf(num) + this.fileUploadFileName.subSequence(this.fileUploadFileName.lastIndexOf("."), fileUploadFileName.length());
            switch (num) {
                case 1:
                    tmp = "imagen 1";
                    evento.setImg1(path + "/" + fileName);
                    break;
                case 2:
                    tmp = "imagen 2";
                    evento.setImg2(path + "/" + fileName);
                    break;
                case 3:
                    tmp = "imagen 3";
                    evento.setImg3(path + "/" + fileName);
                    break;
                case 4:
                    tmp = "imagen 4";
                    evento.setImg4(path + "/" + fileName);
                    break;
                case 5:
                    tmp = "imagen 5";
                    evento.setImg5(path + "/" + fileName);
                    break;
                case 6:
                    tmp = "imagen 6";
                    evento.setImg6(path + "/" + fileName);
                    break;
            }

            File fileToCreate = new File(filePath, fileName);
            FileUtils.copyFile(this.fileUpload, fileToCreate);
            addActionMessage(tmp + " subida con éxito.");
        } catch (Exception e) {
            addActionError(e.getMessage());

            return INPUT;
        }
        return SUCCESS;
    }

    @SkipValidation
    public String form_upload_pdf() {
        //Debido a que implemento "ModelDriven" el parametro "id" es asignado a la propieda "id" del objeto evento, por lo que el
        //objeto HttpServletRequest ya no es requerido para obtener el valor de este parametro, es un proceso automático que realiza struts2 quizas usando inyección de dependecias.
        //ANTES:
        //HttpServletRequest request = (HttpServletRequest) ActionContext.getContext().get(ServletActionContext.HTTP_REQUEST);
        //evento = eventoDAO.findById(Integer.parseInt(request.getParameter("id")));

        evento = eventoDAO.findById(evento.getId());
        return SUCCESS;
    }

    @SkipValidation
    public String uploadPDF() {
        try {
            evento = eventoDAO.findById(evento.getId());
            String filePath = servletRequest.getRealPath("/WEB-INF/doctos/eventos");
            this.fileName = String.valueOf(evento.getId()) + this.fileUploadFileName.subSequence(this.fileUploadFileName.lastIndexOf("."), fileUploadFileName.length());
            evento.setPdf("WEB-INF/doctos/eventos/" + fileName);
            File fileToCreate = new File(filePath, fileName);
            FileUtils.copyFile(this.fileUpload, fileToCreate);
            addActionMessage("PDF subido con éxito.");
        } catch (Exception e) {
            addActionError(e.getMessage());

            return INPUT;
        }
        return SUCCESS;
    }

    @Override
    public void validate() {
        if (evento.getNombre().equals("")) {
            addActionError("El campo nombre dede tener una valor diferente de vacío");
        }
        if (evento.getFecha_realizacion().equals("")) {
            addActionError("El campo fecha de realización dede tener una valor diferente de vacío");
        }
        if (evento.getLink().equals("")) {
            addActionError("El campo link dede tener una valor diferente de vacío");
        }
    }

}