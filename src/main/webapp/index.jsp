<jsp:directive.page contentType="text/html" pageEncoding="UTF-8"/>
<!DOCTYPE html>
<html>
    <head>
        <jsp:include page="/INC/metas.inc"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/CSS/style.css"/>
    </head>
    <body>
        <jsp:include page="/INC/cabecera.inc"/>

        <div>
            <h2>Seleccione su p&oacute;liza de seguro</h2>
        </div>
        <div class="contenedor-inicial">

            <form action="${pageContext.request.contextPath}/EleccionController" method="post" class="formulario-inicial">
                <div class="container-inputs">
                    <div>
                        <label class="label-inicio">¿Que tipo de seguro quiere?</label>
                    </div>
                    <div class="check-inicial">
                        <div><input type="checkbox" name="edificio" value="edificio" checked> Seguro de Edificio</div>
                        <div><input type="checkbox" name="contenido" value="contenido" checked> Seguro de Contenido</div>                      
                    </div>

                </div>
                <div class="container-botones">
                    <input type="submit" name="enviar" value="Enviar" class="boton">
                </div>
            </form>  
        </div>

        <jsp:include page="/INC/pie.inc"/>
    </body>
</html>
