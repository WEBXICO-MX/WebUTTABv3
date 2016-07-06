/**
 *
 * @author Roberto Eder Weiss Juárez
 * @see {@link http://webxico.blogspot.mx/}
 */
package mx.edu.uttab.dao.xml.usuario;

import java.util.List;
import mx.edu.uttab.model.Usuario;

public interface UsuarioDAO {

    public boolean saveOrUpdate(Usuario area);

    public List<Usuario> findAll();

    public Usuario findBy(int id);

    public Usuario findBy(String login, String password);

    public boolean delete(int id);

    public int getMaxId();

}
