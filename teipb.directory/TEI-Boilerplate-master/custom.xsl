<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    version="1.0" 
    xmlns:eg="http://www.tei-c.org/ns/Examples"
    xmlns:tei="http://www.tei-c.org/ns/1.0" 
    xmlns:xd="http://www.oxygenxml.com/ns/doc/xsl"
    xmlns:exsl="http://exslt.org/common"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt"
    xmlns:fn="http://www.w3.org/2005/xpath-functions"
    extension-element-prefixes="exsl msxsl"
    xmlns="http://www.w3.org/1999/xhtml" 
    xmlns:html="http://www.w3.org/1999/xhtml" 
    xmlns:TEI="http://www.whitmanarchive.org/namespace" xml:id="ppp.00271"
    exclude-result-prefixes="xsl tei xd eg fn #default">
    
    
    <!-- import teibp.xsl, which allows templates, 
         variables, and parameters from teibp.xsl 
         to be overridden here. -->
    <xsl:import href="teibp.xsl"/>
    
    <xsl:strip-space elements="yes"/>
    
    <xsl:output indent="yes"/>
    
    
    <xsl:template match="node() | @*">
        <xsl:copy>
            <xsl:apply-templates select="node() |@*"/>
        </xsl:copy>
    </xsl:template>
    
    <xsl:template match="/">
            <xsl:apply-templates/>
    </xsl:template>
 
    <xsl:template match="/"/>
    
 
        
    
    <xsl:template match="TEI">
        
        <xsl:apply-templates/>
        
    </xsl:template>
    
    <xsl:template match="TEI:revisionDesc">
        <xsl:copy>
            <xsl:apply-templates/>
            <xsl:element name="change" namespace="http://www.tei-c.org/ns/1.0">
                <xsl:attribute name="who">Eric Swanson</xsl:attribute>
                <xsl:attribute name="when">2022-02-28</xsl:attribute>
                <xsl:text>Final Project, utilizing TEI Boilerplate</xsl:text>
            </xsl:element>
        </xsl:copy>
    </xsl:template>
    
    <xsl:template match="text">
        <xsl:apply-templates/>
    </xsl:template>
    
    <xsl:template match="pb">
        <xsl:apply-templates/>
    </xsl:template>

    <xsl:template match="front/note"> </xsl:template>

</xsl:stylesheet>