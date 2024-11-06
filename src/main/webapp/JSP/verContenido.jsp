<jsp:directive.page contentType="text/html" pageEncoding="UTF-8"/>
<!DOCTYPE html>
<html>
    <head>
        <jsp:include page="/INC/metas.inc"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/CSS/style.css" />
    </head>
    <body>
        <jsp:include page="/INC/cabecera.inc"/>
        <div class="container-resumen">
            <div class="resumen-h2">
                <h2>Resumen de la p&oacute;liza:</h2>
            </div>
            <div class="resumen-seguro">
                 <div ${sessionScope.edificio == null? "hidden":""}>
                    <h2>Seguro Edificio:</h2>
                    <ul>
                        <li>Tipo Edificio:  ${sessionScope.edificio.tipoEdificio}</li>
                        <li>N&uacute;mero de habitaciones: ${sessionScope.edificio.numHabitaciones}</li>
                        <li>Fecha de Construcci&oacute;n: ${sessionScope.edificio.fechaConstruccion}</li>
                        <li>Tipo de Construcci&oacute;n: ${sessionScope.edificio.tipoConstruccion}</li>
                        <li>Valor del Mercado: ${sessionScope.edificio.valorMercado} &euro;</li>
                        <li>Total Prima Edificio: ${sessionScope.calcularEdificio.totalEdificioFormateado} &euro;</li>
                    </ul>
                </div> 
                  

                
                <div ${sessionScope.contenido == null? "hidden":""}>
                    <h2>Seguro Contenido:</h2>
                    <ul>
                        <li>Tipo Edificio: ${sessionScope.contenido.accidentes == true? "S&iacute;":"No"}</li>
                        <li>Cantidad Asegurada: ${sessionScope.contenido.cantAsegurada} &euro;</li>
                        <li>Franquicia: ${sessionScope.contenido.franquicia == 0? "Ninguna": sessionScope.contenido.franquicia}</li>
                        <li>Total Prima Contenido: ${sessionScope.calcularContenido.totalContenidoFormateado} &euro;</li>
                    </ul>
                </div>
                
            </div>

            <div>

                <h2>Total Seguro: ${sessionScope.totalCoste} &euro;</h2>
            </div>
            <div>
                <form action="${pageContext.request.contextPath}/EleccionController" method="post">
                    <input type="submit" name="volver" value="Volver" class="boton">
                </form>
            </div>
        </div>

        <jsp:include page="/INC/pie.inc"/>
    </body>
</html>
