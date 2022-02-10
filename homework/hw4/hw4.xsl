<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="2.0">
    
    
    <xsl:strip-space elements="*"/>
    
    <xsl:output indent="yes"/>
    
    <xsl:template match="html">
        <journal-data>
            <xsl:apply-templates/>
        </journal-data>
    </xsl:template>
    
    <xsl:template match="body">
        <xsl:apply-templates/>
    </xsl:template>
   
   
    
    <xsl:template match="li">
        <xsl:apply-templates/>
    </xsl:template>
    
   
   
    <xsl:template match="head"/>
    
    <xsl:template match="link"/>
    
    <xsl:template match="script"/>
    
    <xsl:template match="symbol"/>
    
    <xsl:template match="li/a"/>
    
    <xsl:template match="header"/>
    
   <xsl:template match="nav/div/p"/>
    
    <xsl:template match="div/a"/>
    
    <xsl:template match="div/h1"/>
    
    
    
    
    
        
        
    <xsl:template match="li/p[1]">
        <journal-record>
            <xsl:apply-templates/>
        </journal-record>
    </xsl:template>
    
    <xsl:template match="p[1]/span">
        <journal-institution>
            <xsl:apply-templates/>
        </journal-institution>
    </xsl:template>
    
    <xsl:template match="li/p[2]">
        <journal-details>
            <xsl:apply-templates/>
        </journal-details>
    </xsl:template>
    
    <xsl:template match="p[1]/a">
        <journal-website>
            <xsl:value-of select="@href"/>
        </journal-website>
    </xsl:template>
    
    
    
    
    <xsl:template match="ul">
        <xsl:apply-templates select="li">
            <xsl:sort select="span" order="ascending"/>
        </xsl:apply-templates>
    </xsl:template>
    
    
   
    
</xsl:stylesheet>