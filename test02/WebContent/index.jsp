<%@ page contentType="text/html" pageEncoding="UTF-8" %>
<%@ include file="functions.jsp" %>
<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>test01:tablemain</title>
  </head>
  <body>
  <h2>test01スキーマ:tablemainテーブル</h2>
    <%
      String driver = "org.h2.Driver";
      String url = "jdbc:h2:file:C:\\Users\\ion\\Documents\\H2_DB\\data\\test01";
      String user = "sa";
      String pass = "";
      out.print(getAllDataTable(driver, url, user, pass));
    %>

  </body>
</html>
