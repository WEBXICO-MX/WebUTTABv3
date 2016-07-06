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
import mx.edu.uttab.dao.xml.oferta_servicio.OfertaServicioDAO;
import mx.edu.uttab.dao.xml.oferta_servicio.XMLOfertaServicioDAO;
import mx.edu.uttab.model.OfertaServicio;

@Path("/json/ofertasservicios")
public class OfertaServicioService {

    List<OfertaServicio> ofertaList = new ArrayList<>();
    OfertaServicio oferta = new OfertaServicio();
    OfertaServicioDAO ofertaDAO = DAOFactory.getDAOFactory(DAOFactory.XML).getOfertaServicioDAO();

    @Context
    ServletContext context;

    @GET
    @Path("/tipo/get/{tipo}")
    @Produces("application/x-javascript")
    public JSONWithPadding getOfertaServiciosActivosInJSON(@QueryParam("callback") @DefaultValue("CBParamIsMissing") String jsoncallback, @PathParam("tipo") int tipo) {
        String appRealPath = context.getRealPath("/");
        if (ofertaDAO instanceof XMLOfertaServicioDAO) {
            ((XMLOfertaServicioDAO) ofertaDAO).setXMLpath(appRealPath + "WEB-INF\\ofertas_servicios.xml");
        }
        ofertaList = ofertaDAO.findAllTipo(tipo);
        return new JSONWithPadding(ofertaList, jsoncallback);
    }

    @GET
    @Path("/get/{id}")
    @Produces("application/x-javascript")
    public JSONWithPadding getOfertaServicioInJSON(@QueryParam("callback") @DefaultValue("CBParamIsMissing") String jsoncallback, @PathParam("id") int id) {
        String appRealPath = context.getRealPath("/");
        if (ofertaDAO instanceof XMLOfertaServicioDAO) {
            ((XMLOfertaServicioDAO) ofertaDAO).setXMLpath(appRealPath + "WEB-INF\\ofertas_servicios.xml");
        }
        oferta = ofertaDAO.findById(id);
        return new JSONWithPadding(oferta, jsoncallback);
    }

}
