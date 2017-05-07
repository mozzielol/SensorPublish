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
        <h3>Download Links(Last transfer file)</h3>
        <center>
              <table>
                  <tr>
                      <th>XML</th>
                      <th>JSON</th>
                      <th>RDF</th>
                      <th>HTML</th>
                  </tr>
                  <tr>
                      <td width="15%" align="center"><a href="../data/xmldata/InputFile.xml" download="InputXmlFile.xml">download</a></td>
                       <td width="15%" align="center"><a href="../data/jsondata/InputFile.json" download="TransferedJsonFile.json">download</a></td>
                       <td width="15%" align="center"><a href="../data/rdfdata/InputFile.rdf" download="TransferedRdfFile.rdf">download</a></td>
                      <td width="15%" align="center"><a href="../data/htmldata/InputFile.html" download="TransferedHtmlFile.html">download</a></td>
              </table>
        </center>
        <h3>Transfer Xml</h3>
            <form action="WebService.jsp" name="serviceform" id="serviceform">
                <center><textarea cols=80 rows=8 style="margin-bottom:20px" name="content" id="content"></textarea></center>
                <center>Select the Format to output:<br><input type=radio name="type" id="type" value="json" checked>Json
                <input type=radio name="type" id="type" value="html">Html
                <input type=radio name="type" id="type" value="rdf" style="margin-bottom:20px">Rdf</center>
                <center>
                    <a  href='javascript:document.serviceform.submit();' class="button button-glow button-border button-rounded button-primary">Transfer</a>
                    <a  href='javascript:document.serviceform.reset();' class="button button-glow button-border button-rounded button-primary">ClearAll</a>
                </center>   
            </form>
        <%
           String type = request.getParameter("type");
           String content = request.getParameter("content");
           StringBuffer buffer = new StringBuffer();
           if(content!=null){
                XmlFileTransferWebService service = new XmlFileTransferWebService();
                if("json".equals(type)){
                    service.transferService(content,"json");
                    buffer = service.readFile("json");
                }else if("rdf".equals(type)){
                    service.transferService(content,"rdf");
                    buffer = service.readFile("rdf");
                }else if("html".equals(type)){
                    service.transferService(content,"html");
                    buffer = service.readFile("html");
                }
           }
        %>
             <center><textarea cols=80 rows=8 style="margin-bottom:20px" name="output" id="output"><%=buffer%></textarea></center>
    </body>
</html>
