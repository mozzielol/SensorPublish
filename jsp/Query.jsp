<html>
    <head>
        <h1>MAWS</h1>
    <center>
    <a href="../html/MAWS.html" class="button button-glow button-rounded button-raised button-primary">Add Sensor Description</a>
    <a href="../html/AddEvent.html" class="button button-glow button-rounded button-raised button-primary">Add Sensor Event</a>
    <a href="../jsp/Query.jsp" class="button button-glow button-rounded button-raised button-primary">Query and Download</a>
    <a href="../data/htmldata/Devices.html" class="button button-glow button-rounded button-raised button-primary">See the Xml File</a>
    <a href="../jsp/WebService.jsp" class="button button-glow button-rounded button-raised button-primary">Web Service</a>
    </center>
        <hr>
        <center>
            <link rel="stylesheet" href="../css/homePage.css"/>
            <link rel="stylesheet" href="../css/uniStyle.css"/>
            <link rel="stylesheet" href="../css/mainstyle.css"/>
            <%@ page import="org.mozzie.parsexml.*"%>
            <%@ page import="org.mozzie.query.*"%>
                <META HTTP-EQUIV="pragma" CONTENT="no-cache"> 
                <META HTTP-EQUIV="Cache-Control" CONTENT="no-cache, must-revalidate"> 
                <META HTTP-EQUIV="expires" CONTENT="Wed, 26 Feb 1997 08:21:57 GMT">
                
                <meta name="viewport" content="width=device-width, initial-scale=0.5, minimum-scale=0.5, maximum-scale=2.0, user-scalable=yes" />
        </center> 
    </head>
    <body>
        <h3><a href="../data/htmldata/Devices.html"></a></h3>
        <h3>Download Links</h3>
        <center>
              <table>
                  <tr>
                      <th>XML</th>
                      <th>JSON</th>
                      <th>RDF</th>
                      <th>Last Query File(XML)</th>
                      <th>Last Query File(TXT)</th>
                  </tr>
                  <tr>
                      <td width="15%" align="center"><a href="../data/xmldata/Devices.xml" download="Devices.xml">download</a></td>
                       <td width="15%" align="center"><a href="../data/jsondata/Devices.json" download="Devices.json">download</a></td>
                       <td width="15%" align="center"><a href="../data/rdfdata/Devices.rdf" download="Devices.rdf">download</a></td>
                      <td width="15%" align="center"><a href="../data/query.xml" download="query.xml">download</a></td>
                      <td width="15%" align="center"><a href="../data/query.txt" download="query.txt">download</a></td>
                  </tr>
              </table>
        </center>
        <h3>Query Form</h3>
            <form action="QueryResult.jsp" name="queryform" id="queryform">
                <center><textarea cols=80 rows=4 style="margin-bottom:20px" name="querystring" id="querystring"></textarea></center>
                <center>Select the Format to show the query result:<br><input type=radio name="type" id="type" value="XML" checked>XML
                <input type=radio name="type" id="type" value="TXT" style="margin-bottom:20px">TXT</center>
                <center>
                    <a  href='javascript:document.queryform.submit();' class="button button-glow button-border button-rounded button-primary">Submit</a>
                    <a  href='javascript:document.queryform.reset();' class="button button-glow button-border button-rounded button-primary">ClearAll</a>
                </center>   
            </form>
    </body>
</html>
