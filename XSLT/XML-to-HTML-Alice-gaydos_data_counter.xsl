<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:math="http://www.w3.org/2005/xpath-functions/math"
    xmlns="http://www.w3.org/1999/xhtml"
    exclude-result-prefixes="xs math"
    version="3.0">
    
    <xsl:output method="xhtml" html-version="5" omit-xml-declaration="yes" 
        include-content-type="no" indent="yes"/>
    
   <xsl:template match="/">
       <html>
           <head>
               <title>Alice's Adventures Underground</title>
               <link rel="stylesheet" type="text/css" href="aliceXSLT.css"/> 
           </head>
           <body>
         
               <h1>Alice's Adventures Underground</h1> 
               
          <div id="data-count">        
              <xsl:apply-templates select="descendant::chapter"/>
          </div>
   
           </body>
       </html>
   </xsl:template>
    
    <!-- DATA COUNT TEMPLATES -->
    
    <xsl:template match="chapter">
        <p>There are <xsl:apply-templates select="descendant::char => distinct-values() => count()"/> characters in Chapter</p>
    </xsl:template>
    
</xsl:stylesheet>