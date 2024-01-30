<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:tei="http://www.tei-c.org/ns/1.0" xmlns="http://www.w3.org/1999/xhtml">
    <xsl:output method="html" encoding="UTF-8" indent="yes"/>

    <!-- template che definisce il documento -->
    <xsl:template match="/">
        <!-- html -->
        <html lang="it">
            
            <head>
                <meta charset="UTF-8"/>
				<meta name="author" content="Andrea Belliani"/>
				<meta name="viewport" content="width=device-width, initial-scale=1.0"/>
                <title><xsl:value-of select="TEI/teiHeader/fileDesc/title"/></title>
                <link rel="stylesheet" href="style.css"/> 
            </head>

            <body>
                <header class="header">
                    
                    <ul class="menu">
                        <li><a href="#Pag85">PAGINA 85</a></li>
                        <li><a href="#Pag86">PAGINA 86</a></li>
                        <li><a href="#Pag89">PAGINA 89</a></li>
                    </ul>
                
                </header>

                <div id="info">
                    <article>
                        <h2> Descrizione </h2>
                        <div>
                            <div>
                                <h3> Manoscritto </h3>
                                <xsl:apply-templates select="//tei:physDesc" />
                            </div>
                        
                            <div>
                                <h3> Storia </h3>
                                <xsl:apply-templates select="//tei:history" />
                            </div>
                        </div>    
                    </article>                        
                </div>            
                <article id="pag85">
                    <h2> Pagina 85 </h2>
                    <div class="pagina">
                        <div class="img">
                            <xsl:apply-templates select="//tei:surface[@xml:id='pag85']" />
                        </div>
                        <div class="text">
                            <xsl:apply-templates select="//tei:body/tei:div[@n = '85']" />
                        </div>

                    </div>

                </article>
                <article id="pag86">
                    <h2> Pagina 86 </h2>
                    <div class="pagina">
                        <div class="img">
                            <xsl:apply-templates select="//tei:surface[@xml:id='pag86']" />
                        </div>
                        <div class="text">
                            <xsl:apply-templates select="//tei:body/tei:div[@n = '86']" />
                        </div>

                    </div>
                </article>
                <article id="pag89">
                    <h2> Pagina 89 </h2>
                    <div class="pagina">
                        <div class="img">
                            <xsl:apply-templates select="//tei:surface[@xml:id='pag89']" />
                        </div>
                        <div class="text">
                            <xsl:apply-templates select="//tei:body/tei:div[@n = '89']" />
                        </div>
                    </div>
                </article>
            </body>
        </html>
    </xsl:template>
    
    <xsl:template match="tei:history">
        <xsl:element name="div">
            <xsl:attribute name="id">history</xsl:attribute>
            <xsl:element name="h3">Storia</xsl:element>
        </xsl:element>
    </xsl:template>

    <xsl:template match="tei:del">
        <del>
            <xsl:apply-templates />
        </del>
    </xsl:template>

    <xsl:template match="tei:supplied">
        <supplied>
            <xsl:apply-templates />
        </supplied>
    </xsl:template>

    <xsl:template match="tei:add">
        <add>
            <xsl:apply-templates />
        </add>
    </xsl:template>


    <xsl:template match="tei:abbr">
        <abbr>
            <xsl:apply-templates />
        </abbr>
    </xsl:template>

    <xsl:template match="tei:expan">
        <expan>
            <xsl:apply-templates />
        </expan>
    </xsl:template>

    <xsl:template match="tei:subst">
        <subst>
            <xsl:apply-templates />
        </subst>
    </xsl:template>

    <xsl:template match="tei:unclear">
        <unclear>
            <xsl:apply-templates />
        </unclear>
    </xsl:template>

    <xsl:template match="tei:sic">
        <sic>
            <xsl:apply-templates />
        </sic>
    </xsl:template>

    <xsl:template match="tei:placeName">
        <placeName>
            <xsl:apply-templates />
        </placeName>
    </xsl:template>

    <xsl:template match="tei:persName">
        <persName>
            <xsl:apply-templates />
        </persName>
    </xsl:template>

</xsl:stylesheet>