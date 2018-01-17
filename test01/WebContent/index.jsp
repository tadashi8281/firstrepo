<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" 
          content="text/html; charset=UTF-8">
    <title>日経ソフトウエアは…</title>
  </head>
  <body>
    <form method="POST">
      <button name="button1">日経ソフトウエアは…</button>
    </form>
    <%
      if (null != request.getParameter("button1")) {
        out.print("毎月24日発売です！");

        String s = "<script>alert('毎月24日発売です！')</script>";
        out.print(s);
      }
    %>
  </body>
</html>
