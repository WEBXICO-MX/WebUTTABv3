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
import mx.edu.uttab.dao.xml.contacto.ContactoDAO;
import mx.edu.uttab.dao.xml.contacto.XMLContactoDAO;
import mx.edu.uttab.model.Contacto;

@Path("/json/contactos")
public class ContactoService {

    List<Contacto> contactoList = new ArrayList<>();
    Contacto contacto = new Contacto();
    ContactoDAO contactoDAO = DAOFactory.getDAOFactory(DAOFactory.XML).getContactoDAO();

    @Context
    ServletContext context;

    @GET
    @Path("/get")
    @Produces("application/x-javascript")
    public JSONWithPadding getContactosInJSON(@QueryParam("callback") @DefaultValue("CBParamIsMissing") String jsoncallback) {
        String appRealPath = context.getRealPath("/");
        if (contactoDAO instanceof XMLContactoDAO) {
            ((XMLContactoDAO) contactoDAO).setXMLpath(appRealPath + "WEB-INF\\contactos.xml");
        }

        contactoList = contactoDAO.findAllActivos();
        return new JSONWithPadding(contactoList, jsoncallback);
    }

}
