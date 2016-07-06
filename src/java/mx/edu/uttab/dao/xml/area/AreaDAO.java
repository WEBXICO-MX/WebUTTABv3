/**
 *
 * @author Roberto Eder Weiss Juárez
 * @see {@link http://webxico.blogspot.mx/}
 */
package mx.edu.uttab.dao.xml.area;

import java.util.List;
import mx.edu.uttab.model.Area;

public interface AreaDAO {

    public boolean saveOrUpdate(Area area);

    public List<Area> findAll();

    public Area findById(int id);

    public boolean delete(int id);

}
