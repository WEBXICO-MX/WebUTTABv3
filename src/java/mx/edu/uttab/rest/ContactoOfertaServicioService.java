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
import mx.edu.uttab.dao.xml.oferta_servicio.ContactoOfertaServicioDAO;
import mx.edu.uttab.dao.xml.oferta_servicio.XMLContactoOfertaServicioDAO;
import mx.edu.uttab.model.ContactoOfertaServicio;

@Path("/json/contactosservicios")
public class ContactoOfertaServicioService {
    
    List<ContactoOfertaServicio> contactoList = new ArrayList<>();
    ContactoOfertaServicio contacto = new ContactoOfertaServicio();
    ContactoOfertaServicioDAO contactoDAO = DAOFactory.getDAOFactory(DAOFactory.XML).getContactoOfertaServicioDAO();
    
    @Context
    ServletContext context;
    
    @GET
    @Path("/get")
    @Produces("application/x-javascript")
    public JSONWithPadding getContactosOfertaServiciosInJSON(@QueryParam("callback") @DefaultValue("CBParamIsMissing") String jsoncallback) {
        String appRealPath = context.getRealPath("/");
        if (contactoDAO instanceof XMLContactoOfertaServicioDAO) {
            ((XMLContactoOfertaServicioDAO) contactoDAO).setXMLpath(appRealPath + "WEB-INF\\contactos_ofertas_servicios.xml");
        }
        
        contactoList = contactoDAO.findAll();
        return new JSONWithPadding(contactoList, jsoncallback);
    }
    
    @GET
    @Path("/tipo/get/{tipo}")
    @Produces("application/x-javascript")
    public JSONWithPadding getContactosOfertaServiciosByTipoInJSON(@QueryParam("callback") @DefaultValue("CBParamIsMissing") String jsoncallback, @PathParam("tipo") int tipo) {
        String appRealPath = context.getRealPath("/");
        if (contactoDAO instanceof XMLContactoOfertaServicioDAO) {
            ((XMLContactoOfertaServicioDAO) contactoDAO).setXMLpath(appRealPath + "WEB-INF\\contactos_ofertas_servicios.xml");
        }
        
        contactoList = contactoDAO.findByTipo(tipo);
        return new JSONWithPadding(contactoList, jsoncallback);
    }
    
}
