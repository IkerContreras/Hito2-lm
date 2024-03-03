<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <head>
                <title>Información de Pedidos</title>
            </head>
            <body>
                <h1>Información de Pedidos</h1>
                <table border="1">
                    <tr>
                        <th>Número de Pedido</th>
                        <th>Fecha de Compra</th>
                        <th>Fecha de Entrega</th>
                    </tr>
                    <xsl:for-each select="//pedido">
                        <tr>
                            <td><xsl:value-of select="detalle/numero_de_pedido"/></td>
                            <td><xsl:value-of select="detalle/fecha_compra"/></td>
                            <td><xsl:value-of select="detalle/fecha_entrega"/></td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>


