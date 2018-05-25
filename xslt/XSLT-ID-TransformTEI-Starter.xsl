<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xpath-default-namespace="http://www.tei-c.org/ns/1.0"
    xmlns="http://www.tei-c.org/ns/1.0"
    version="3.0">
    <!--2018-05-25 ebb: XSLT-Identity Transformation Starter (TEI to TEI)--> 

    <xsl:mode on-no-match="shallow-copy"/>
    
    <xsl:template match="rdg[@wit='#WH1812']/pb">
        
        <pb n="{count(preceding::pb[parent::rdg[@wit='#WH1812']]) + 1}"/>
    
    </xsl:template>
   

    
    
    <!--2018-05-25 ebb: If I want to totally remove these pb elements, I would make a self-closing template match.
 <xsl:template match="pb"/>
 -->    
    
    <!--Totally changing the l element into a line element, Keeping its @rend attribute, but losing its xml:id:
    <xsl:template match="l">
        <line tab="{@rend}"><xsl:apply-templates/></line>
    </xsl:template> -->
        
    
 
</xsl:stylesheet>