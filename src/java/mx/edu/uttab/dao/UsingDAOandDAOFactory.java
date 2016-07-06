/**
 *
 * @author Roberto Eder Weiss Juárez
 */
package mx.edu.uttab.dao;

import mx.edu.uttab.dao.xml.CASE.CalendarioCapacitacionDAO;
import mx.edu.uttab.dao.xml.CASE.RegistroDAO;
import mx.edu.uttab.dao.xml.CASE.TipoInscripcionDAO;
import mx.edu.uttab.dao.xml.CASE.XMLCapacitacionDAO;
import mx.edu.uttab.dao.xml.CASE.XMLRegistroDAO;
import mx.edu.uttab.dao.xml.CASE.XMLTipoInscripcionDAO;
import mx.edu.uttab.model.CASE.Registro;

public class UsingDAOandDAOFactory {

    public static void main(String args[]) {
        /*String[] t = System.getProperty("java.class.path").split(":");
        String XMLpath= t[0];
        XMLpath = XMLpath.substring(0,XMLpath.length()-15);
        System.out.println(XMLpath);
        
        CalendarioCapacitacionDAO c_capacitacionDAO = DAOFactory.getDAOFactory(DAOFactory.XML).getCalendarioCapacitacionDAO();
        TipoInscripcionDAO t_inscripcionDAO = DAOFactory.getDAOFactory(DAOFactory.XML).getTipoInscripcioDAO();
        RegistroDAO inscripcionDAO = DAOFactory.getDAOFactory(DAOFactory.XML).getInscripcioDAO();
        
        ((XMLCapacitacionDAO) c_capacitacionDAO).setXMLpath(XMLpath + "WEB-INF/case_calendario_capacitaciones.xml");
        ((XMLTipoInscripcionDAO) t_inscripcionDAO).setXMLpath(XMLpath + "WEB-INF/case_tipos_inscripcion.xml");
        ((XMLRegistroDAO) inscripcionDAO).setXMLpath(XMLpath + "WEB-INF/case_inscripciones.xml");

         Registro inscripcion = new Registro();
         inscripcion.setId(1);
         inscripcion.setCalendario_capacitacion(c_capacitacionDAO.findById(1));
         inscripcion.setTipo_inscripcion(t_inscripcionDAO.findById(1));
         inscripcion.setNombre("Roberto Eder");
         inscripcion.setApellido_pat("Weiss");
         inscripcion.setApellido_mat("Juárez");
         inscripcion.setFecha_nacimiento("13/04/1987");
         inscripcion.setSexo("Masculino");
         inscripcion.setEmail("weiss.uttab@gmail.com");
         inscripcion.setTel("3506821");
         inscripcion.setCel("9931574057");
         inscripcion.setFecha_inscripcion("14/09/2015");
         inscripcion.setActivo(true);
         inscripcionDAO.saveOrUpdate(inscripcion);*/
         String text = "";
        

    }
}
