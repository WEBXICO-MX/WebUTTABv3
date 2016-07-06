/**
 *
 * @author Roberto Eder Weiss Juárez
 * @see {@link http://webxico.blogspot.mx/}
 */
package mx.edu.uttab.dao.xml.evento;

import java.util.List;
import mx.edu.uttab.model.Evento;

public interface EventoDAO {

    public boolean saveOrUpdate(Evento evento);

    public List<Evento> findAll();

    public List<Evento> findAllActivos();
    
    public List<Evento> findTop(int inicio, int fin);

    public Evento findById(int id);

    public boolean delete(int id);

    public int getMaxId();
}
