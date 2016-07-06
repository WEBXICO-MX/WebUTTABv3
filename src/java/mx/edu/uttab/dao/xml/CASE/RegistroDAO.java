/**
 *
 * @author Roberto Eder Weiss Juárez
 * @see {@link http://webxico.blogspot.mx/}
 */
package mx.edu.uttab.dao.xml.CASE;

import java.util.List;
import mx.edu.uttab.model.CASE.Registro;

public interface RegistroDAO {

    public boolean saveOrUpdate(Registro inscripcion);

    public List<Registro> findAll();

    public List<Registro> findByStatus(int status);

    public Registro findById(int id);

    public int getMaxId();

}