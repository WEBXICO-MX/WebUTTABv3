/**
 *
 * @author Roberto Eder Weiss Juárez
 * @see {@link http://webxico.blogspot.mx/}
 */
package mx.edu.uttab.dao.xml.actividaduniversitaria;

import java.util.List;
import mx.edu.uttab.model.ActividadUniversitaria;

public interface ActividadUniversitariaDAO {

    public boolean saveOrUpdate(ActividadUniversitaria actividad);

    public List<ActividadUniversitaria> findAll();

    public List<ActividadUniversitaria> findAllActivos(boolean primario);

    public List<ActividadUniversitaria> findByAnioMes(int anio_fecha_realizacion, String mes_fecha_realizacion);
    
    public List<ActividadUniversitaria> findTop(int inicio, int fin);

    public ActividadUniversitaria findById(int id);

    public ActividadUniversitaria findByPrimaria();

    public boolean delete(int id);

    public int getMaxId();
}
