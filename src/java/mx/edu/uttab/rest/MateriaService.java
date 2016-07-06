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
import mx.edu.uttab.dao.xml.materia.MateriaDAO;
import mx.edu.uttab.dao.xml.materia.XMLMateriaDAO;
import mx.edu.uttab.model.Materia;

@Path("/json/materias")
public class MateriaService {

    List<Materia> materiaList = new ArrayList<>();
    MateriaDAO materiaDAO = DAOFactory.getDAOFactory(DAOFactory.XML).getMateriaDAO();

    @Context
    ServletContext context;

    @GET
    @Path("/get/{cve_carrera}/{cuatrimestre}")
    @Produces("application/x-javascript")
    public JSONWithPadding getMateriasByDivisionInJSON(@QueryParam("callback") @DefaultValue("CBParamIsMissing") String jsoncallback, @PathParam("cve_carrera") int cve_carrera, @PathParam("cuatrimestre") int cuatrimestre) {
        String appRealPath = context.getRealPath("/");
        if (materiaDAO instanceof XMLMateriaDAO) {
            ((XMLMateriaDAO) materiaDAO).setXMLpath(appRealPath + "WEB-INF\\materias.xml");
        }
        materiaList = materiaDAO.findAllByCarreraCuatrimestre(cve_carrera, cuatrimestre);
        return new JSONWithPadding(materiaList, jsoncallback);
    }

}
