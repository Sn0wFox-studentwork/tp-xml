<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="html"/>

  <xsl:template match="//title">
    <ul class="media-list">
      <xsl:for-each select="//event">
        <xsl:sort select="title"/>
        <li class="event">
          <xsl:value-of select="title"/>
        </li>
      </xsl:for-each>
    </ul>
  </xsl:template>

</xsl:stylesheet>