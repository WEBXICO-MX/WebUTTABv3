/**
 *
 * @author Roberto Eder Weiss Juárez
 * @see {@link http://webxico.blogspot.mx/}
 */
package mx.edu.uttab.dao.xml.contacto;

import java.util.List;
import mx.edu.uttab.model.Contacto;

public interface ContactoDAO {

    public List<Contacto> findAll();
    
    public List<Contacto> findAllActivos();

    public Contacto findById(int id);

}
