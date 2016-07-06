/**
 *
 * @author Roberto Eder Weiss Juárez
 * @see {@link http://webxico.blogspot.mx/}
 */
package mx.edu.uttab.dao;

import mx.edu.uttab.dao.db.MSSQLServerDAOFactory;
import mx.edu.uttab.dao.xml.CASE.CalendarioCapacitacionDAO;
import mx.edu.uttab.dao.xml.CASE.CapacitacionDAO;
import mx.edu.uttab.dao.xml.CASE.RegistroDAO;
import mx.edu.uttab.dao.xml.CASE.SectorProductivoDAO;
import mx.edu.uttab.dao.xml.CASE.TipoCapacitacionDAO;
import mx.edu.uttab.dao.xml.CASE.TipoInscripcionDAO;
import mx.edu.uttab.dao.xml.XMLDAOFactory;
import mx.edu.uttab.dao.xml.actividaduniversitaria.ActividadUniversitariaDAO;
import mx.edu.uttab.dao.xml.area.AreaDAO;
import mx.edu.uttab.dao.xml.aviso.AvisoDAO;
import mx.edu.uttab.dao.xml.calendarioescolar.CalendarioEscolarDAO;
import mx.edu.uttab.dao.xml.calendarioeventos.CalendarioEventosDAO;
import mx.edu.uttab.dao.xml.carrera.CarreraDAO;
import mx.edu.uttab.dao.xml.contacto.ContactoDAO;
import mx.edu.uttab.dao.xml.division.DivisionDAO;
import mx.edu.uttab.dao.xml.evento.EventoDAO;
import mx.edu.uttab.dao.xml.fichero.FicheroDAO;
import mx.edu.uttab.dao.xml.gaceta.GacetaDAO;
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

public abstract class DAOFactory {

    public static final int XML = 1;
    public static final int MSSQLSERVER = 2;

    public abstract ActividadUniversitariaDAO getActividadUniversitariaDAO();

    public abstract GacetaDAO getGacetaDAO();

    public abstract EventoDAO getEventoDAO();

    public abstract FicheroDAO getFicheroDAO();

    public abstract AvisoDAO getAvisoDAO();

    public abstract CalendarioEventosDAO getCalendarioEventosDAO();

    public abstract DivisionDAO getDivisionDAO();

    public abstract CarreraDAO getCarreraDAO();

    public abstract MateriaDAO getMateriaDAO();

    public abstract ContactoOfertaEmpleoDAO getContactoOfertaEmpleoDAO();

    public abstract OfertaEmpleoDAO getOfertaEmpleoDAO();

    public abstract TipoOfertaServicioDAO getTipoOfertaServicioDAO();

    public abstract OfertaServicioDAO getOfertaServicioDAO();

    public abstract PersonaDAO getPersonaDAO();

    public abstract Persona2DAO getPersona2DAO();

    public abstract AreaDAO getAreaDAO();

    public abstract ContactoDAO getContactoDAO();

    public abstract ContactoOfertaServicioDAO getContactoOfertaServicioDAO();

    public abstract ProgramaRadioDAO getProgramaRadioDAO();

    public abstract ProgramacionRadioDAO getProgramacionRadioDAO();

    public abstract mx.edu.uttab.dao.xml.usuario.UsuarioDAO getUsuarioDAO();

    public abstract MiServicioDAO getMiServicioDAO();
    
    public abstract CalendarioEscolarDAO getCalendarioEscolarDAO();
    
    public abstract TipoCapacitacionDAO getTipoCapacitacionDAO();
    
    public abstract CapacitacionDAO getCapacitacionDAO();
    
    public abstract CalendarioCapacitacionDAO getCalendarioCapacitacionDAO();
    
    public abstract TipoInscripcionDAO getTipoInscripcioDAO();
    
    public abstract RegistroDAO getRegistroDAO();
    
    public abstract SectorProductivoDAO getSectorProductivoDAO();
    
    public abstract mx.edu.uttab.dao.xml.CASE.UsuarioDAO getCASEUsuarioDAO();

    public static DAOFactory getDAOFactory(
            int whichFactory) {

        switch (whichFactory) {
            case XML:
                return new XMLDAOFactory();
            case MSSQLSERVER:
                return new MSSQLServerDAOFactory();
            default:
                return null;
        }
    }
}