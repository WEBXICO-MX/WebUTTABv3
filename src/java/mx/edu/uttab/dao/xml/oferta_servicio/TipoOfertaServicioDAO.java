/**
 *
 * @author Roberto Eder Weiss Juárez
 * @see {@link http://webxico.blogspot.mx/}
 */
package mx.edu.uttab.dao.xml.oferta_servicio;

import java.util.List;
import mx.edu.uttab.model.TipoOfertaServicio;

public interface TipoOfertaServicioDAO {

    public boolean saveOrUpdate(TipoOfertaServicio tipo);

    public List<TipoOfertaServicio> findAll();

    public List<TipoOfertaServicio> findAllActivos();

    public TipoOfertaServicio findById(int id);

    public boolean delete(int id);
}
