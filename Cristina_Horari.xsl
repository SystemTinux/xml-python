<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" indent="yes"/>
    <xsl:template match="/horari">
        <html>
            <head>
                <style type="text/css">
                    <xsl:for-each select="colors/color">
                        .<xsl:value-of select="@codi"/>{background-color: <xsl:value-of select="."/>; padding: 15px; margin: 2px;}
                    </xsl:for-each>
                    body{
                        text-align: center;
                        margin: 0px;
                        font-family: Tanseek Modern Arabic Medium;
                        font-size: 18px;
                        background-color: rgba(250,250,250,260);
                    }
                    img{
                        width: 100%;
                        height: auto;
                    }
                    table{
                        width: 100%;
                        border-collapse: collapse;
                        text-align: center;
                        font-size: 130%;
                        background-color: rgba(204,204,204,255)
                    }
                    li, a{
                        list-style-type: none;
                        padding: 6px;
                        font-size: 12px;
                        color: rgb(0,0,0);
                    }
                    ul {
                        text-align: center;
                        margin: 0 auto;
                        width: fit-content;
                        padding: 0;
                        font-size: 9px;
                    }

                    li a {
                        text-decoration: none;
                        color: #000;
                    }

                    
    
                </style>
            </head>
            <body>
                <img src="{@header}"/>
                <div>
                    <table>
                        <tr>
                            <xsl:for-each select="setmana/dia">
                                <th>
                                    <xsl:value-of select="@nom"/>
                                </th>
                            </xsl:for-each>
                        </tr>
                        <tr>
                        <xsl:for-each select="setmana/dia">
                            <td>
                                <xsl:for-each select="modul">
                                    <p class="{codi}">
                                        <xsl:value-of select="codi"/>
                                        &#160;
                                        <xsl:value-of select="nom"/>
                                    </p>
                                </xsl:for-each>
                            </td>
                        </xsl:for-each>
                    </tr>
                    </table>
                </div>
                <br/>
                <div>
                    <ul>
                        <h1><xsl:value-of select="links/@nom"/></h1>
                        <xsl:for-each select="links/link">
                            <xsl:sort select="nom"/>
                            <li>
                                <a href="{url}">
                                    <xsl:value-of select="nom"/>
                                </a>
                            </li>
                        </xsl:for-each>
                    </ul>
                </div>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>