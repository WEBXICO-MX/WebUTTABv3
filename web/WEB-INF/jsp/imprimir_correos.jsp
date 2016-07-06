<%@page import="java.io.InputStreamReader"%>
<%@page import="java.io.BufferedReader"%>
<%@page import="java.io.DataInputStream"%>
<%@page import="java.io.FileInputStream"%>
<%@page import="java.io.File"%>
<%@page import="org.apache.poi.hssf.usermodel.HSSFCellStyle"%>
<%@page import="org.apache.poi.hssf.usermodel.HSSFCell"%>
<%@page import="org.apache.poi.hssf.usermodel.HSSFRow"%>
<%@page import="org.apache.poi.hssf.usermodel.HSSFSheet"%>
<%@page import="org.apache.poi.hssf.usermodel.HSSFWorkbook"%>
<%@page import="org.apache.poi.hssf.usermodel.HSSFFont"%>
<%@page contentType="text/html" pageEncoding="UTF-8" session="false"%>
<%
    String direccion = getServletContext().getRealPath("WEB-INF/lista_correos.txt");
    File directorio = new File(direccion);

    directorio.mkdir();
    try {
        HSSFWorkbook wb = new HSSFWorkbook();
        HSSFSheet sheet = wb.createSheet("Correo");
        sheet.setColumnWidth((short) 0, (short) (350 * 30));
        sheet.setColumnWidth((short) 1, (short) (100 * 30));
        HSSFRow row = sheet.createRow(0);
        HSSFCell cell = row.createCell((short) 0);
        encabezado(wb, row, (short) 0, HSSFCellStyle.ALIGN_CENTER_SELECTION, String.valueOf("Correo"));
        encabezado(wb, row, (short) 1, HSSFCellStyle.ALIGN_CENTER_SELECTION, String.valueOf("Fecha alta"));
        FileInputStream fstream = new FileInputStream(direccion);
        DataInputStream entrada = new DataInputStream(fstream);
        BufferedReader buffer = new BufferedReader(new InputStreamReader(entrada));
        String strLinea;
        int x = 0;
        while ((strLinea = buffer.readLine()) != null) {

            String cadena = strLinea;
            String correo = "";
            String fecha = "";
            int index = cadena.indexOf("-");
            correo = cadena.substring(0, index);
            fecha = cadena.substring(index + 1, cadena.length());

            row = sheet.createRow(x);
            cell = row.createCell((short) 0);
            formatoRegistros(wb, row, (short) 0, HSSFCellStyle.ALIGN_CENTER, String.valueOf(correo));
            formatoRegistros(wb, row, (short) 1, HSSFCellStyle.ALIGN_CENTER, String.valueOf(fecha));

            // Imprimimos la línea por pantalla
            //System.out.println (x+".- "+strLinea);
            x++;
        }
        ServletOutputStream salida = response.getOutputStream();
        response.setContentType("application/vnd.ms-excel");
        wb.write(salida);
        salida.flush();
        response.flushBuffer();
        entrada.close();
    } catch (Exception e) { //Catch de excepciones
        System.err.println("Ocurrio un error: " + e.getMessage());
    }
%>
<%!
    private static void formatoRegistros(HSSFWorkbook wb, HSSFRow row, short column, short align, String valor_string) {
        HSSFCell cell = row.createCell(column);
//        HSSFFont font = wb.createFont();
        cell.setCellValue(valor_string);
        HSSFCellStyle cellStyle = wb.createCellStyle();
//        cellStyle.setAlignment(align);
///////////////////////////Bordes//////////////////////////////
        /*cellStyle.setBorderBottom(HSSFCellStyle.BORDER_THIN);
         cellStyle.setBorderLeft(HSSFCellStyle.BORDER_THIN);
         cellStyle.setBorderRight(HSSFCellStyle.BORDER_THIN);*/

        cellStyle.setWrapText(true);// Ajusta la Celda al Tamaño del Texto.
        cell.setCellStyle(cellStyle);
    }

    private static void encabezado(HSSFWorkbook wb, HSSFRow row, short column, short align, String valor_string) {
        HSSFCell cell = row.createCell(column);
        HSSFFont font = wb.createFont();
        cell.setCellValue(valor_string);
        HSSFCellStyle cellStyle = wb.createCellStyle();
        cellStyle.setAlignment(align);
///////////////////////////Bordes//////////////////////////////
        cellStyle.setBorderBottom(HSSFCellStyle.BORDER_THIN);
        cellStyle.setBorderLeft(HSSFCellStyle.BORDER_THIN);
        cellStyle.setBorderRight(HSSFCellStyle.BORDER_THIN);
///////////////////////////////////////////////////////////////
        font.setBoldweight(HSSFFont.BOLDWEIGHT_BOLD);
        cellStyle.setFillPattern(HSSFCellStyle.FINE_DOTS);
        cellStyle.setWrapText(true);// Ajusta la Celda al Tamaño del Texto.
        cellStyle.setFont(font);
        cell.setCellStyle(cellStyle);
    }
%>