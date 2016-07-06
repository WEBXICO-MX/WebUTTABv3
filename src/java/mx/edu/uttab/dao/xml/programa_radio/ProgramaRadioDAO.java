/**
 *
 * @author Roberto Eder Weiss Juárez
 * @see {@link http://webxico.blogspot.mx/}
 */
package mx.edu.uttab.dao.xml.programa_radio;

import java.util.List;
import mx.edu.uttab.model.ProgramaRadio;

public interface ProgramaRadioDAO {

    public boolean saveOrUpdate(ProgramaRadio gaceta);

    public List<ProgramaRadio> findAll();

    public ProgramaRadio findById(int id);

    public boolean delete(int id);

    public int getMaxId();

}