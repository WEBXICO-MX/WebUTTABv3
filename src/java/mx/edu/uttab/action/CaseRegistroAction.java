/**
 *
 * @author Roberto Eder Weiss Juárez
 * @see {@link http://webxico.blogspot.mx/}
 */
package mx.edu.uttab.action;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import leerdirectorio.Utilerias;
import mx.edu.uttab.dao.DAOFactory;
import mx.edu.uttab.dao.xml.CASE.RegistroDAO;
import mx.edu.uttab.dao.xml.CASE.XMLRegistroDAO;
import mx.edu.uttab.model.CASE.Registro;
import org.apache.poi.hssf.usermodel.HSSFRow;
import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.hssf.util.CellRangeAddress;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.CellStyle;
import org.apache.poi.ss.usermodel.Font;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.struts2.ServletActionContext;
import org.apache.struts2.interceptor.ServletRequestAware;

public class CaseRegistroAction extends ActionSupport implements ModelDriven<Registro>, ServletRequestAware {

    private Registro registro = new Registro();
    private List<Registro> registrosList = new ArrayList<>();

    private final RegistroDAO registroDAO = DAOFactory.getDAOFactory(DAOFactory.XML).getRegistroDAO();

    private HttpServletRequest servletRequest;
    private InputStream inputStream;
    private String fileName;
    private int st;

    public CaseRegistroAction() {
        if (registroDAO instanceof XMLRegistroDAO) {
            ((XMLRegistroDAO) registroDAO).setXMLpath(ServletActionContext.getServletContext().getRealPath("/") + "WEB-INF/case_registros.xml");
        }
    }

    @Override
    public String execute() throws Exception {
        return SUCCESS;
    }

    public String getBuzon() {

        switch (servletRequest.getParameter("st")) {
            case "#sectionA":
                st = 1;
                break;
            case "#sectionB":
                st = 2;
                break;
            case "#sectionC":
                st = 3;
                break;
            case "#sectionD":
                st = 4;
                break;
            case "#sectionE":
                st = 5;
                break;    
            default:
                st = 1;

        }
        registrosList = registroDAO.findByStatus(st);
        return SUCCESS;
    }

    public String getRegistroId() {
        //Usando ModelDriven el parametro GET "id" invoca al metodo setId() del objeto "registro" de la clase Registro
        //y le asigna un valor el cual puedo usar como  registro.getId() para obtenerlo
        registro = registroDAO.findById(registro.getId());
        return SUCCESS;
    }

    public String cambiarStatus() {
        st = registro.getStatus();
        int id = registro.getId();
        registro = registroDAO.findById(id);
        registro.setStatus(st);
        registroDAO.saveOrUpdate(registro);
        return SUCCESS;
    }

    public String excel() {
        st = Integer.parseInt(servletRequest.getParameter("st"));
        String tag = "";
        switch (st) {
            case 1:
                tag = "Nuevos registros";
                break;
            case 2:
                tag = "Revisados";
                break;
            case 3:
                tag = "Inscritos";
                break;
            case 4:
                tag = "No inscritos";
                break;
            case 5:
                tag = "Histórico";
                break;    
        }

        HSSFWorkbook wb = new HSSFWorkbook();
        HSSFSheet sheet = wb.createSheet(tag);
        int num_row = 0;

        try {
            Calendar calendar = Calendar.getInstance();
            registrosList = registroDAO.findByStatus(st);

            fileName = new StringBuilder("reporte_registros_capacitaciones_").append(tag.trim()).append("_").append(calendar.get(Calendar.DAY_OF_MONTH)).append("_").append(calendar.get(Calendar.MONTH) + 1).append("_").append(calendar.get(Calendar.YEAR)).append(".xls").toString();

            Font font = wb.createFont();
            font.setFontHeightInPoints((short) 24);
            font.setFontName("Trebuchet MS");
            font.setBold(true);

            Row row = sheet.createRow(num_row);
            num_row++;
            num_row++;
            createCell(wb, row, "Reporte de registrados a capacitaciones \"" + tag + "\" ", font, (short) 0, CellStyle.ALIGN_CENTER, CellStyle.VERTICAL_CENTER);

            sheet.addMergedRegion(new CellRangeAddress(
                    0, //first row (0-based)
                    1, //last row  (0-based)
                    0, //first column (0-based)
                    12 //last column  (0-based)
            ));

            Font font2 = wb.createFont();
            font2.setFontHeightInPoints((short) 14);
            font2.setFontName("Trebuchet MS");
            font2.setBold(true);

            Row row2 = sheet.createRow(num_row);
            num_row++;

            createCell(wb, row2, "Fecha de impresión: " + Utilerias.getCadenaFechaHora(calendar), font2, (short) 0, CellStyle.ALIGN_LEFT, CellStyle.VERTICAL_CENTER);

            sheet.addMergedRegion(new CellRangeAddress(
                    2, //first row (0-based)
                    2, //last row  (0-based)
                    0, //first column (0-based)
                    12 //last column  (0-based)
            ));

            setInfo(sheet, registrosList, font2, ++num_row);

            try {
                ByteArrayOutputStream boas = new ByteArrayOutputStream();
                wb.write(boas);
                setInputStream(new ByteArrayInputStream(boas.toByteArray()));
            } catch (IOException e) {
            }
        } catch (Exception e) {
        }
        return SUCCESS;
    }

    /**
     * Creates a cell and aligns it a certain way.
     *
     * @param wb the workbook
     * @param row the row to create the cell in
     * @param value the string value the cell in
     * @param font the font the cell in
     * @param column the column number to create the cell in
     * @param halign the horizontal alignment for the cell.
     * @param valign the vertical alignment for the cell.
     */
    private static void createCell(Workbook wb, Row row, String value, Font font, short column, short halign, short valign) {
        Cell cell = row.createCell(column);
        cell.setCellValue(value);
        CellStyle cellStyle = wb.createCellStyle();
        cellStyle.setAlignment(halign);
        cellStyle.setVerticalAlignment(valign);
        cellStyle.setFont(font);
        cell.setCellStyle(cellStyle);
    }

    private void setInfo(HSSFSheet sheet, List<Registro> registros, Font font, int num_row) {
        Font f1 = sheet.getWorkbook().createFont();
        f1.setFontHeightInPoints((short) 14);
        f1.setFontName("Trebuchet MS");
        f1.setBold(true);

        Font f2 = sheet.getWorkbook().createFont();
        f2.setFontHeightInPoints((short) 14);
        f2.setFontName("Trebuchet MS");

        HSSFRow myRow = null;
        int count = 0;
        final String[] errorSource = {"Num", "Nombre completo", "Fecha de nacimiento", "Sexo", "Email", "Tel", "Cel", "Sector productivo", "Nombre institución/Empresa", "Nombre capacitación", "Fechas capacitación"};
        try {
            Row header = sheet.createRow(num_row);
            num_row++;
            for (int i = 0; i < errorSource.length; i++) {
                //Cell monthCell = header.createCell(i);
                //monthCell.setCellValue(errorSource[i]);
                createCell(sheet.getWorkbook(), header, errorSource[i], f1, (short) i, CellStyle.ALIGN_CENTER, CellStyle.VERTICAL_CENTER);
            }
            for (Registro rg : registros) {
                myRow = sheet.createRow(num_row);
                num_row++;
                createCell(sheet.getWorkbook(), myRow, String.valueOf(++count), f2, (short) 0, CellStyle.ALIGN_LEFT, CellStyle.VERTICAL_CENTER);
                createCell(sheet.getWorkbook(), myRow, rg.getNombre() + " " + rg.getApellido_pat() + " " + rg.getApellido_mat(), f2, (short) 1, CellStyle.ALIGN_LEFT, CellStyle.VERTICAL_CENTER);
                createCell(sheet.getWorkbook(), myRow, rg.getFecha_nacimiento(), f2, (short) 2, CellStyle.ALIGN_LEFT, CellStyle.VERTICAL_CENTER);
                createCell(sheet.getWorkbook(), myRow, rg.getSexo(), f2, (short) 3, CellStyle.ALIGN_LEFT, CellStyle.VERTICAL_CENTER);
                createCell(sheet.getWorkbook(), myRow, rg.getEmail(), f2, (short) 4, CellStyle.ALIGN_LEFT, CellStyle.VERTICAL_CENTER);
                createCell(sheet.getWorkbook(), myRow, rg.getTel(), f2, (short) 5, CellStyle.ALIGN_LEFT, CellStyle.VERTICAL_CENTER);
                createCell(sheet.getWorkbook(), myRow, rg.getCel(), f2, (short) 6, CellStyle.ALIGN_LEFT, CellStyle.VERTICAL_CENTER);
                createCell(sheet.getWorkbook(), myRow, rg.getSector_productivo().getNombre(), f2, (short) 7, CellStyle.ALIGN_LEFT, CellStyle.VERTICAL_CENTER);
                createCell(sheet.getWorkbook(), myRow, rg.getNombre_empresa(), f2, (short) 8, CellStyle.ALIGN_LEFT, CellStyle.VERTICAL_CENTER);
                createCell(sheet.getWorkbook(), myRow, rg.getCalendario_capacitacion().getCapacitacion().getNombre(), f2, (short) 9, CellStyle.ALIGN_LEFT, CellStyle.VERTICAL_CENTER);
                createCell(sheet.getWorkbook(), myRow, rg.getCalendario_capacitacion().getHola(), f2, (short) 10, CellStyle.ALIGN_LEFT, CellStyle.VERTICAL_CENTER);
            }

            HSSFRow row = sheet.getWorkbook().getSheetAt(0).getRow(4);
            for (int colNum = 0; colNum < row.getLastCellNum(); colNum++) {
                sheet.getWorkbook().getSheetAt(0).autoSizeColumn(colNum);
            }

        } catch (Exception e) {
        }

    }

    public String txt() throws FileNotFoundException {
        inputStream = new FileInputStream(new File("/Users/Weiss/struts2_download_action.txt"));
        return SUCCESS;
    }

    public Registro getRegistro() {
        return registro;
    }

    public void setRegistro(Registro registro) {
        this.registro = registro;
    }

    public List<Registro> getRegistrosList() {
        return registrosList;
    }

    public void setRegistrosList(List<Registro> registrosList) {
        this.registrosList = registrosList;
    }

    @Override
    public void setServletRequest(HttpServletRequest hsr) {
        this.servletRequest = hsr;
    }

    public InputStream getInputStream() {
        return inputStream;
    }

    public void setInputStream(InputStream inputStream) {
        this.inputStream = inputStream;
    }

    public String getFileName() {
        return fileName;
    }

    public int getSt() {
        return st;
    }

    @Override
    public Registro getModel() {
        return registro;
    }

}
