/**
 *
 * @author Roberto Eder Weiss Juárez
 */
package mx.edu.uttab.dao.xml.fichero;

import java.util.List;
import mx.edu.uttab.model.Fichero;

public interface FicheroDAO {

    public boolean saveOrUpdate(Fichero fichero);

    public List<Fichero> findAll();

    public Fichero findById(int id,String destino);

    public boolean delete(int id);
}
