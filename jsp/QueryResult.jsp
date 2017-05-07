<html>
    <head>
        <h1>MAWS</h1>
    <center>
    <a href="../html/MAWS.html" class="button button-raised button-primary button-pill">Add Sensor Description</a>
    <a href="../html/AddEvent.html" class="button button-raised button-primary button-pill">Add Sensor Event</a>
    <a href="../jsp/Query.jsp" class="button button-raised button-primary button-pill">Query and Download</a>
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
        <%
           String type = request.getParameter("type");
           String queryString = request.getParameter("querystring");
           QueryRdf queryRdf = new QueryRdf();
		   String result = queryRdf.getXmlResult(queryString);
		   String text = queryRdf.getTextResult(queryString);
           if ("XML".equals(type)){
        %>
             <meta http-equiv="refresh" content="0.1;url=../data/query.xml"> 
        <%
           }else if("TXT".equals(type)){
        %>
             <meta http-equiv="refresh" content="0.1;url=../data/query.txt"> 
        <%
           }
        %>
    </body>
</html>