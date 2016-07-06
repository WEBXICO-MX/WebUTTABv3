/**
 *
 * @author Roberto Eder Weiss Juárez
 * @see {@link http://webxico.blogspot.mx/}
 */
package mx.edu.uttab.dao.xml.oferta_servicio;

import java.util.List;
import mx.edu.uttab.model.OfertaServicio;

public interface OfertaServicioDAO {

    public boolean saveOrUpdate(OfertaServicio oferta);

    public List<OfertaServicio> findAll();

    public List<OfertaServicio> findAllActivos();

    public List<OfertaServicio> findAllTipo(int tipo);

    public OfertaServicio findById(int id);

    public boolean delete(int id);
}
