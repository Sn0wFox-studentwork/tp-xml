<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html"/>

<xsl:template match="//title">
  <xsl:if test=". = 'Workaholics'">
    <ul class="media-list">

    </ul>
  </xsl:if>
</xsl:template>

</xsl:stylesheet>
