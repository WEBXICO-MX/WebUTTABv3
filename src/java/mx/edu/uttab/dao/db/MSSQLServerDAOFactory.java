/**
 *
 * @author Roberto Eder Weiss Juárez
 * @see {@link http://webxico.blogspot.mx/}
 */
package mx.edu.uttab.dao.db;

import mx.edu.uttab.dao.xml.gaceta.GacetaDAO;
import mx.edu.uttab.dao.xml.fichero.FicheroDAO;
import mx.edu.uttab.dao.xml.evento.EventoDAO;
import mx.edu.uttab.dao.xml.aviso.AvisoDAO;
import mx.edu.uttab.dao.xml.actividaduniversitaria.ActividadUniversitariaDAO;
import java.sql.Connection;
import mx.edu.uttab.dao.DAOFactory;
import mx.edu.uttab.dao.xml.CASE.CalendarioCapacitacionDAO;
import mx.edu.uttab.dao.xml.CASE.CapacitacionDAO;
import mx.edu.uttab.dao.xml.CASE.RegistroDAO;
import mx.edu.uttab.dao.xml.CASE.SectorProductivoDAO;
import mx.edu.uttab.dao.xml.CASE.TipoCapacitacionDAO;
import mx.edu.uttab.dao.xml.CASE.TipoInscripcionDAO;
import mx.edu.uttab.dao.xml.area.AreaDAO;
import mx.edu.uttab.dao.xml.calendarioescolar.CalendarioEscolarDAO;
import mx.edu.uttab.dao.xml.calendarioeventos.CalendarioEventosDAO;
import mx.edu.uttab.dao.xml.carrera.CarreraDAO;
import mx.edu.uttab.dao.xml.contacto.ContactoDAO;
import mx.edu.uttab.dao.xml.division.DivisionDAO;
import mx.edu.uttab.dao.xml.materia.MateriaDAO;
import mx.edu.uttab.dao.xml.mi_servicio.MiServicioDAO;
import mx.edu.uttab.dao.xml.oferta_empleo.ContactoOfertaEmpleoDAO;
import mx.edu.uttab.dao.xml.oferta_empleo.OfertaEmpleoDAO;
import mx.edu.uttab.dao.xml.oferta_servicio.ContactoOfertaServicioDAO;
import mx.edu.uttab.dao.xml.oferta_servicio.OfertaServicioDAO;
import mx.edu.uttab.dao.xml.oferta_servicio.TipoOfertaServicioDAO;
import mx.edu.uttab.dao.xml.persona.Persona2DAO;
import mx.edu.uttab.dao.xml.persona.PersonaDAO;
import mx.edu.uttab.dao.xml.programa_radio.ProgramaRadioDAO;
import mx.edu.uttab.dao.xml.programacion_radio.ProgramacionRadioDAO;
import mx.edu.uttab.dao.xml.usuario.UsuarioDAO;

public class MSSQLServerDAOFactory extends DAOFactory {

    // method to create Cloudscape connections
    public static Connection createConnection() {
        // Use DRIVER and DBURL to create a connection
        // Recommend connection pool implementation/usage
        Connection conn = null;
        return conn;

    }

    @Override
    public ActividadUniversitariaDAO getActividadUniversitariaDAO() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public GacetaDAO getGacetaDAO() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public EventoDAO getEventoDAO() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public FicheroDAO getFicheroDAO() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public AvisoDAO getAvisoDAO() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public CalendarioEventosDAO getCalendarioEventosDAO() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public DivisionDAO getDivisionDAO() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public CarreraDAO getCarreraDAO() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public MateriaDAO getMateriaDAO() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public ContactoOfertaEmpleoDAO getContactoOfertaEmpleoDAO() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public OfertaEmpleoDAO getOfertaEmpleoDAO() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public TipoOfertaServicioDAO getTipoOfertaServicioDAO() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public OfertaServicioDAO getOfertaServicioDAO() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public PersonaDAO getPersonaDAO() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public ContactoDAO getContactoDAO() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public ContactoOfertaServicioDAO getContactoOfertaServicioDAO() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public AreaDAO getAreaDAO() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public Persona2DAO getPersona2DAO() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public ProgramaRadioDAO getProgramaRadioDAO() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public ProgramacionRadioDAO getProgramacionRadioDAO() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public UsuarioDAO getUsuarioDAO() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public MiServicioDAO getMiServicioDAO() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public CalendarioEscolarDAO getCalendarioEscolarDAO() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public TipoCapacitacionDAO getTipoCapacitacionDAO() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public CapacitacionDAO getCapacitacionDAO() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public CalendarioCapacitacionDAO getCalendarioCapacitacionDAO() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public TipoInscripcionDAO getTipoInscripcioDAO() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public RegistroDAO getRegistroDAO() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public SectorProductivoDAO getSectorProductivoDAO() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public mx.edu.uttab.dao.xml.CASE.UsuarioDAO getCASEUsuarioDAO() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

}
