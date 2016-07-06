/**
 *
 * @author Roberto Eder Weiss Juárez
 * @see {@link http://webxico.blogspot.mx/}
 */
package mx.edu.uttab.dao.xml;

import mx.edu.uttab.dao.DAOFactory;
import mx.edu.uttab.dao.xml.CASE.CalendarioCapacitacionDAO;
import mx.edu.uttab.dao.xml.CASE.CapacitacionDAO;
import mx.edu.uttab.dao.xml.CASE.RegistroDAO;
import mx.edu.uttab.dao.xml.CASE.SectorProductivoDAO;
import mx.edu.uttab.dao.xml.CASE.TipoCapacitacionDAO;
import mx.edu.uttab.dao.xml.CASE.TipoInscripcionDAO;
import mx.edu.uttab.dao.xml.CASE.XMLCalendarioCapacitacionDAO;
import mx.edu.uttab.dao.xml.CASE.XMLCapacitacionDAO;
import mx.edu.uttab.dao.xml.CASE.XMLRegistroDAO;
import mx.edu.uttab.dao.xml.CASE.XMLSectorProductivoDAO;
import mx.edu.uttab.dao.xml.CASE.XMLTipoCapacitacionDAO;
import mx.edu.uttab.dao.xml.CASE.XMLTipoInscripcionDAO;
import mx.edu.uttab.dao.xml.actividaduniversitaria.ActividadUniversitariaDAO;
import mx.edu.uttab.dao.xml.actividaduniversitaria.XMLActividadUniversitariaDAO;
import mx.edu.uttab.dao.xml.area.AreaDAO;
import mx.edu.uttab.dao.xml.area.XMLAreaDAO;
import mx.edu.uttab.dao.xml.aviso.AvisoDAO;
import mx.edu.uttab.dao.xml.aviso.XMLAvisoDAO;
import mx.edu.uttab.dao.xml.calendarioescolar.CalendarioEscolarDAO;
import mx.edu.uttab.dao.xml.calendarioescolar.XMLCalendarioEscolarDAO;
import mx.edu.uttab.dao.xml.calendarioeventos.CalendarioEventosDAO;
import mx.edu.uttab.dao.xml.calendarioeventos.XMLCalendarioEventosDAO;
import mx.edu.uttab.dao.xml.carrera.CarreraDAO;
import mx.edu.uttab.dao.xml.carrera.XMLCarreraDAO;
import mx.edu.uttab.dao.xml.contacto.ContactoDAO;
import mx.edu.uttab.dao.xml.contacto.XMLContactoDAO;
import mx.edu.uttab.dao.xml.division.DivisionDAO;
import mx.edu.uttab.dao.xml.division.XMLDivisionDAO;
import mx.edu.uttab.dao.xml.evento.EventoDAO;
import mx.edu.uttab.dao.xml.evento.XMLEventoDAO;
import mx.edu.uttab.dao.xml.fichero.FicheroDAO;
import mx.edu.uttab.dao.xml.fichero.XMLFicheroDAO;
import mx.edu.uttab.dao.xml.gaceta.GacetaDAO;
import mx.edu.uttab.dao.xml.gaceta.XMLGacetaDAO;
import mx.edu.uttab.dao.xml.materia.MateriaDAO;
import mx.edu.uttab.dao.xml.materia.XMLMateriaDAO;
import mx.edu.uttab.dao.xml.mi_servicio.MiServicioDAO;
import mx.edu.uttab.dao.xml.mi_servicio.XMLMiServicioDAO;
import mx.edu.uttab.dao.xml.oferta_empleo.ContactoOfertaEmpleoDAO;
import mx.edu.uttab.dao.xml.oferta_empleo.OfertaEmpleoDAO;
import mx.edu.uttab.dao.xml.oferta_empleo.XMLContactoOfertaEmpleoDAO;
import mx.edu.uttab.dao.xml.oferta_empleo.XMLOfertaEmpleoDAO;
import mx.edu.uttab.dao.xml.oferta_servicio.ContactoOfertaServicioDAO;
import mx.edu.uttab.dao.xml.oferta_servicio.OfertaServicioDAO;
import mx.edu.uttab.dao.xml.oferta_servicio.TipoOfertaServicioDAO;
import mx.edu.uttab.dao.xml.oferta_servicio.XMLContactoOfertaServicioDAO;
import mx.edu.uttab.dao.xml.oferta_servicio.XMLOfertaServicioDAO;
import mx.edu.uttab.dao.xml.oferta_servicio.XMLTipoOfertaServicioDAO;
import mx.edu.uttab.dao.xml.persona.Persona2DAO;
import mx.edu.uttab.dao.xml.persona.PersonaDAO;
import mx.edu.uttab.dao.xml.persona.XMLPersona2DAO;
import mx.edu.uttab.dao.xml.persona.XMLPersonaDAO;
import mx.edu.uttab.dao.xml.programa_radio.ProgramaRadioDAO;
import mx.edu.uttab.dao.xml.programa_radio.XMLProgramaRadioDAO;
import mx.edu.uttab.dao.xml.programacion_radio.ProgramacionRadioDAO;
import mx.edu.uttab.dao.xml.programacion_radio.XMLProgramacionRadioDAO;
import mx.edu.uttab.dao.xml.usuario.UsuarioDAO;
import mx.edu.uttab.dao.xml.usuario.XMLUsuarioDAO;
import org.jdom2.Document;

public class XMLDAOFactory extends DAOFactory {

    // method to create XML connections
    public static Document getDocument(String path) {
        Document doc = ConexionXML.getInstance().getDocument(path);
        return doc;
    }

    @Override
    public ActividadUniversitariaDAO getActividadUniversitariaDAO() {
        return new XMLActividadUniversitariaDAO();
    }

    @Override
    public GacetaDAO getGacetaDAO() {
        return new XMLGacetaDAO();
    }

    @Override
    public EventoDAO getEventoDAO() {
        return new XMLEventoDAO();
    }

    @Override
    public FicheroDAO getFicheroDAO() {
        return new XMLFicheroDAO();
    }

    @Override
    public AvisoDAO getAvisoDAO() {
        return new XMLAvisoDAO();
    }

    @Override
    public CalendarioEventosDAO getCalendarioEventosDAO() {
        return new XMLCalendarioEventosDAO();
    }

    @Override
    public DivisionDAO getDivisionDAO() {
        return new XMLDivisionDAO();
    }

    @Override
    public CarreraDAO getCarreraDAO() {
        return new XMLCarreraDAO();
    }

    @Override
    public MateriaDAO getMateriaDAO() {
        return new XMLMateriaDAO();
    }

    @Override
    public ContactoOfertaEmpleoDAO getContactoOfertaEmpleoDAO() {
        return new XMLContactoOfertaEmpleoDAO();
    }

    @Override
    public OfertaEmpleoDAO getOfertaEmpleoDAO() {
        return new XMLOfertaEmpleoDAO();
    }

    @Override
    public TipoOfertaServicioDAO getTipoOfertaServicioDAO() {
        return new XMLTipoOfertaServicioDAO();
    }

    @Override
    public OfertaServicioDAO getOfertaServicioDAO() {
        return new XMLOfertaServicioDAO();
    }

    @Override
    public PersonaDAO getPersonaDAO() {
        return new XMLPersonaDAO();
    }

    @Override
    public ContactoDAO getContactoDAO() {
        return new XMLContactoDAO();
    }

    @Override
    public ContactoOfertaServicioDAO getContactoOfertaServicioDAO() {
        return new XMLContactoOfertaServicioDAO();
    }

    @Override
    public AreaDAO getAreaDAO() {
        return new XMLAreaDAO();
    }

    @Override
    public Persona2DAO getPersona2DAO() {
        return new XMLPersona2DAO();
    }

    @Override
    public ProgramaRadioDAO getProgramaRadioDAO() {
        return new XMLProgramaRadioDAO();
    }

    @Override
    public ProgramacionRadioDAO getProgramacionRadioDAO() {
        return new XMLProgramacionRadioDAO();
    }

    @Override
    public UsuarioDAO getUsuarioDAO() {
        return new XMLUsuarioDAO();
    }

    @Override
    public MiServicioDAO getMiServicioDAO() {
        return new XMLMiServicioDAO();
    }

    @Override
    public CalendarioEscolarDAO getCalendarioEscolarDAO() {
        return new XMLCalendarioEscolarDAO();
    }

    @Override
    public TipoCapacitacionDAO getTipoCapacitacionDAO() {
        return new XMLTipoCapacitacionDAO();
    }

    @Override
    public CapacitacionDAO getCapacitacionDAO() {
        return new XMLCapacitacionDAO();
    }

    @Override
    public CalendarioCapacitacionDAO getCalendarioCapacitacionDAO() {
        return new XMLCalendarioCapacitacionDAO();
    }

    @Override
    public TipoInscripcionDAO getTipoInscripcioDAO() {
        return new XMLTipoInscripcionDAO();
    }

    @Override
    public RegistroDAO getRegistroDAO() {
        return new XMLRegistroDAO();
    }

    @Override
    public SectorProductivoDAO getSectorProductivoDAO() {
        return new XMLSectorProductivoDAO();
    }

    @Override
    public mx.edu.uttab.dao.xml.CASE.UsuarioDAO getCASEUsuarioDAO() {
        return new mx.edu.uttab.dao.xml.CASE.XMLUsuarioDAO();
    }

}