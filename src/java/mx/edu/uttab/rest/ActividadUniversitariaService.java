/**
 *
 * @author Roberto Eder Weiss Juárez
 * @see {@link http://webxico.blogspot.mx/}
 */
package mx.edu.uttab.rest;

import com.sun.jersey.api.json.JSONWithPadding;
import java.io.File;
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
import mx.edu.uttab.dao.xml.actividaduniversitaria.ActividadUniversitariaDAO;
import mx.edu.uttab.dao.xml.actividaduniversitaria.XMLActividadUniversitariaDAO;
import mx.edu.uttab.model.ActividadUniversitaria;

@Path("/json/actividadesuniversitarias")
public class ActividadUniversitariaService {

    List<ActividadUniversitaria> actividadList = new ArrayList<>();
    ActividadUniversitaria actividad = new ActividadUniversitaria();
    ActividadUniversitariaDAO actividadDAO = DAOFactory.getDAOFactory(DAOFactory.XML).getActividadUniversitariaDAO();
    String separator = File.separator;

    @Context
    ServletContext context;

    @GET
    @Path("/get")
    @Produces("application/x-javascript")
    public JSONWithPadding getActividadesUniversitariasInJSON(@QueryParam("callback") @DefaultValue("CBParamIsMissing") String jsoncallback) {
        String appRealPath = context.getRealPath("/");
        if (actividadDAO instanceof XMLActividadUniversitariaDAO) {
            ((XMLActividadUniversitariaDAO) actividadDAO).setXMLpath(appRealPath + "WEB-INF"+separator+"actividades_universitarias.xml");
        }

        actividadList = actividadDAO.findAllActivos(true);
        return new JSONWithPadding(actividadList, jsoncallback);
    }

    @GET
    @Path("/get/{id}")
    @Produces("application/x-javascript")
    public JSONWithPadding getActividadUniversitariaInJSON(@QueryParam("callback") @DefaultValue("CBParamIsMissing") String jsoncallback, @PathParam("id") int actividadId) {
        String appRealPath = context.getRealPath("/");
        if (actividadDAO instanceof XMLActividadUniversitariaDAO) {
            ((XMLActividadUniversitariaDAO) actividadDAO).setXMLpath(appRealPath + "WEB-INF"+separator+"actividades_universitarias.xml");
        }

        actividad = actividadDAO.findById(actividadId);
        return new JSONWithPadding(actividad, jsoncallback);
    }

}
