/**
 *
 * @author Roberto Eder Weiss Juárez
 * @see {@link http://webxico.blogspot.mx/}
 */
package mx.edu.uttab.dao.xml.oferta_empleo;

import java.util.List;
import mx.edu.uttab.model.OfertaEmpleo;

public interface OfertaEmpleoDAO {

    public boolean saveOrUpdate(OfertaEmpleo oferta);

    public List<OfertaEmpleo> findAll();

    public List<OfertaEmpleo> findAllActivos();

    public List<OfertaEmpleo> findByDivision(String division);

    public OfertaEmpleo findById(int id);

    public boolean delete(int id);
}
