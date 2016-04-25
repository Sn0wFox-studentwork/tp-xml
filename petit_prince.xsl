<?xml version="1.0" encoding="UTF-8"?>

<!-- New document created with EditiX at Mon Apr 04 15:33:33 CEST 2016 -->

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="html"/>

  <!--GLOBAL-->
  <xsl:template match="/">
    <div id="prince" hidden="">
      <xsl:apply-templates  select="//paragr"/>
    </div>
  </xsl:template>

  <!--PHRASE-FR-->
  <xsl:template match="//phrase[@langue='fr']">
    <span class="fr" hidden="">
      <xsl:value-of select="phrase"/>
      <xsl:apply-templates/>
    </span>
  </xsl:template>

  <!--PHRASE-HU-->
  <xsl:template match="//phrase[@langue='hu']">
    <span class="hu" style="color:brown; font-style:italic" hidden="">
      <xsl:value-of select="phrase"/>
      <xsl:apply-templates/>
    </span>
  </xsl:template>

  <!--PARAGRAPH-NARRATION-->
  <xsl:template match="//paragr[@type='narration'] ">
    <p>
      <xsl:apply-templates select="phrase[@langue='fr']"/>
      <br/>
      <xsl:apply-templates select="phrase[@langue='hu']"/>
    </p>
  </xsl:template>

  <!--PARAGRAPH-DIALOG-->
  <xsl:template match="//paragr[@type='dialogue'] ">
    <table align="center" width="90%">
      <tr>
        <td width="45%">
          <table border="1" cellpading="10" width="100%">
            <xsl:for-each select="phrase[@langue='fr']">
              <tr class="fr" hidden="">
                <td width="50px">
                  <img src="images/{@locuteur}.png" title="LePetitPrince"/>
                </td>
                <td>
                  <xsl:choose>
                    <xsl:when test="contains(., 'mouton')">
                      <span style="font-size: 24px; font-weight: bold;">
                        <xsl:value-of select="phrase"/>
                        <xsl:apply-templates/>
                        <img src="images/moutonDessin.png" title="mouton"/>
                      </span>
                    </xsl:when>
                    <xsl:otherwise>
                      <xsl:value-of select="phrase"/>
                      <xsl:apply-templates/>
                    </xsl:otherwise>
                  </xsl:choose>
                </td>
              </tr>
            </xsl:for-each>
          </table>
        </td>
        <td></td>
        <td width="45%">
          <table border="1" cellpading="10" width="100%">
            <xsl:for-each select="phrase[@langue='hu']">
              <tr class="hu" hidden="">
                <td width="50">
                  <img src="images/{@locuteur}.png"/>
                </td>
                <td>
                  <span style="color:brown; font-style:italic" >
                    <xsl:value-of select="phrase"/>
                    <xsl:apply-templates/>
                  </span>
                </td>
              </tr>
            </xsl:for-each>
          </table>
        </td>
      </tr>
    </table>
    <xsl:if test="contains(phrase, 'caisse')">
      <div style="text-align: center;">
        <img src="./images/mouton.png" title="mouton"/>
      </div>
    </xsl:if>
  </xsl:template>

</xsl:stylesheet>
