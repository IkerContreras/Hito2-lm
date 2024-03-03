<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <head>
                <title>Información de Pedidos</title>
            </head>
            <body>
                <h1>Trimestre 1 del Año 2021</h1>
                <table border="1">
                    <tr>
                        <th>Nombre</th>
                        <th>Apellidos</th>
                        <th>Teléfono</th>
                        <th>Dirección</th>
                        <th>Correo Electrónico</th>
                        <th>Número de Pedido</th>
                        <th>Fecha de Compra</th>
                        <th>Fecha de Entrega</th>
                        <th>Total Factura</th>
                        <th>Producto</th>
                        <th>Referencia</th>
                        <th>Precio</th>
                        <th>Unidades</th>
                    </tr>
                    <xsl:for-each select="//años[@año='2021']/trimestres[@trimestre='1']/pedido">
                        <tr>
                            <td><xsl:value-of select="nombre"/></td>
                            <td><xsl:value-of select="apellidos"/></td>
                            <td><xsl:value-of select="telefono"/></td>
                            <td>
                                <xsl:value-of select="direccion/calle"/>,
                                <xsl:value-of select="direccion/ciudad"/>,
                                <xsl:value-of select="direccion/provincia"/>
                            </td>
                            <td><xsl:value-of select="correo_electronico"/></td>
                            <td><xsl:value-of select="detalle/numero_de_pedido"/></td>
                            <td><xsl:value-of select="detalle/fecha_compra"/></td>
                            <td><xsl:value-of select="detalle/fecha_entrega"/></td>
                            <td><xsl:value-of select="detalle/total_factura"/></td>
                            <td><xsl:value-of select="detalle/producto/nombre_producto"/></td>
                            <td><xsl:value-of select="detalle/producto/referencia"/></td>
                            <td><xsl:value-of select="detalle/producto/precio"/></td>
                            <td><xsl:value-of select="detalle/producto/unidades"/></td>
                        </tr>
                    </xsl:for-each>
                </table>

                <h1>Trimestre 4 del Año 2022</h1>
                <table border="1">
                    <tr>
                        <th>Nombre</th>
                        <th>Apellidos</th>
                        <th>Teléfono</th>
                        <th>Dirección</th>
                        <th>Correo Electrónico</th>
                        <th>Número de Pedido</th>
                        <th>Fecha de Compra</th>
                        <th>Fecha de Entrega</th>
                        <th>Total Factura</th>
                        <th>Producto</th>
                        <th>Referencia</th>
                        <th>Precio</th>
                        <th>Unidades</th>
                    </tr>
                    <xsl:for-each select="//años[@año='2022']/trimestres[@trimestre='4']/pedido">
                        <tr>
                            <td><xsl:value-of select="nombre"/></td>
                            <td><xsl:value-of select="apellidos"/></td>
                            <td><xsl:value-of select="telefono"/></td>
                            <td>
                                <xsl:value-of select="direccion/calle"/>,
                                <xsl:value-of select="direccion/ciudad"/>,
                                <xsl:value-of select="direccion/provincia"/>
                            </td>
                            <td><xsl:value-of select="correo_electronico"/></td>
                            <td><xsl:value-of select="detalle/numero_de_pedido"/></td>
                            <td><xsl:value-of select="detalle/fecha_compra"/></td>
                            <td><xsl:value-of select="detalle/fecha_entrega"/></td>
                            <td><xsl:value-of select="detalle/total_factura"/></td>
                            <td><xsl:value-of select="detalle/producto/nombre_producto"/></td>
                            <td><xsl:value-of select="detalle/producto/referencia"/></td>
                            <td><xsl:value-of select="detalle/producto/precio"/></td>
                            <td><xsl:value-of select="detalle/producto/unidades"/></td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
