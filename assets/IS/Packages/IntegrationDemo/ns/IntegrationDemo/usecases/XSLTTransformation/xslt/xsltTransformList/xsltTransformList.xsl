<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<catalog>
		<xsl:for-each select="list/item[@type='cd']">
			<cd>
				<title><xsl:value-of select="@title"/></title>
				<artist><xsl:value-of select="@artist"/></artist>
				<country><xsl:value-of select="@country"/></country>
				<company><xsl:value-of select="@company"/></company>
				<year><xsl:value-of select="@year"/></year>
			</cd>
		</xsl:for-each>
		</catalog>
	</xsl:template>
</xsl:stylesheet>