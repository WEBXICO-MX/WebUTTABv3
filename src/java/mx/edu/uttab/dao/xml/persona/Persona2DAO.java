/**
 *
 * @author Roberto Eder Weiss Juárez
 * @see {@link http://webxico.blogspot.mx/}
 */
package mx.edu.uttab.dao.xml.persona;

import java.util.List;
import mx.edu.uttab.model.Persona2;

public interface Persona2DAO {

    public boolean saveOrUpdate(Persona2 persona);

    public List<Persona2> findAll();

    public List<Persona2> findAllByArea(int area);

    public Persona2 findById(int id);

    public boolean delete(int id);

}
