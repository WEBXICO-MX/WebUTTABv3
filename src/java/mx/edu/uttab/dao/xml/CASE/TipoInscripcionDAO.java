/**
 *
 * @author Roberto Eder Weiss Juárez
 * @see {@link http://webxico.blogspot.mx/}
 */
package mx.edu.uttab.dao.xml.CASE;

import java.util.List;
import mx.edu.uttab.model.CASE.TipoInscripcion;

public interface TipoInscripcionDAO {

    public List<TipoInscripcion> findAll();

    public TipoInscripcion findById(int id);

}