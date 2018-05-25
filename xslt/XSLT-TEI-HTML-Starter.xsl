<?xml version="1.0" encoding="UTF-8"?>
    <xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="3.0"
        xmlns="http://www.w3.org/1999/xhtml"       xpath-default-namespace="http://www.tei-c.org/ns/1.0">
        
        <xsl:output method="xhtml" encoding="utf-8" doctype-system="about:legacy-compat"
            omit-xml-declaration="yes"/>
   
 <xsl:template match="/">
     <html>
        <head><title><xsl:apply-templates select="//body/div[@type='sketch']/head"/></title></head> 
         <body>
             
             
         </body> 
     </html>
 </xsl:template>  
   
   
   
   
   
    </xsl:stylesheet>
