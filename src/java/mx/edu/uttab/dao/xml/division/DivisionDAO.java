/**
 *
 * @author Roberto Eder Weiss Juárez
 * @see {@link http://webxico.blogspot.mx/}
 */
package mx.edu.uttab.dao.xml.division;

import java.util.List;
import mx.edu.uttab.model.Division;

public interface DivisionDAO {

    public boolean saveOrUpdate(Division division);

    public List<Division> findAll();

    public List<Division> findAllBy(boolean activo);

    public Division findBy(int id);

    public boolean delete(int id);
}
