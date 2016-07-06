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
import mx.edu.uttab.dao.xml.carrera.CarreraDAO;
import mx.edu.uttab.dao.xml.carrera.XMLCarreraDAO;
import mx.edu.uttab.model.Carrera;

@Path("/json/carreras")
public class CarreraService {

    List<Carrera> carreraList = new ArrayList<>();
    Carrera carrera = new Carrera();
    CarreraDAO carreraDAO = DAOFactory.getDAOFactory(DAOFactory.XML).getCarreraDAO();

    @Context
    ServletContext context;

    @GET
    @Path("/get/{cve_carrera}")
    @Produces("application/x-javascript")
    public JSONWithPadding getCarreraByIDInJSON(@QueryParam("callback") @DefaultValue("CBParamIsMissing") String jsoncallback, @PathParam("cve_carrera") int cve_carrera) {
        String appRealPath = context.getRealPath("/");
        if (carreraDAO instanceof XMLCarreraDAO) {
            ((XMLCarreraDAO) carreraDAO).setXMLpath(appRealPath + "WEB-INF\\carreras.xml");
        }
        carrera = carreraDAO.findBy(cve_carrera);
        return new JSONWithPadding(carrera, jsoncallback);
    }

    @GET
    @Path("/get/{cve_division}/{continuidad}")
    @Produces("application/x-javascript")
    public JSONWithPadding getCarrerasByDivisionContinuidadInJSON(@QueryParam("callback") @DefaultValue("CBParamIsMissing") String jsoncallback, @PathParam("cve_division") int cve_division, @PathParam("continuidad") boolean continuidad) {
        String appRealPath = context.getRealPath("/");
        if (carreraDAO instanceof XMLCarreraDAO) {
            ((XMLCarreraDAO) carreraDAO).setXMLpath(appRealPath + "WEB-INF\\carreras.xml");
        }
        carreraList = carreraDAO.findAllByDivisionContinuidad(cve_division, continuidad);
        return new JSONWithPadding(carreraList, jsoncallback);
    }

    @GET
    @Path("/continuidad/get/{carrera_continuidad}")
    @Produces("application/x-javascript")
    public JSONWithPadding getCarrerasByCarreraContinuidadInJSON(@QueryParam("callback") @DefaultValue("CBParamIsMissing") String jsoncallback, @PathParam("carrera_continuidad") int cve_carrera) {
        String appRealPath = context.getRealPath("/");
        if (carreraDAO instanceof XMLCarreraDAO) {
            ((XMLCarreraDAO) carreraDAO).setXMLpath(appRealPath + "WEB-INF\\carreras.xml");
        }
        carreraList = carreraDAO.findAllByCarreraContinuidad(cve_carrera);
        return new JSONWithPadding(carreraList, jsoncallback);
    }

    @GET
    @Path("/sincontinuidad/get")
    @Produces("application/x-javascript")
    public JSONWithPadding getCarrerasSinContinuidadInJSON(@QueryParam("callback") @DefaultValue("CBParamIsMissing") String jsoncallback) {
        String appRealPath = context.getRealPath("/");
        if (carreraDAO instanceof XMLCarreraDAO) {
            ((XMLCarreraDAO) carreraDAO).setXMLpath(appRealPath + "WEB-INF\\carreras.xml");
        }
        carreraList = carreraDAO.findAllByCarrerasSinContinuidad();
        return new JSONWithPadding(carreraList, jsoncallback);
    }
}
