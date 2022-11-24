<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html lang="en">

    <head>
        <title>Employee Management System</title>
        <style>
            
        </style>
    </head>
    
    <body>
        <h1>Employee Management System</h1>
        <table>
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Age</th>
                <th>email</th>
                <th>Mobnum</th>
                <th>Designation</th>
                <th>promotion</th>
            </tr>
            <xsl:for-each select="Company/employee">
            
            <tr>
                <td> <xsl:value-of select="id"></xsl:value-of> </td>
                <td><xsl:value-of select= "name"></xsl:value-of></td>
                <td><xsl:value-of select="age"></xsl:value-of></td>
                <td><xsl:value-of select="email"></xsl:value-of></td>
                <td><xsl:value-of select="Mobnum"></xsl:value-of></td>
                <td><xsl:value-of select="designation"></xsl:value-of></td>
                <xsl:choose>
                    <xsl:when test="age>=50">
                        <td>Associate Team Manager</td>
                    </xsl:when>
                    <xsl:when test="age>=40">
                        <td>Team Leader</td>
                    </xsl:when>
                    <xsl:otherwise>
                        <td>Developer</td>
                    </xsl:otherwise>
                </xsl:choose>
            </tr>
        </xsl:for-each>  
    </table>
</body>

</html>
</xsl:template>
</xsl:stylesheet>