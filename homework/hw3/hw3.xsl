<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="2.0">
    
    
    <xsl:template match="/">
        <html>
            <head>
                <title>Catalog</title>
                <link rel="stylesheet" type="text/css" href="http://erswanson.github.io/css/main.css"/>
            </head>
            <body>
                <hl>CATALOG OF PLANTS</hl>
                <p>Currently For Sale</p>
                
                <table border="1">
                    <tr bgcolor="#9acd32">
                        <th>Common Name</th>
                        <th>Botanical Name</th>
                        <th>Climate Zone</th>
                        <th>Light Requirements</th>
                        <th>Price</th>
                        <th>Product Code</th>
                        </tr>
                    <xsl:for-each select="CATALOG/PLANT">
                        <tr>
                            <td><xsl:value-of select="COMMON"/></td>
                            <td><xsl:value-of select="BOTANICAL"/></td>
                            <td><xsl:value-of select="ZONE"/></td>
                            <td><xsl:value-of select="LIGHT"/></td>
                            <td><xsl:value-of select="PRICE"/></td>
                            <td><xsl:value-of select="AVAILABILITY"/></td>
                        </tr>
                    </xsl:for-each>
                        
                    
                </table>
                
            </body>
        </html>
    </xsl:template>
    
   
      
 
    
</xsl:stylesheet>