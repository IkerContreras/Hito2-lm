<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
<head>
                <title>Información de Clientes</title>
            </head>
            <body>
                <h1>Información de Clientes</h1>
                <table border="1">
                    <tr>
                        <th>Nombre</th>
                        <th>Apellidos</th>
                        <th>Teléfono</th>
                        <th>Dirección</th>
                        <th>Correo Electrónico</th>
                        <th>Fecha de Inclusión</th>
                    </tr>
                    <xsl:for-each select="//pedido">
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
                            <td><xsl:value-of select="fecha_inclusion"/></td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>


