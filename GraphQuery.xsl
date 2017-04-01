<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="/">
        <html>
            <body>
                <h2>Graph Query Inspection</h2>
                <table border="1">
                    <tr>
                        <th>File</th>
                        <th>Line</th>
                        <th>Problem</th>
                        <th>Description</th>
                    </tr>
                    <xsl:for-each select="problems/problem">
                        <tr>
                            <td>
                                <xsl:value-of select="file"/>
                            </td>
                            <td>
                                <xsl:value-of select="line"/>
                            </td>
                            <td>
                                <xsl:value-of select="problem_class"/>
                            </td>
                            <td>
                                <xsl:value-of select="description"/>
                            </td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>