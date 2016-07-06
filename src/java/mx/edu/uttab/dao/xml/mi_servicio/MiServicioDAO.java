/**
 *
 * @author Roberto Eder Weiss Juárez
 * @see {@link http://webxico.blogspot.mx/}
 */
package mx.edu.uttab.dao.xml.mi_servicio;

import java.util.List;
import mx.edu.uttab.model.MiServicio;

public interface MiServicioDAO {

    public List<MiServicio> findAll();

    public MiServicio findById(int id);

}
