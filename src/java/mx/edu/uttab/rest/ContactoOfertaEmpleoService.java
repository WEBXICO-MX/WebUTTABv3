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
import mx.edu.uttab.dao.xml.oferta_empleo.ContactoOfertaEmpleoDAO;
import mx.edu.uttab.dao.xml.oferta_empleo.XMLContactoOfertaEmpleoDAO;
import mx.edu.uttab.model.ContactoOfertaEmpleo;

@Path("/json/contactosempleos")
public class ContactoOfertaEmpleoService {

    List<ContactoOfertaEmpleo> contactoList = new ArrayList<>();
    ContactoOfertaEmpleo contacto = new ContactoOfertaEmpleo();
    ContactoOfertaEmpleoDAO contactoDAO = DAOFactory.getDAOFactory(DAOFactory.XML).getContactoOfertaEmpleoDAO();

    @Context
    ServletContext context;

    @GET
    @Path("/get")
    @Produces("application/x-javascript")
    public JSONWithPadding getContactoOfertaEmpleosInJSON(@QueryParam("callback") @DefaultValue("CBParamIsMissing") String jsoncallback) {
        String appRealPath = context.getRealPath("/");
        if (contactoDAO instanceof XMLContactoOfertaEmpleoDAO) {
            ((XMLContactoOfertaEmpleoDAO) contactoDAO).setXMLpath(appRealPath + "WEB-INF\\contactos_ofertas_empleos.xml");
        }

        contactoList = contactoDAO.findAll();
        return new JSONWithPadding(contactoList, jsoncallback);
    }

}
