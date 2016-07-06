<%@page contentType="text/html" pageEncoding="UTF-8" session="false"%>
<!DOCTYPE html>
<html lang="es">
<head>
<meta charset="utf-8">
<!--[if IE]>
           <link rel="shortcut icon"  href="img/favicon.ico"/> 
         <![endif]-->

        <link rel="icon" href="img/favicon.ico"/>
<title>UTTAB &#124; Imprimir lista de correos</title>
<script>
function buscar()
{  
var pag = "ExportListEmailEXCEL";
var vWinPres = window.open(pag, "Notepad","width=800, height=400, statusbar=yes, directories=no, scrollbars=yes, resizable=no,top=100,left=100");
vWinPres.opener = self;
}
</script>
</head>

<body>
<form id="formC" name="formC" method="post" autocomplete="off">
<input name="Buscar" id="Buscar" type="button" value="Exportar a EXCEL" onClick="buscar();" />
</form>
</body>
</html>