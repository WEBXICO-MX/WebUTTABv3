/**
 *
 * @author Roberto Eder Weiss Juárez
 * @see {@link http://webxico.blogspot.mx/}
 */
package mx.edu.uttab.dao.xml.oferta_servicio;

import java.util.List;
import mx.edu.uttab.model.ContactoOfertaServicio;

public interface ContactoOfertaServicioDAO {

    public boolean saveOrUpdate(ContactoOfertaServicio contacto);

    public List<ContactoOfertaServicio> findAll();
    
    public List<ContactoOfertaServicio> findByTipo(int tipo);

    public ContactoOfertaServicio findById(int id);

    public boolean delete(int id);
}
