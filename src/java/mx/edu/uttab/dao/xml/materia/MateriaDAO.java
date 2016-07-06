/**
 *
 * @author Roberto Eder Weiss Juárez
 * @see {@link http://webxico.blogspot.mx/}
 */
package mx.edu.uttab.dao.xml.materia;

import java.util.List;
import mx.edu.uttab.model.Materia;

public interface MateriaDAO {

    public boolean saveOrUpdate(Materia materia);

    public List<Materia> findAll();

    public List<Materia> findAllByCarreraCuatrimestre(int cve_carrera, int cuatrimestre);

    public Materia findByCarreraCuatrimestreNombre(int cve_carrera, int cuatrimestre,String nombre);

    public boolean delete(int id);
}
