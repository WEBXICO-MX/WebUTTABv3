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
import mx.edu.uttab.dao.xml.division.DivisionDAO;
import mx.edu.uttab.dao.xml.division.XMLDivisionDAO;
import mx.edu.uttab.model.Division;

@Path("/json/divisiones")
public class DivisionService {

    List<Division> divisionList = new ArrayList<>();
    Division division = new Division();
    DivisionDAO divisionDAO = DAOFactory.getDAOFactory(DAOFactory.XML).getDivisionDAO();

    @Context
    ServletContext context;

    @GET
    @Path("/get")
    @Produces("application/x-javascript")
    public JSONWithPadding getDivisionesInJSON(@QueryParam("callback") @DefaultValue("CBParamIsMissing") String jsoncallback) {
        String appRealPath = context.getRealPath("/");
        if (divisionDAO instanceof XMLDivisionDAO) {
            ((XMLDivisionDAO) divisionDAO).setXMLpath(appRealPath + "WEB-INF\\divisiones.xml");
        }

        divisionList = divisionDAO.findAll();
        return new JSONWithPadding(divisionList, jsoncallback);
    }

}
