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
import mx.edu.uttab.dao.xml.calendarioescolar.CalendarioEscolarDAO;
import mx.edu.uttab.dao.xml.calendarioescolar.XMLCalendarioEscolarDAO;
import mx.edu.uttab.model.CalendarioEscolar;

@Path("/json/calendario_escolar")
public class CalendarioEscolarService {

    List<CalendarioEscolar> calendarioList = new ArrayList<>();
    CalendarioEscolar calendario = new CalendarioEscolar();
    CalendarioEscolarDAO calendarioDAO = DAOFactory.getDAOFactory(DAOFactory.XML).getCalendarioEscolarDAO();

    @Context
    ServletContext context;

    @GET
    @Path("/get")
    @Produces("application/x-javascript")
    public JSONWithPadding getCalendarioEscolarInJSON(@QueryParam("callback") @DefaultValue("CBParamIsMissing") String jsoncallback) {
        String appRealPath = context.getRealPath("/");
        if (calendarioDAO instanceof XMLCalendarioEscolarDAO) {
            ((XMLCalendarioEscolarDAO) calendarioDAO).setXMLpath(appRealPath + "WEB-INF\\calendario_escolar.xml");
        }
        calendarioList = calendarioDAO.findAll();
        return new JSONWithPadding(calendarioList, jsoncallback);
    }

}