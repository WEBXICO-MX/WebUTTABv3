/**
 *
 * @author Roberto Eder Weiss Juárez
 * @see {@link http://webxico.blogspot.mx/}
 */
package mx.edu.uttab.dao.xml.carrera;

import java.util.List;
import mx.edu.uttab.model.Carrera;

public interface CarreraDAO {

    public boolean saveOrUpdate(Carrera division);

    public List<Carrera> findAll();

    public List<Carrera> findAllByActivo(boolean activo);

    public List<Carrera> findAllByDivisionContinuidad(int cve_division, boolean continuidad);
    
    public List<Carrera> findAllByCarrerasSinContinuidad();

    public List<Carrera> findAllByCarreraContinuidad(int cve_carrera);

    public Carrera findBy(int id);

    public boolean delete(int id);

}
