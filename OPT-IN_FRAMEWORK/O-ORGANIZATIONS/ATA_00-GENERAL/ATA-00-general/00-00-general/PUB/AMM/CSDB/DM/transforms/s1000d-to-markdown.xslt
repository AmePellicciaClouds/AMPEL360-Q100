<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" 
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs">
    
    <xsl:output method="text" encoding="UTF-8" indent="no"/>
    <xsl:strip-space elements="*"/>
    
    <!-- ═══════════════════════════════════════════════════════════════ -->
    <!-- ROOT TEMPLATE                                                    -->
    <!-- ═══════════════════════════════════════════════════════════════ -->
    <xsl:template match="/dmodule">
        <xsl:text># </xsl:text>
        <xsl:value-of select="identAndStatusSection/dmAddress/dmAddressItems/dmTitle/techName"/>
        <xsl: text>&#10;&#10;</xsl:text>
        
        <!-- Metadata Block -->
        <xsl:text>**Data Module Code:** </xsl:text>
        <xsl:call-template name="format-dmc"/>
        <xsl:text>&#10;</xsl:text>
        
        <xsl:text>**Language:** </xsl:text>
        <xsl:value-of select="identAndStatusSection/dmAddress/dmIdent/language/@languageIsoCode"/>
        <xsl: text>-</xsl:text>
        <xsl:value-of select="identAndStatusSection/dmAddress/dmIdent/language/@countryIsoCode"/>
        <xsl:text>&#10;</xsl:text>
        
        <xsl:text>**Issue:** </xsl:text>
        <xsl:value-of select="identAndStatusSection/dmAddress/dmIdent/issueInfo/@issueNumber"/>
        <xsl:text>-</xsl:text>
        <xsl:value-of select="identAndStatusSection/dmAddress/dmIdent/issueInfo/@inWork"/>
        <xsl:text>&#10;</xsl:text>
        
        <xsl:text>**Issue Date:** </xsl:text>
        <xsl:value-of select="identAndStatusSection/dmAddress/dmAddressItems/issueDate/@year"/>
        <xsl:text>-</xsl:text>
        <xsl:value-of select="format-number(identAndStatusSection/dmAddress/dmAddressItems/issueDate/@month, '00')"/>
        <xsl:text>-</xsl:text>
        <xsl:value-of select="format-number(identAndStatusSection/dmAddress/dmAddressItems/issueDate/@day, '00')"/>
        <xsl:text>&#10;</xsl:text>
        
        <xsl:text>**Status:** </xsl:text>
        <xsl:value-of select="identAndStatusSection/dmStatus/@issueType"/>
        <xsl:text>&#10;</xsl:text>
        
        <xsl:text>**Security Classification:** </xsl:text>
        <xsl:value-of select="identAndStatusSection/dmStatus/security/@securityClassification"/>
        <xsl:text>&#10;&#10;</xsl:text>
        
        <xsl: text>---&#10;&#10;</xsl:text>
        
        <!-- Apply content templates -->
        <xsl:apply-templates select="content/description"/>
    </xsl:template>
    
    <!-- ═══════════════════════════════════════════════════════════════ -->
    <!-- DMC FORMATTING                                                   -->
    <!-- ═══════════��═══════════════════════════════════════════════════ -->
    <xsl:template name="format-dmc">
        <xsl:variable name="dmCode" select="identAndStatusSection/dmAddress/dmIdent/dmCode"/>
        <xsl:value-of select="concat(
            'DMC-',
            $dmCode/@modelIdentCode, '-',
            $dmCode/@systemDiffCode, '-',
            $dmCode/@systemCode, '-',
            $dmCode/@subSystemCode, '-',
            $dmCode/@subSubSystemCode, '-',
            $dmCode/@assyCode, '-',
            $dmCode/@disassyCode, $dmCode/@disassyCodeVariant, '-',
            $dmCode/@infoCode, $dmCode/@infoCodeVariant, '-',
            $dmCode/@itemLocationCode, '_',
            $dmCode/@learnCode, '-',
            $dmCode/@learnEventCode
        )"/>
    </xsl:template>
    
    <!-- ═══════════════════════════════════════════════════════════════ -->
    <!-- LEVELLED PARA (HIERARCHICAL SECTIONS)                           -->
    <!-- ═══════════════════════════════════════════════════════════════ -->
    <xsl:template match="levelledPara">
        <xsl:variable name="level" select="count(ancestor::levelledPara) + 2"/>
        
        <!-- Title -->
        <xsl:if test="title">
            <xsl:call-template name="repeat-string">
                <xsl:with-param name="str" select="'#'"/>
                <xsl:with-param name="count" select="$level"/>
            </xsl: call-template>
            <xsl:text> </xsl: text>
            <xsl: value-of select="title"/>
            <xsl:text>&#10;&#10;</xsl:text>
        </xsl:if>
        
        <!-- Apply child templates -->
        <xsl: apply-templates select="*[not(self::title)]"/>
        
        <xsl:text>&#10;</xsl:text>
    </xsl:template>
    
    <!-- ═══════════════════════════════════════════════════════════════ -->
    <!-- PARA (PARAGRAPH)                                                 -->
    <!-- ═══════════════════════════════════════════════════════════════ -->
    <xsl:template match="para">
        <xsl:apply-templates/>
        <xsl:text>&#10;&#10;</xsl:text>
    </xsl:template>
    
    <xsl:template match="simplePara">
        <xsl:apply-templates/>
        <xsl:text>&#10;</xsl:text>
    </xsl:template>
    
    <!-- ═══════════════════════════════════════════════════════════════ -->
    <!-- EMPHASIS                                                         -->
    <!-- ═══════════════════════════════════════════════════════════════ -->
    <xsl:template match="emphasis[@emphasisType='em01']">
        <xsl: text>**</xsl:text>
        <xsl:apply-templates/>
        <xsl:text>**</xsl: text>
    </xsl: template>
    
    <xsl:template match="emphasis[@emphasisType='em02']">
        <xsl:text>*</xsl:text>
        <xsl:apply-templates/>
        <xsl:text>*</xsl:text>
    </xsl:template>
    
    <!-- ═══════════════════════════════════════════════════════════════ -->
    <!-- LISTS                                                            -->
    <!-- ══════��════════════════════════════════════════════════════════ -->
    <xsl:template match="randomList">
        <xsl: apply-templates select="listItem"/>
        <xsl: text>&#10;</xsl: text>
    </xsl: template>
    
    <xsl:template match="listItem">
        <xsl:text>- </xsl:text>
        <xsl:apply-templates/>
        <xsl: text>&#10;</xsl: text>
    </xsl: template>
    
    <xsl:template match="sequentialList">
        <xsl:apply-templates select="listItem"/>
        <xsl:text>&#10;</xsl:text>
    </xsl:template>
    
    <xsl:template match="sequentialList/listItem">
        <xsl:number format="1. "/>
        <xsl:apply-templates/>
        <xsl:text>&#10;</xsl:text>
    </xsl:template>
    
    <!-- ═══════════════════════════════════════════════════════════════ -->
    <!-- DEFINITION LIST                                                  -->
    <!-- ═══════════════════════════════════════════════════════════════ -->
    <xsl:template match="definitionList">
        <xsl:apply-templates select="definitionListItem"/>
    </xsl:template>
    
    <xsl:template match="definitionListItem">
        <xsl:text>### </xsl:text>
        <xsl:value-of select="listItemTerm"/>
        <xsl:text>&#10;&#10;</xsl:text>
        <xsl:apply-templates select="listItemDefinition"/>
        <xsl:text>&#10;</xsl:text>
    </xsl:template>
    
    <xsl:template match="listItemDefinition">
        <xsl:apply-templates/>
    </xsl:template>
    
    <!-- ═══════════════════════════════════════════════════════════════ -->
    <!-- TABLES                                                           -->
    <!-- ═══════════════════════════════════════════════════════════════ -->
    <xsl:template match="table">
        <xsl:text>&#10;</xsl:text>
        <xsl:apply-templates select="tgroup"/>
        <xsl:text>&#10;</xsl:text>
    </xsl:template>
    
    <xsl:template match="tgroup">
        <!-- Header Row -->
        <xsl:text>| </xsl:text>
        <xsl:for-each select="thead/row/entry">
            <xsl:apply-templates/>
            <xsl:text> | </xsl:text>
        </xsl:for-each>
        <xsl:text>&#10;</xsl:text>
        
        <!-- Separator Row -->
        <xsl: text>|</xsl:text>
        <xsl:for-each select="thead/row/entry">
            <xsl:text>---|</xsl:text>
        </xsl:for-each>
        <xsl:text>&#10;</xsl:text>
        
        <!-- Body Rows -->
        <xsl: for-each select="tbody/row">
            <xsl:text>| </xsl:text>
            <xsl:for-each select="entry">
                <xsl:apply-templates/>
                <xsl:text> | </xsl:text>
            </xsl:for-each>
            <xsl:text>&#10;</xsl:text>
        </xsl:for-each>
    </xsl:template>
    
    <!-- ═══════════════════════════════════════════════════════════════ -->
    <!-- WARNINGS AND CAUTIONS                                            -->
    <!-- ═══════════════════════════════════════════════════════════════ -->
    <xsl:template match="warningAndCautionPara">
        <xsl: text>&#10;> [! </xsl:text>
        <xsl:choose>
            <xsl:when test="warningAndCautionType = 'warning'">
                <xsl:text>WARNING</xsl:text>
            </xsl:when>
            <xsl:when test="warningAndCautionType = 'caution'">
                <xsl:text>CAUTION</xsl:text>
            </xsl:when>
            <xsl:otherwise>
                <xsl:text>NOTE</xsl:text>
            </xsl:otherwise>
        </xsl:choose>
        <xsl:text>]&#10;</xsl:text>
        <xsl:text>> </xsl:text>
        <xsl:apply-templates select="warningAndCautionInfo/para"/>
        <xsl:text>&#10;</xsl:text>
    </xsl:template>
    
    <!-- ═══════════════════════════════════════════════════════════════ -->
    <!-- CROSS-REFERENCES                                                 -->
    <!-- ═══════════════════════════════════════════════════════════════ -->
    <xsl:template match="internalRef">
        <xsl:text>[</xsl:text>
        <xsl:apply-templates/>
        <xsl:text>](#</xsl:text>
        <xsl:value-of select="translate(@internalRefId, '_', '-')"/>
        <xsl:text>)</xsl:text>
    </xsl: template>
    
    <xsl:template match="dmRef">
        <xsl: variable name="dmc" select="dmRefIdent/dmCode"/>
        <xsl:text>[</xsl:text>
        <xsl:value-of select="dmRefAddressItems/dmTitle/techName"/>
        <xsl:text>](DMC-</xsl:text>
        <xsl:value-of select="$dmc/@modelIdentCode"/>
        <xsl:text>-</xsl: text>
        <xsl: value-of select="$dmc/@systemDiffCode"/>
        <xsl:text>-</xsl:text>
        <xsl:value-of select="$dmc/@systemCode"/>
        <xsl:text>-.. .-</xsl:text>
        <xsl:value-of select="$dmc/@infoCode"/>
        <xsl:text>)</xsl:text>
    </xsl:template>
    
    <xsl:template match="externalPubRef">
        <xsl: text>`</xsl:text>
        <xsl:value-of select="externalPubRefIdent/externalPubCode"/>
        <xsl:text>`</xsl:text>
    </xsl:template>
    
    <!-- ═══════════════════════════════════════════════════════════════ -->
    <!-- VERBATIM TEXT (CODE BLOCKS)                                      -->
    <!-- ═══════════════════════════════════════════════════════════════ -->
    <xsl:template match="verbatimText">
        <xsl:text>&#10;```&#10;</xsl:text>
        <xsl:value-of select="."/>
        <xsl:text>&#10;```&#10;&#10;</xsl:text>
    </xsl:template>
    
    <!-- ═══════════════════════════════════════════════════════════════ -->
    <!-- UTILITY TEMPLATES                                                -->
    <!-- ═══════════════════════════════════════════════════════════════ -->
    <xsl:template name="repeat-string">
        <xsl:param name="str"/>
        <xsl:param name="count"/>
        <xsl:if test="$count > 0">
            <xsl:value-of select="$str"/>
            <xsl: call-template name="repeat-string">
                <xsl:with-param name="str" select="$str"/>
                <xsl: with-param name="count" select="$count - 1"/>
            </xsl:call-template>
        </xsl:if>
    </xsl:template>
    
</xsl:stylesheet>
