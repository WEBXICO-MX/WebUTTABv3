/**
 *
 * @author Roberto Eder Weiss Juárez
 * @see {@link http://webxico.blogspot.mx/}
 */
package mx.edu.uttab.action;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import mx.edu.uttab.dao.DAOFactory;
import mx.edu.uttab.dao.xml.usuario.UsuarioDAO;
import mx.edu.uttab.dao.xml.usuario.XMLUsuarioDAO;
import mx.edu.uttab.model.Usuario;
import org.apache.struts2.ServletActionContext;
import org.apache.struts2.interceptor.SessionAware;
import org.apache.struts2.interceptor.validation.SkipValidation;

public class UsuarioAction extends ActionSupport implements ModelDriven<Usuario>, SessionAware {

    private Usuario usuario = new Usuario();
    private List<Usuario> usuarioList = new ArrayList<>();
    private UsuarioDAO usuarioDAO = DAOFactory.getDAOFactory(DAOFactory.XML).getUsuarioDAO();

    private Map session;

    public UsuarioAction() {
        if (usuarioDAO instanceof XMLUsuarioDAO) {
            ((XMLUsuarioDAO) usuarioDAO).setXMLpath(ServletActionContext.getServletContext().getRealPath("/") + "WEB-INF/usuarios.xml");
        }
    }

    public Map getSession() {
        return this.session;
    }

    @Override
    public void setSession(Map<String, Object> map) {
        this.session = map;
    }

    @Override
    public Usuario getModel() {
        return this.usuario;
    }

    public Usuario getUsuario() {
        return this.usuario;
    }

    public void setUsuario(Usuario usuario) {
        this.usuario = usuario;
    }

    public List<Usuario> getUsuarioList() {
        return usuarioList;
    }

    public void setUsuarioList(List<Usuario> usuarioList) {
        this.usuarioList = usuarioList;
    }

    @Override
    @SkipValidation
    public String execute() throws Exception {
        this.session = ActionContext.getContext().getSession();
        if (this.session.get("id") != null) {
            return "logeado";
        } else {
            return SUCCESS;
        }
    }

    public String login() throws Exception {
        usuario = usuarioDAO.findBy(usuario.getLogin(), usuario.getPassword());
        if (usuario != null) {
            this.session = ActionContext.getContext().getSession();
            session.put("id", usuario.getId());
            session.put("nombre", usuario.getNombre());
            addActionMessage("[OK] Bienvenido " + usuario.getNombre());
            return SUCCESS;
        } else {
            addActionError("[ERROR] Acceso denegado");
            return ERROR;
        }
    }

    @SkipValidation
    public String logout() throws Exception {
        this.session = ActionContext.getContext().getSession();
        session.remove("id");
        session.remove("nombre");
        return SUCCESS;
    }

    @Override
    public void validate() {
        if (usuario.getLogin().equals("")) {
            addActionError("El campo login dede tener un valor diferente de vacío");
        }
        if (usuario.getPassword().equals("")) {
            addActionError("El campo password debe tener un valor diferente de vacío");
        }
    }

}
