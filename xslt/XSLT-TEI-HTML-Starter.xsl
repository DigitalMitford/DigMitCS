<?xml version="1.0" encoding="UTF-8"?>
    <xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="3.0"
        xmlns="http://www.w3.org/1999/xhtml"       xpath-default-namespace="http://www.tei-c.org/ns/1.0">
        
        <xsl:output method="xhtml" encoding="utf-8" doctype-system="about:legacy-compat"
            omit-xml-declaration="yes"/>
   
 <xsl:template match="/">
     <html>
        <head><title><xsl:value-of select="//body/div[@type='sketch']/head"/></title>
            <link rel="stylesheet" type="text/css" href="ov.css"/>
        
        </head> 
         <body>
      <!--   <h1>
             <xsl:apply-templates select="//body/div[@type='sketch']/head"/>   
         </h1> -->
             
        <section id="main">  
            <xsl:apply-templates select="//div[@type='sketch']"/>
        </section>
                   
          <section id="editors"> <xsl:text>Edited by: </xsl:text>
             <xsl:value-of select="string-join(//teiHeader//titleStmt//editor, ', ')"/></section>
             
         </body> 
     </html>
 </xsl:template>  
        
<xsl:template match="rs[@type='person'] | persName">
    
<span class="person"><xsl:apply-templates/></span>    
</xsl:template>        
   
   
<xsl:template match="lb">
    <br/>
</xsl:template> 
        
        <xsl:template match="said">
            <span class="said"><xsl:apply-templates/></span>
        </xsl:template>
   
   
   <xsl:template match="p">
       <p><xsl:apply-templates/></p>  
   </xsl:template>
   
    </xsl:stylesheet>
