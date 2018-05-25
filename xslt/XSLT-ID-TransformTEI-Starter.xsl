<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xpath-default-namespace="http://www.tei-c.org/ns/1.0"
    xmlns="http://www.tei-c.org/ns/1.0"
    version="3.0">
    <!--2018-05-25 ebb: XSLT-Identity Transformation Starter (TEI to TEI)--> 

    <xsl:mode on-no-match="shallow-copy"/>
    
    
 <!--2018-05-25 ebb: If I want to totally remove these pb elements, I would make a self-closing template match.
 <xsl:template match="pb"/>
 -->     
    
    <xsl:template match="pb">
        <page> <xsl:apply-templates/></page>
    </xsl:template>
        
    
        
    
 
</xsl:stylesheet>