/**
 *
 * @author Roberto Eder Weiss Juárez
 * @see {@link http://webxico.blogspot.mx/}
 */
package mx.edu.uttab.dao.xml.persona;

import java.util.List;
import mx.edu.uttab.model.Persona;

public interface PersonaDAO {

    public boolean saveOrUpdate(Persona persona);

    public List<Persona> findAll();

    public List<Persona> findAllByDestino(String destino);

    public Persona findById(int id);

    public boolean delete(int id);

}
