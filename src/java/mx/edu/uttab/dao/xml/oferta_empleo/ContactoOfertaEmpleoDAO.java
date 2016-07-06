/**
 *
 * @author Roberto Eder Weiss Juárez
 * @see {@link http://webxico.blogspot.mx/}
 */
package mx.edu.uttab.dao.xml.oferta_empleo;

import java.util.List;
import mx.edu.uttab.model.ContactoOfertaEmpleo;

public interface ContactoOfertaEmpleoDAO {

    public boolean saveOrUpdate(ContactoOfertaEmpleo contacto);

    public List<ContactoOfertaEmpleo> findAll();

    public ContactoOfertaEmpleo findById(int id);

    public boolean delete(int id);
}
