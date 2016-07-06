/**
 *
 * @author Roberto Eder Weiss Juárez
 * @see {@link http://webxico.blogspot.mx/}
 */
package mx.edu.uttab.dao.xml.CASE;

import java.util.List;
import mx.edu.uttab.model.CASE.TipoCapacitacion;

public interface TipoCapacitacionDAO {

    public List<TipoCapacitacion> findAll();

    public TipoCapacitacion findById(int id);

}