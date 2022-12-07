<?xml version="1.0"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
  <html>
  <body style="background-image: url('cinema.jpg');">
  
  <header style="background-color:black; color: white;font-size:20px">

    <h1>MY CINEMA</h1>
    <h5>Lifetimes of experiences in a movie session.</h5>

    <h4><a href="../index.html">Return to home</a></h4>
  </header>
	
	<br/>
    <h2 style="color: white">Movies Available</h2>
    <table border="1" cellpadding = "0" cellspacing = "0" align = "center" >
      <tr bgcolor="#ffcc00">
	  
        <th>Poster</th>
        <th>Title</th>
		<th>Description</th>
		<th>Director</th>
		<th>Genre</th>
		<th>Duration</th>

		
      </tr>
      <xsl:for-each select="cinema/film">
        <tr style="color: D3D3D3"> 
		  
		  <td><img src="{poster}" width = "400" height = "200"></img></td>
          <td width = "200" height = "150" align = "center"><xsl:value-of select="Title"/></td>
		  <td width = "400" height = "200" align = "center"><xsl:value-of select="Description"/></td>
		  <td width = "150" height = "150" align = "center"><xsl:value-of select="Director"/></td>
		  <td width = "150" height = "150" align = "center"><xsl:value-of select="Genre"/></td>
		  <td width = "100" height = "100" align = "center"><xsl:value-of select="Duration"/></td>

        </tr>
      </xsl:for-each>
    </table>
  </body>
  </html>
</xsl:template>

</xsl:stylesheet> 