<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="2.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:tei="http://www.tei-c.org/ns/1.0"
    xmlns="http://www.w3.org/1999/xhtml">

    <xsl:output method="html" encoding="UTF-8" omit-xml-declaration="yes" indent="yes"/>
    <xsl:template match="/">
        <html>
            <head>
                <title>Progetto di Codifica di Testi - Diari di E. Artom</title>
                <link rel="stylesheet" href="https://code.jquery.com/ui/1.13.1/themes/base/jquery-ui.css" />
                <script src="https://code.jquery.com/jquery-3.6.0.js"></script>
                <script src="https://code.jquery.com/ui/1.13.1/jquery-ui.js"></script>
                <script src="main.js"></script>
                <link href="style.css" rel="stylesheet" type="text/css"/>
            </head>
            <body>
                <header>
                    <ul>
                        <li>
                            <a href="#info">Informazioni</a>
                        </li>
                        <li>
                            <a href="#p85">Pagina 85</a>
                        </li>
                        <li>
                            <a href="#p86">Pagina 86</a>
                        </li>
                        <li>
                            <a href="#p89">Pagina 89</a>
                        </li>
                    </ul>
                </header>

                <div>
                    <div id="info">
                        <div id="info" class="descrizione">
                            <article class="description">
                                <h2>Descrizione</h2>
                                <div>
                                    <ul>
                                        <li>
                                            <h3>Manoscritto</h3>
                                            <p>172 fogli di carta scritti da Emanuele Artom + 2 pagine iniziali
                                                contenenti un appunto della madre Amalia Segre Artom.
                                                Le pagine si presentano in buone condizioni.
                                                Il manoscritto è stato scritto in corsivo.</p>
                                        </li>
                                    </ul>
                                

                                    <div id="history">
                                        <ul>
                                            <li>
                                                <h3>Storia</h3>
                                                <p>La pubblicazione originale, avvenuta nel 1966 a Milano, riguarda l'esperienza partigiana di Emanuele Artom.
                                                    Questa prima edizione, parziale, offre un resoconto dettagliato della vita delle bande partigiane,
                                                    delle dinamiche sociali, dei contrasti politici e personali, nonché delle tensioni tra la popolazione locale e i combattenti.
                                                    Il periodo narrato si estende dal novembre 1943 al febbraio 1944, basandosi sugli scritti di Artom, spesso redatti a penna o a matita su fogli d'occasione.
                                                    
                                                    Successivamente, nel 2008, Guri Schwarz curò una seconda edizione completa.
                                                    Quest'ultima, intitolata "Diari" e pubblicata dal CDEC, copre il periodo dal 1 gennaio 1940 al 10 settembre 1943.
                                                    Oltre ai diari, questa edizione comprende documentazione conservata presso l'Archivio dell'Istituto piemontese per la Storia della Resistenza e della Società Contemporanea.
                                                    Questa documentazione fornisce informazioni dettagliate sulla vita culturale torinese, la persecuzione razziale, gli effetti dei bombardamenti alleati sulla popolazione
                                                    e i processi sociali che si svilupparono tra la caduta di Mussolini e l'inizio dell'occupazione tedesca.</p>
                                            </li>
                                        </ul>
                                    </div>  
                                </div>
                            </article>
                        </div>
                    </div>
                    <article>
                        <div id="bottoni">
                            <h2>Visualizza</h2>
                            <button id="supplied">Supplied</button>
                            <button id="expan">Expan</button>
                            <button id="del">Del</button>
                            <button id="hide">Nascondi</button>
                        </div>
                    </article>   
                </div>

                <article id="p85">
                    <h2> Pagina 85 </h2>

                        <div id="pag85" class="imageDisplay">
                            <img class="image">
                                <xsl:attribute name="src">
                                    <xsl:value-of select="//tei:surface[@xml:id='pag85']/tei:graphic/@url"/>
                                </xsl:attribute>
                            </img>
                            <div class="pageDisplay">
                                <xsl:apply-templates select="//tei:body/tei:div/tei:ab[@n = '85']" />
                            </div>
                        </div>
                </article>

                <article id="p86">
                    <h2> Pagina 86 </h2>
                        <div id="pag86" class="imageDisplay">
                            <img class="image">
                                <xsl:attribute name="src">
                                    <xsl:value-of select="//tei:surface[@xml:id='pag86']/tei:graphic/@url"/>
                                </xsl:attribute>
                            </img>
                        
                            <div class="pageDisplay">
                                <xsl:apply-templates select="//tei:body/tei:div/tei:ab[@n = '86']" />
                            </div>
                        </div>
                </article>

                <article id="p89">
                    <h2> Pagina 89 </h2>
                        <div id="pag89" class="imageDisplay">
                            <img class="image">
                                <xsl:attribute name="src">
                                    <xsl:value-of select="//tei:surface[@xml:id='pag89']/tei:graphic/@url"/>
                                </xsl:attribute>
                            </img>
                            <div class="pageDisplay">
                                <xsl:apply-templates select="//tei:body/tei:div/tei:ab[@n = '89']" />
                            </div>
                        </div>
                </article>
            </body>
        </html>

    </xsl:template>


    <xsl:template match="tei:supplied">
        <supplied>
            <xsl:apply-templates />
        </supplied>
    </xsl:template>

    <xsl:template match="tei:del">
        <del>
            <xsl:apply-templates />
        </del>
    </xsl:template>

    <xsl:template match="tei:expan">
        <expan>
            <xsl:apply-templates />
        </expan>
    </xsl:template>


    <xsl:template match="tei:pb">
        <xsl:element name="div">
            <xsl:attribute name="id">pagina_<xsl:value-of select="current()/@n" />
            </xsl:attribute>
        </xsl:element>
    </xsl:template>


    <xsl:template match="tei:lb">
        <br />
        <xsl:element name="span">
            <xsl:attribute name="class">riga</xsl:attribute>
            <b>
                <xsl:value-of select="@n" />
            </b>
        </xsl:element>
    </xsl:template>


    <xsl:template match="tei:surface">
        <xsl:element name="img">
            <xsl:attribute name="src">
                <xsl:value-of select="tei:graphic/@url" />
            </xsl:attribute>
        </xsl:element>
    </xsl:template>

</xsl:stylesheet>
