<!-- SpotBugs XSL for ReviewDog errorformat. Source: https://raw.githubusercontent.com/reviewdog/errorformat/master/xsl/spotbugs.xsl -->
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="text"/>
  <xsl:template match="BugInstance">
    <xsl:for-each select="Class/SourceLine">
      <xsl:value-of select="@sourcepath"/>:<xsl:value-of select="@start"/>: <xsl:value-of select="../../LongMessage"/>
      <xsl:text>&#10;</xsl:text>
    </xsl:for-each>
  </xsl:template>
  <xsl:template match="/">
    <xsl:apply-templates select="BugCollection/BugInstance"/>
  </xsl:template>
</xsl:stylesheet>
