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
import mx.edu.uttab.dao.xml.mi_servicio.MiServicioDAO;
import mx.edu.uttab.dao.xml.mi_servicio.XMLMiServicioDAO;
import mx.edu.uttab.model.MiServicio;

@Path("/json/mis_servicios")
public class MiServicioService {

    List<MiServicio> mis_servicios = new ArrayList<>();
    MiServicio mi_servicio = new MiServicio();
    MiServicioDAO mi_servicioDAO = DAOFactory.getDAOFactory(DAOFactory.XML).getMiServicioDAO();

    @Context
    ServletContext context;

    @GET
    @Path("/get")
    @Produces("application/x-javascript")
    public JSONWithPadding getMiServiciosActivosInJSON(@QueryParam("callback") @DefaultValue("CBParamIsMissing") String jsoncallback) {
        String appRealPath = context.getRealPath("/");
        if (mi_servicioDAO instanceof XMLMiServicioDAO) {
            ((XMLMiServicioDAO) mi_servicioDAO).setXMLpath(appRealPath + "WEB-INF/mis_servicios.xml");
        }
        mis_servicios = mi_servicioDAO.findAll();
        return new JSONWithPadding(mis_servicios, jsoncallback);
    }

    @GET
    @Path("/get/{id}")
    @Produces("application/x-javascript")
    public JSONWithPadding getMiServicioInJSON(@QueryParam("callback") @DefaultValue("CBParamIsMissing") String jsoncallback, @PathParam("id") int id) {
        String appRealPath = context.getRealPath("/");
        if (mi_servicioDAO instanceof XMLMiServicioDAO) {
            ((XMLMiServicioDAO) mi_servicioDAO).setXMLpath(appRealPath + "WEB-INF\\mis_servicios.xml");
        }
        mi_servicio = mi_servicioDAO.findById(id);
        return new JSONWithPadding(mi_servicio, jsoncallback);
    }

}
