<html>
    <head>
        <center>
            <link rel="stylesheet" href="../css/homePage.css"/>
            <link rel="stylesheet" href="../css/uniStyle.css"/>
            <%@ page import="org.dom4j.*"%>
            <%@ page import="org.mozzie.parsexml.*"%>
            <%@ page import="org.mozzie.database.*"%>
                <META HTTP-EQUIV="pragma" CONTENT="no-cache"> 
                <META HTTP-EQUIV="Cache-Control" CONTENT="no-cache, must-revalidate"> 
                <META HTTP-EQUIV="expires" CONTENT="Wed, 26 Feb 1997 08:21:57 GMT">
                <meta http-equiv="refresh" content="0.1;url=../html/MAWS.html"> 
                <meta name="viewport" content="width=device-width, initial-scale=0.5, minimum-scale=0.5, maximum-scale=2.0, user-scalable=yes" />
        </center> 
    </head>
    <body>
        
              <%
                   XmlFileAddNode output = new XmlFileAddNode();
                   String sensorname = request.getParameter("sensorName");
                   String sensorid = request.getParameter("sensorID");
                   String sensortype = request.getParameter("sensorType");
                   String sensorlocation = request.getParameter("sensorLocation");
                   String sensorlink = request.getParameter("sensorLink");
                   output.addNode(sensorname,sensorid,sensortype,sensorlocation,sensorlink);
                    
                    XmlFileTransfer transfer = new XmlFileTransfer();
                    transfer.xmlTransfer(transfer.DEFAULT,"json");
                    transfer.xmlTransfer(transfer.DEFAULT,"rdf");
                    transfer.xmlTransfer(transfer.DEFAULT,"html");
                     String check = request.getParameter("store_in_database");
                    if (check !=null){
                        InsertDocument insert = new InsertDocument();
                        insert.insert(sensorname,sensorid,sensortype,sensorlocation,sensorlink);
                    }else{
                        return;
                    }
              %>
    </body>
</html>
