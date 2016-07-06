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
import mx.edu.uttab.dao.xml.oferta_empleo.OfertaEmpleoDAO;
import mx.edu.uttab.dao.xml.oferta_empleo.XMLOfertaEmpleoDAO;
import mx.edu.uttab.model.OfertaEmpleo;

@Path("/json/ofertasempleos")
public class OfertaEmpleoService {

    List<OfertaEmpleo> ofertaList = new ArrayList<>();
    OfertaEmpleo oferta = new OfertaEmpleo();
    OfertaEmpleoDAO ofertaDAO = DAOFactory.getDAOFactory(DAOFactory.XML).getOfertaEmpleoDAO();

    @Context
    ServletContext context;

    @GET
    @Path("/get")
    @Produces("application/x-javascript")
    public JSONWithPadding getOfertaEmpleosActivosInJSON(@QueryParam("callback") @DefaultValue("CBParamIsMissing") String jsoncallback) {
        String appRealPath = context.getRealPath("/");
        if (ofertaDAO instanceof XMLOfertaEmpleoDAO) {
            ((XMLOfertaEmpleoDAO) ofertaDAO).setXMLpath(appRealPath + "WEB-INF\\ofertas_empleos.xml");
        }
        ofertaList = ofertaDAO.findAllActivos();
        return new JSONWithPadding(ofertaList, jsoncallback);
    }

    @GET
    @Path("/get/{id}")
    @Produces("application/x-javascript")
    public JSONWithPadding getOfertaEmpleoInJSON(@QueryParam("callback") @DefaultValue("CBParamIsMissing") String jsoncallback, @PathParam("id") int id) {
        String appRealPath = context.getRealPath("/");
        if (ofertaDAO instanceof XMLOfertaEmpleoDAO) {
            ((XMLOfertaEmpleoDAO) ofertaDAO).setXMLpath(appRealPath + "WEB-INF\\ofertas_empleos.xml");
        }
        oferta = ofertaDAO.findById(id);
        return new JSONWithPadding(oferta, jsoncallback);
    }

    @GET
    @Path("/division/get/{division}")
    @Produces("application/x-javascript")
    public JSONWithPadding getOfertaEmpleoByDivisionInJSON(@QueryParam("callback") @DefaultValue("CBParamIsMissing") String jsoncallback, @PathParam("division") String division) {
        String appRealPath = context.getRealPath("/");
        if (ofertaDAO instanceof XMLOfertaEmpleoDAO) {
            ((XMLOfertaEmpleoDAO) ofertaDAO).setXMLpath(appRealPath + "WEB-INF\\ofertas_empleos.xml");
        }
        ofertaList = ofertaDAO.findByDivision(division);
        return new JSONWithPadding(ofertaList, jsoncallback);
    }

}
