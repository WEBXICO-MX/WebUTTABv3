/**
 *
 * @author Roberto Eder Weiss Juárez
 * @see {@link http://webxico.blogspot.mx/}
 */
package mx.edu.uttab.dao.xml.aviso;

import java.util.List;
import mx.edu.uttab.model.Aviso;

public interface AvisoDAO {

    public boolean saveOrUpdate(Aviso aviso);

    public List<Aviso> findAll();

    public List<Aviso> findAllBy(boolean activo);
    
    public List<Aviso> findTop(int inicio, int fin);

    public Aviso findBy(int id);

    public boolean delete(int id);

    public int getMaxId();
}