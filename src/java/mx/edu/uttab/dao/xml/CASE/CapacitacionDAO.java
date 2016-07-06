/**
 *
 * @author Roberto Eder Weiss Juárez
 * @see {@link http://webxico.blogspot.mx/}
 */
package mx.edu.uttab.dao.xml.CASE;

import java.util.List;
import mx.edu.uttab.model.CASE.Capacitacion;

public interface CapacitacionDAO {

    public List<Capacitacion> findAll();

    public Capacitacion findById(int id);
    
    public Capacitacion findByNombre(String nombre);
    
    public List<Capacitacion> findByTipo(int tipo);

}
