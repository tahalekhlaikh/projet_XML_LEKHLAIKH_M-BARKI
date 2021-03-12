<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">


<html xmlns="http://www.w3.org/1999/xhtml" lang="en" encodage="ISO-8859-1" >
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Evénements à l'EMI</title>
<meta name="keywords" content="" />
<meta name="description" content="" />

<link href="tooplate_style.css" rel="stylesheet" type="text/css" />



<link rel="stylesheet" href="css/nivo-slider.css" type="text/css" media="screen" />
<style>
#slider
{position:absolute;
top:6%;
}
</style>



</head>
<body class="homepage">

<div id="tooplate_wrapper">
	<div id="tooplate_header">
    	
        <div id="site_title"><h1><a href="index.html">Evénements à l'EMI</a></h1></div>
        
        <div class="cleaner"></div>
    </div>
    
    <div id="tooplate_menu">
        <ul>
            <li><a href="index.html">Acceuil</a></li>
            <li><a href="evenements.xml" class="current">Par Mois</a></li>
			<li><a href="evenements_type.xml">Par Catégorie</a></li>
			<li><a href="evenements_club.xml">Par Club</a></li>
        </ul>    	
        
        
		
        <div class="cleaner"></div>
    </div> <!-- end of tooplate_menu -->
    
    <div id="tooplate_middle">
	 <div id="slider">
            <a href="#"><img src="images/slideshow/photo1.jpg" title="Notre prestigieuse école" /></a>
       
        </div>
    
        <div id="tooplate_middle_subpage">
        <h2>Une panoplie d'évènements qui illuminent notre école </h2>
        <img ref="images/bla"/>
		</div>
	</div>
        
    <div id="tooplate_main">
	<h1>La liste des événements de l'année 2020 par mois</h1><br/>
    	<xsl:for-each select="evenements/mois_annee">
        <div class="col_w960">
        	
			<h2><xsl:element name="a">
                   <xsl:attribute name="href">
                      <xsl:value-of select="detail"/>
                   </xsl:attribute>
                   <xsl:value-of select="@mois"/>
                </xsl:element></h2>
			
            <div class="col_w450 float_l">
			<xsl:for-each select="evenement">
                <div class="wwd_box">
                   <xsl:element name="img">
                       <xsl:attribute name="src"><xsl:value-of select="icon"/></xsl:attribute>
                   </xsl:element>
                	<img />
                    <h3><xsl:value-of select="date"/> : <xsl:value-of select="type"/></h3>
                    <p><xsl:value-of select="titre"/></p>
                     
                    <div class="cleaner"></div>
                </div>
				</xsl:for-each>
            </div>
			
			
      
            <div class="cleaner"></div>
		</div>
		</xsl:for-each>
		
    
    	
        
        <div class="cleaner"></div>
    </div> <!-- end of main -->
        
</div> <!-- end of wrapper -->

<div id="tooplate_cr_wrapper">
<p style="padding-left: 15px; padding-top: 15px">Réalisé par :</p>
		<ul>
		<li>Adnane M'barki <a href="mbarki.adnane98@gmail.com">mbarki.adnane98@gmail.com</a></li>
		<li>Taha Lekhlaikh <a href="mailto:charfi.charifa@gmail.com">taha00lekhlaikh@gmail.com</a></li>
	
		</ul>
	<div id="tooplate_cr">
    	
        Copyright © 2020 <a href="#">Ecole Mohammadia d'Ingénieurs</a> 
        
    </div> <!-- end of footer wrapper -->
</div> <!-- end of footer -->

</body>
</html>

</xsl:template> 
</xsl:stylesheet>