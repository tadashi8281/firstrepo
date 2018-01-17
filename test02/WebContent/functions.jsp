<%@ page
	contentType="text/html"
	pageEncoding="UTF-8"
	import="java.sql.DriverManager"
	import="java.sql.Connection"
	import="java.sql.PreparedStatement"
	import="java.sql.ResultSet"
%>

<%!
String getAllDataTable(String driver, String url, String user, String pass) {

//	String driver= "org.h2.Driver";
//	String url ="jdbc:h2:file:C:\\Users\\ion\\Documents\\H2_DB\\data\\test01";
//	String user = "sa";
//	String pass = "";
	Connection con = null;
	PreparedStatement pStmt = null;
	String sql;
	ResultSet rs = null;
	String s;
	int count = 0;

	try {
		try {
			Class.forName("org.h2.Driver");

			con = DriverManager.getConnection(url, user, pass);

			System.out.println("データベースに接続しました");

			sql = "select * from TABLEMAIN";

			pStmt = con.prepareStatement(sql);

			rs = pStmt.executeQuery();

			if(rs != null) {
				s = "<table border=1 cellpadding=3>\n";
				s += "<tr style=\"background:#cccccc\">"
				   + "<th>Id</th>"
				   + "<th>Name</th>"
				   + "<th>Birthday</th></tr>\n";
				while(rs.next()) {
					s += "<tr>";
					s += "<td>" + rs.getString("ID") + "</td>";
					s += "<td>" + rs.getString("NAME") + "</td>";
					s += "<td>" + rs.getString("BIRTHDAY") + "</td></tr>\n";
					count++;
				}
				s += "</table>";
				System.out.println(count + "件のレコードを表示しました");
				return s;
			}
		}
		finally {
			if(rs != null) {
				rs.close();
				System.out.println("リザルトセットを閉じました");
			}
			if(pStmt != null) {
				pStmt.close();
				System.out.println("ステートメントを閉じました");
			}
			if(con != null) {
				con.close();
				System.out.println("データベースとの接続を切断しました");
			}
		}
	}
	catch(Exception ex) {
		return ex.getMessage();
	}
	return "";
}
%>