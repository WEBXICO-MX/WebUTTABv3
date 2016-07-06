/**
 *
 * @author Roberto Eder Weiss Juárez
 * @see {@link http://webxico.blogspot.mx/}
 */
package mx.edu.uttab.dao.xml.programacion_radio;

import java.util.List;
import mx.edu.uttab.model.ProgramacionRadio;

public interface ProgramacionRadioDAO {

    public boolean saveOrUpdate(ProgramacionRadio gaceta);

    public List<ProgramacionRadio> findAll();

    public List<ProgramacionRadio> findBy(int limite,String horario);

    public ProgramacionRadio findById(int id);

    public boolean delete(int id);

    public int getMaxId();
}
