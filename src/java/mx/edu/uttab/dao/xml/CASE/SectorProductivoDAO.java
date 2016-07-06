/**
 *
 * @author Roberto Eder Weiss Juárez
 * @see {@link http://webxico.blogspot.mx/}
 */
package mx.edu.uttab.dao.xml.CASE;

import java.util.List;
import mx.edu.uttab.model.CASE.SectorProductivo;

public interface SectorProductivoDAO {

    public List<SectorProductivo> findAll();

    public SectorProductivo findById(int id);

}