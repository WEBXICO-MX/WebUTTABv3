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
import mx.edu.uttab.dao.xml.persona.Persona2DAO;
import mx.edu.uttab.dao.xml.persona.XMLPersona2DAO;
import mx.edu.uttab.model.Persona2;

@Path("/json/personas2")
public class Persona2Service {

    List<Persona2> personaList = new ArrayList<>();
    Persona2 persona = new Persona2();
    Persona2DAO personaDAO = DAOFactory.getDAOFactory(DAOFactory.XML).getPersona2DAO();

    @Context
    ServletContext context;

    @GET
    @Path("/get/{id}")
    @Produces("application/x-javascript")
    public JSONWithPadding getPersona2ByIDInJSON(@QueryParam("callback") @DefaultValue("CBParamIsMissing") String jsoncallback, @PathParam("id") int id) {
        String appRealPath = context.getRealPath("/");
        if (personaDAO instanceof XMLPersona2DAO) {
            ((XMLPersona2DAO) personaDAO).setXMLpath(appRealPath + "WEB-INF\\directorio2.xml");
        }
        persona = personaDAO.findById(id);
        return new JSONWithPadding(persona, jsoncallback);
    }

    @GET
    @Path("/area/get/{area}")
    @Produces("application/x-javascript")
    public JSONWithPadding getPersona2sByAreaInJSON(@QueryParam("callback") @DefaultValue("CBParamIsMissing") String jsoncallback, @PathParam("area") int area) {
        String appRealPath = context.getRealPath("/");
        if (personaDAO instanceof XMLPersona2DAO) {
            ((XMLPersona2DAO) personaDAO).setXMLpath(appRealPath + "WEB-INF\\directorio2.xml");
        }
        personaList = personaDAO.findAllByArea(area);
        return new JSONWithPadding(personaList, jsoncallback);
    }

}
