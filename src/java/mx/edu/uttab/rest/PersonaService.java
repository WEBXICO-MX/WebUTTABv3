/**
 *
 * @author Roberto Eder Weiss Juárez
 * @see {@link http://webxico.blogspot.mx/}
 */
package mx.edu.uttab.rest;

import com.sun.jersey.api.json.JSONWithPadding;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletContext;
import javax.ws.rs.DefaultValue;
import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.QueryParam;
import javax.ws.rs.core.Context;
import mx.edu.uttab.dao.DAOFactory;
import mx.edu.uttab.dao.xml.persona.PersonaDAO;
import mx.edu.uttab.dao.xml.persona.XMLPersonaDAO;
import mx.edu.uttab.model.Persona;

@Path("/json/personas")
public class PersonaService {

    List<Persona> personaList = new ArrayList<>();
    Persona persona = new Persona();
    PersonaDAO personaDAO = DAOFactory.getDAOFactory(DAOFactory.XML).getPersonaDAO();

    @Context
    ServletContext context;

    @GET
    @Path("/get/{id}")
    @Produces("application/x-javascript")
    public JSONWithPadding getPersonaByIDInJSON(@QueryParam("callback") @DefaultValue("CBParamIsMissing") String jsoncallback, @PathParam("id") int id) {
        String appRealPath = context.getRealPath("/");
        if (personaDAO instanceof XMLPersonaDAO) {
            ((XMLPersonaDAO) personaDAO).setXMLpath(appRealPath + "WEB-INF\\directorio.xml");
        }
        persona = personaDAO.findById(id);
        return new JSONWithPadding(persona, jsoncallback);
    }

    @GET
    @Path("/destino/get/{destino}")
    @Produces("application/x-javascript")
    public JSONWithPadding getPersonasByDestinoInJSON(@QueryParam("callback") @DefaultValue("CBParamIsMissing") String jsoncallback, @PathParam("destino") String destino) {
        String appRealPath = context.getRealPath("/");
        if (personaDAO instanceof XMLPersonaDAO) {
            ((XMLPersonaDAO) personaDAO).setXMLpath(appRealPath + "WEB-INF\\directorio.xml");
        }
        personaList = personaDAO.findAllByDestino(destino);
        return new JSONWithPadding(personaList, jsoncallback);
    }

}
