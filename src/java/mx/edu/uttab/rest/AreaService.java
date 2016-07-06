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
import mx.edu.uttab.dao.xml.area.AreaDAO;
import mx.edu.uttab.dao.xml.area.XMLAreaDAO;
import mx.edu.uttab.model.Area;

@Path("/json/areas")
public class AreaService {

    List<Area> areaList = new ArrayList<>();
    Area area = new Area();
    AreaDAO areaDAO = DAOFactory.getDAOFactory(DAOFactory.XML).getAreaDAO();

    @Context
    ServletContext context;

    @GET
    @Path("/get/{id}")
    @Produces("application/x-javascript")
    public JSONWithPadding getAreaByIDInJSON(@QueryParam("callback") @DefaultValue("CBParamIsMissing") String jsoncallback, @PathParam("id") int id) {
        String appRealPath = context.getRealPath("/");
        if (areaDAO instanceof XMLAreaDAO) {
            ((XMLAreaDAO) areaDAO).setXMLpath(appRealPath + "WEB-INF\\areas_directorio.xml");
        }
        area = areaDAO.findById(id);
        return new JSONWithPadding(area, jsoncallback);
    }

    @GET
    @Path("/get")
    @Produces("application/x-javascript")
    public JSONWithPadding getAreasInJSON(@QueryParam("callback") @DefaultValue("CBParamIsMissing") String jsoncallback) {
        String appRealPath = context.getRealPath("/");
        if (areaDAO instanceof XMLAreaDAO) {
            ((XMLAreaDAO) areaDAO).setXMLpath(appRealPath + "WEB-INF\\areas_directorio.xml");
        }
        areaList = areaDAO.findAll();
        return new JSONWithPadding(areaList, jsoncallback);
    }

}
