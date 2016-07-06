/**
 *
 * @author Roberto Eder Weiss Juárez
 * @see {@link http://webxico.blogspot.mx/}
 */
package mx.edu.uttab.dao.xml.calendarioeventos;

import java.util.List;
import mx.edu.uttab.model.CalendarioEventos;

public interface CalendarioEventosDAO {

    public boolean saveOrUpdate(CalendarioEventos calendario);

    public List<CalendarioEventos> findAll();

    public List<CalendarioEventos> findByDiaMesAnio(String dia_fecha_realizacion, String mes_fecha_realizacion, int anio_fecha_realizacion, boolean activo);
    
    public List<CalendarioEventos> findBySemana(String inicio,String fin);
    
    public List<CalendarioEventos> findByMes(String inicio_mes,String fin_mes);

    public CalendarioEventos findById(int id);

    public boolean delete(int id);
}
