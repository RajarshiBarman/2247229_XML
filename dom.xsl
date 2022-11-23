<?xml version="1.0"?>

<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
  <html>
    <head>
        <style>
            h1{
                text-align:center;
                font-family: 'Times New Roman', Times, serif;
                font-weight: 400;
                font-style: italic;
                color: cyan;
            }
            table{
                text-align: center;
                margin-left: auto;
                margin-right: auto;
                background-color: white;
                border: 1px solid;
            }
            table td,table th{
                padding: 15px;
            }
        </style>
    </head>
  <body>
    <center><h1>Codemia Users</h1></center>
    <table width="50%" border="1">
      <tr bgcolor="#9acd32">
        <th>Id</th>
        <th>First Name</th>
        <th>Last Name</th>
        <th>User Id</th>
        <th>Date of Birth</th>
        <th>Age</th>
        <th>Phone Number</th>
        <th>Email Id</th>
        <th>User Name</th>
      </tr>
      <xsl:for-each select="codemia/users">
        <tr>
            <td><xsl:value-of select="id"/></td>
            <td><xsl:value-of select="fname"/></td>
            <td><xsl:value-of select="lname"/></td>
            <td><xsl:value-of select="user_id"/></td>
            <td><xsl:value-of select="dob"/></td>
            <td><xsl:value-of select="age"/></td>
            <td><xsl:value-of select="phno"/></td>
            <td><xsl:value-of select="email_id"/></td>
            <td><xsl:value-of select="uname"/></td>
        </tr>
      </xsl:for-each>
    </table>

    <center><h1>Sort Users</h1></center>
    <table width="50%" border="1">
      <tr bgcolor="#9acd32">
        <th>Id</th>
        <th>First Name</th>
        <th>Last Name</th>
        <th>User Id</th>
        <th>Date of Birth</th>
        <th>Age</th>
        <th>Phone Number</th>
        <th>Email Id</th>
        <th>User Name</th>
      </tr>
      <xsl:for-each select="codemia/users">
        <xsl:sort select="fname"/>
            <tr>
                <td><xsl:value-of select="id"/></td>
                <td><xsl:value-of select="fname"/></td>
                <td><xsl:value-of select="lname"/></td>
                <td><xsl:value-of select="user_id"/></td>
                <td><xsl:value-of select="dob"/></td>
                <td><xsl:value-of select="age"/></td>
                <td><xsl:value-of select="phno"/></td>
                <td><xsl:value-of select="email_id"/></td>
                <td><xsl:value-of select="uname"/></td>
            </tr>
      </xsl:for-each>
    </table>


    <center><h1>Checking If Condition</h1></center>
    <table width="50%" border="1">
      <tr bgcolor="#9acd32">
        <th>Id</th>
        <th>First Name</th>
        <th>Last Name</th>
        <th>User Id</th>
        <th>Date of Birth</th>
        <th>Age</th>
        <th>Phone Number</th>
        <th>Email Id</th>
        <th>User Name</th>
      </tr>
      <xsl:for-each select="codemia/users">
        <xsl:if test="age>21">
            <tr>
                <td><xsl:value-of select="id"/></td>
                <td><xsl:value-of select="fname"/></td>
                <td><xsl:value-of select="lname"/></td>
                <td><xsl:value-of select="user_id"/></td>
                <td><xsl:value-of select="dob"/></td>
                <td><xsl:value-of select="age"/></td>
                <td><xsl:value-of select="phno"/></td>
                <td><xsl:value-of select="email_id"/></td>
                <td><xsl:value-of select="uname"/></td>
            </tr>
        </xsl:if>
      </xsl:for-each>
    </table>



    <center><h1>Checking Choose Condition</h1></center>
    <table width="50%" border="1">
      <tr bgcolor="#9acd32">
        <th>Id</th>
        <th>First Name</th>
        <th>Last Name</th>
        <th>User Id</th>
        <th>Date of Birth</th>
        <th>Age</th>
        <th>Phone Number</th>
        <th>Email Id</th>
        <th>User Name</th>
      </tr>
      <xsl:for-each select="codemia/users">
        <tr>
            <td><xsl:value-of select="id"/></td>
            <td><xsl:value-of select="fname"/></td>
            <td><xsl:value-of select="lname"/></td>
            <td><xsl:value-of select="user_id"/></td>
            <td><xsl:value-of select="dob"/></td>
            <xsl:choose>
                <xsl:when test="age = 21">
                    <td bgcolor="#ff00ff">
                    <xsl:value-of select="age"/>
                    </td>
                </xsl:when>
                <xsl:otherwise>
                    <td><xsl:value-of select="age"/></td>
                </xsl:otherwise>
            </xsl:choose>
            <td><xsl:value-of select="phno"/></td>
            <td><xsl:value-of select="email_id"/></td>
            <td><xsl:value-of select="uname"/></td>
        </tr>
      </xsl:for-each>
    </table>

  </body>
  </html>
</xsl:template>
</xsl:stylesheet>