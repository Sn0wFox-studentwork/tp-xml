<?xml version="1.0" encoding="UTF-8"?>

<!-- New document created with EditiX at Mon Apr 04 15:33:33 CEST 2016 -->

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:output method="html"/>
	
<xsl:template match="/">
	<html>
	<head>
		<title>
			<xsl:value-of select="//titre"/>
			<xsl:text>, de </xsl:text>
			<xsl:value-of select="//auteur "/>
		</title>
	</head>
	<body style="background-color:white;">
		<xsl:apply-templates/>
	</body>
	</html>
</xsl:template> 

<xsl:template match="infos">
	<xsl:apply-templates select="titre"/>
	<blockquote style="color:darkgreen" >
		<xsl:text>But du TP du </xsl:text>
		<xsl:value-of select="date"/>
		<xsl:text> : </xsl:text>
		<xsl:value-of select="but"/>
		<br/>
		<!-- TODO : trouver une solution générique pour les auteurs (for each) -->
		<xsl:text>Premier auteur : </xsl:text>
		<xsl:value-of select="mise_en_forme_par/auteur[1]"/>
		<br/>
		<xsl:text>Deuxième auteur : </xsl:text>
		<xsl:value-of select="mise_en_forme_par/auteur[2]"/>
		<br/>
		<xsl:text>Email du responsable : </xsl:text>
		<xsl:value-of select="email"/>
	</blockquote>
	<hr/>
</xsl:template>

<xsl:template match="titre">
	<h1 style="text-align:center; color:blue;">
		<xsl:apply-templates/>
	</h1>
</xsl:template>

<xsl:template match="//infos/auteur">
	<h2 style="text-align:center; font-style: italic;">
		<br/><xsl:value-of select="auteur"/><br/>
	</h2>
</xsl:template>

<xsl:template match="couverture">
	<div align="center">
		<img>
			<xsl:attribute name="src">
				<xsl:value-of select="@chemin"/>
			</xsl:attribute>
		</img>
	</div>
</xsl:template> 

</xsl:stylesheet>
