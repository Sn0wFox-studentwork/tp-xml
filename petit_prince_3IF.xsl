<?xml version="1.0" encoding="UTF-8"?>

<!-- New document created with EditiX at Mon Apr 04 15:33:33 CEST 2016 -->

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<xsl:output method="html"/>
	
	<xsl:template match="/">
	<html>
		<head>
			<title>
				<xsl:value-of select="//titre"/>
				<xsl:text> de </xsl:text>
				<xsl:value-of select="//auteur"/>
			</title>
		</head>
			<body style="background-color:white;">
			<xsl:apply-templates/>
		</body>
	</html>
</xsl:template>

<xsl:template match="titre">
	<h1 style="text-align:center; color:blue;"></h1>
</xsl:template>

</xsl:stylesheet>


