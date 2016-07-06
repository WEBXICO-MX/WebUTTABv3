/**
 *
 * @author Roberto Eder Weiss Juárez
 * @see {@link http://webxico.blogspot.mx/}
 */
package mx.edu.uttab.dao.xml.CASE;

import java.util.List;
import mx.edu.uttab.model.CASE.CalendarioCapacitacion;

public interface CalendarioCapacitacionDAO {

    public CalendarioCapacitacion findById(int id);

    public List<CalendarioCapacitacion> findByCapacitacion(int capacitacion);
}