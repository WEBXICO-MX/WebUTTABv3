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
import javax.ws.rs.Produces;
import javax.ws.rs.QueryParam;
import javax.ws.rs.core.Context;
import mx.edu.uttab.dao.DAOFactory;
import mx.edu.uttab.dao.xml.oferta_servicio.TipoOfertaServicioDAO;
import mx.edu.uttab.dao.xml.oferta_servicio.XMLTipoOfertaServicioDAO;
import mx.edu.uttab.model.TipoOfertaServicio;

@Path("/json/tiposofertasservicios")
public class TipoOfertaServicioService {

    List<TipoOfertaServicio> tipoList = new ArrayList<>();
    TipoOfertaServicioDAO tipoDAO = DAOFactory.getDAOFactory(DAOFactory.XML).getTipoOfertaServicioDAO();

    @Context
    ServletContext context;

    @GET
    @Path("/get")
    @Produces("application/x-javascript")
    public JSONWithPadding getTiposOfertasServiciosActivosInJSON(@QueryParam("callback") @DefaultValue("CBParamIsMissing") String jsoncallback) {
        String appRealPath = context.getRealPath("/");
        if (tipoDAO instanceof XMLTipoOfertaServicioDAO) {
            ((XMLTipoOfertaServicioDAO) tipoDAO).setXMLpath(appRealPath + "WEB-INF\\tipos_ofertas_servicios.xml");
        }
        tipoList = tipoDAO.findAllActivos();
        return new JSONWithPadding(tipoList, jsoncallback);
    }

}
