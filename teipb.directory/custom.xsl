<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0"
    xmlns:eg="http://www.tei-c.org/ns/Examples" xmlns:tei="http://www.tei-c.org/ns/1.0"
    xmlns:xd="http://www.oxygenxml.com/ns/doc/xsl" xmlns:exsl="http://exslt.org/common"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" xmlns:fn="http://www.w3.org/2005/xpath-functions"
    extension-element-prefixes="exsl msxsl" xmlns="http://www.w3.org/1999/xhtml"
    xmlns:html="http://www.w3.org/1999/xhtml" xmlns:TEI="http://www.whitmanarchive.org/namespace"
    xml:id="ppp.00271" 
    exclude-result-prefixes="xsl tei xd eg fn #default">


    <!-- import teibp.xsl, which allows templates, 
         variables, and parameters from teibp.xsl 
         to be overridden here. -->
    <xsl:import href="teibp.xsl"/>


    <rendition xml:id="blockquote" n="tiebp:blockquote" scheme="css"> display:block; font-size:90%;
        margin-left:3em; padding-left:1em; border-left: 1px solid gray; margin-top:.75em;
        margin-bottom:.75em; padding-top:.75em; padding-bottom:.75em; </rendition>


    <xsl:strip-space elements="*"/>

    <xsl:output indent="yes"/>
    
    
    <rendition xml:id="blue" scheme="css">
        color:blue;
    </rendition>
    <rendition xml:id="b" n="teibp:bold" scheme="css">
        font-weight:bold;
    </rendition> 
    


    <xsl:template match="TEI">
        <Whitman-Leaves1>
            <xsl:apply-templates/>
        </Whitman-Leaves1>
    </xsl:template>

    <xsl:template match="teiHeader">
        <rendition xml:id="blue" scheme="css">
            color:blue;
        </rendition>
        <rendition xml:id="b" n="teibp:bold" scheme="css">
            font-weight:bold;
        </rendition> 
        
        <xsl:apply-templates> </xsl:apply-templates>
    </xsl:template>

    <xsl:template match="titlePart">
        <xsl:apply-templates> </xsl:apply-templates>
    </xsl:template>


    <xsl:template match="@* | node()">
        <xsl:copy>
            <xsl:apply-templates select="@* | node()"/>
        </xsl:copy>
    </xsl:template>
    

    <xsl:template match="/">
        <xsl:apply-templates/>
    </xsl:template>

    <titlePart rendition=" #u #center"/>







</xsl:stylesheet>
