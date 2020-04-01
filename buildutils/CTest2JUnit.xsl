<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:output method="xml" indent="yes"/>

    <xsl:template match="/Site/Testing">    
        <testsuite>
            <xsl:apply-templates select="Test"/>
        </testsuite>
    </xsl:template>

    <xsl:template match="Test">
        <xsl:variable name="testcasename"><xsl:value-of select= "Name"/></xsl:variable>
        <xsl:variable name="testcaseclassname"><xsl:value-of select= "FullName"/></xsl:variable>
        <testcase name="{$testcasename}" classname="{$testcaseclassname}">
            <xsl:if test="@Status = 'passed'">
            </xsl:if>
            <xsl:if test="@Status = 'failed'">
                <error type="error"><xsl:value-of select="Results/Measurement/Value/text()" /></error>
            </xsl:if>
            <xsl:if test="@Status = 'notrun'">
                <skipped><xsl:value-of select="Results/Measurement/Value/text()" /></skipped>
            </xsl:if>
        </testcase>
    </xsl:template>

</xsl:stylesheet>
