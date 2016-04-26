<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html"/>

<xsl:template match="//event">
  <xsl:if test="title = 'Workaholics'">
    <ul class="media-list someEvent">
		<li><xsl:value-of select="title"/> <br/>
			le  <xsl:value-of select="substring(dtstart, 7, 2)"/>-<xsl:value-of select="substring(dtstart, 5, 2)"/>-<xsl:value-of select="substring(dtstart, 1, 4)"/> <br/>
			le  <xsl:value-of select="substring(dtend, 7, 2)"/>-<xsl:value-of select="substring(dtend, 5, 2)"/>-<xsl:value-of select="substring(dtend, 1, 4)"/> <br/>
			<xsl:value-of select="summary"/> <br/>
      <xsl:element name="a">
        <xsl:attribute name="href">
          <xsl:value-of select="url"/> <br/>
        </xsl:attribute>
        <xsl:value-of select="url"/> <br/>
      </xsl:element>
			<xsl:value-of select="description"/> <br/>
		</li>
    </ul>
  </xsl:if>
</xsl:template>

</xsl:stylesheet>
