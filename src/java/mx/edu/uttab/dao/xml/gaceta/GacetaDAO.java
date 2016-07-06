/**
 *
 * @author Roberto Eder Weiss Juárez
 * @see {@link http://webxico.blogspot.mx/}
 */

package mx.edu.uttab.dao.xml.gaceta;

import java.util.List;
import mx.edu.uttab.model.Gaceta;

public interface GacetaDAO {

    public boolean saveOrUpdate(Gaceta gaceta);

    public List<Gaceta> findAll();
    
    public List<Gaceta> findTop(int inicio, int fin);

    public Gaceta findById(int id);
    
    public Gaceta findUltima();
    
    public List<Gaceta>  findByAnio(int year);

    public boolean delete(int id);
    
    public int getMaxId();
}
