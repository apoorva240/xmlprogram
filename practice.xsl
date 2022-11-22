<?xml version="1.0" encoding="UTF-8"?>
<?xml-stylesheet href="practice.xsl" type="text/xsl"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html lang="en">
            <head>
                <title>XML | Apoorva Vasishtha</title>
                <style>
                    body{
                        box-sizing: border-box;
                        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
                        font-size: 24px;
                    }
                    table,tr,th,td{
                        border-collapse: collapse;
                        border: 1px solid;
                    }
                    .tables{
                        display: flex;
                        justify-content: center;
                        margin-top: 3em;
                    }
                    h1{
                        text-align: center  ;
                        text-decoration: underline;
                    }
                    th,td{
                        padding: 2em;
                    }
                </style>
            </head>

            <body>
                <h1>My Table</h1>
                <div class="tables">
                    <table>
                        <tr bgcolor="#e3e3e3">
                            <th>Name </th>
                            <th>price</th>
                            <th>Description</th>
                            <th>Calories</th>
                        </tr>
                        <xsl:for-each select="breakfast_menu/food">
                            <xsl:sort select="Name" />
                            <xsl:if test="price &lt; 650">
                                <tr>
                                    <td>
                                        <xsl:value-of select="name" />
                                    </td>
                                    <td>
                                        <xsl:value-of select="price" />
                                    </td>
                                    <td>
                                        <xsl:value-of select="description" />
                                    </td>
                                    <td>
                                        <xsl:value-of select="calories" />
                                    </td>
                                </tr>
                            </xsl:if>
                        </xsl:for-each>
                    </table>
                </div>
            </body>

        </html>
    </xsl:template>
</xsl:stylesheet>