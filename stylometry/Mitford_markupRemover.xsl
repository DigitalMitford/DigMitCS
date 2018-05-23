<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xpath-default-namespace="http://www.tei-c.org/ns/1.0"
    exclude-result-prefixes="xs"
    version="2.0">
    
    <xsl:output method="text"/>
    <xsl:variable name="OVColl" select="collection('MitfordOV')"/>
    <xsl:template match="/">
     <xsl:for-each select="$OVColl//text">   
        <xsl:result-document href="MitfordOV_text/{substring-before(tokenize(base-uri(), '/')[last()], '.')}.txt" method="text" indent="yes">
        <xsl:value-of select="//body//string()"/>
        </xsl:result-document>
     </xsl:for-each>
    </xsl:template>
    
    <xsl:template match="note"/>
        
</xsl:stylesheet>