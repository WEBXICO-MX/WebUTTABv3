/**
 *
 * @author Roberto Eder Weiss Juárez
 * @see {@link http://webxico.blogspot.mx/}
 */
package mx.edu.uttab.dao.xml.calendarioescolar;

import java.util.List;
import mx.edu.uttab.model.CalendarioEscolar;

public interface CalendarioEscolarDAO {

    public List<CalendarioEscolar> findAll();

}