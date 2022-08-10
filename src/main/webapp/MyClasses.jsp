<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.util.*"%>
<%@ page import="java.io.*"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="myClasses.css" type="text/css">

</head>
<body>
	<button class ="backButton" onclick="window.location.href='studentHome.jsp'">&#8249;</button>
	<h1>
		<%=session.getAttribute("login")%>'s Class Schedule
	</h1>
	<h2>
		<br>
		

		<table border='1'>
			<tr>
				<th>Abbreviation</th>
				<th>Mode</th>
				<th>Location</th>
				<th>Time</th>
				<th>Name</th>
			</tr>

			<%
			String db = "student_portal";
			String user = "root"; // assumes database name is the same as username

			String name = session.getAttribute("login").toString();
			String id = session.getAttribute("id").toString();
			try {
				java.sql.Connection con;
				Class.forName("com.mysql.cj.jdbc.Driver");
				con = DriverManager.getConnection("jdbc:mysql://localhost:3306/" + db, "root", "970630");

				Statement stmt = con.createStatement();
				/* 	ResultSet rs=stmt.executeQuery("SELECT user_id FROM student_portal.users where username = '"+name+"';");
				*/
				String sqlSt = "SELECT class_id FROM student_portal.register where user_id = '" + id + "';";
				ResultSet rs = stmt.executeQuery(sqlSt);

				Vector vCrn = new Vector();
				while (rs.next()) {
					String class_id = rs.getString(1);
					vCrn.add(class_id);

				}
				//this statment take class info

				Statement stContent = con.createStatement();
				String sInfo = "SELECT course_abbreviation,mode_of_instruction,location, time, course_name From student_portal.classes join student_portal.is using(class_id) join student_portal.catalogue_courses using(course_abbreviation)where class_id in (select class_id from student_portal.register where user_id = '"
				+ id + "'); ";
				ResultSet rsInfo = stContent.executeQuery(sInfo);
				while (rsInfo.next()) {
					%>
					<tr>
						<td><%=rsInfo.getString(1)%></td>
						<td><%=rsInfo.getString(2)%></td>
						<td><%=rsInfo.getString(3)%></td>
						<td><%=rsInfo.getString(4)%></td>
						<td><%=rsInfo.getString(5)%></td>
					</tr>
					<%
				}
			//test id obtain method
			/* for(int i = 0;i<vCrn.size();i++)
			{
			out.println("</br>"+vCrn.get(i)+"\n");

			}
			 */

			con.close();
			} catch (SQLException e) {
			out.println("SQLException caught: " + e.getMessage());
			}
			%>


		</table>
		
	</h2>
			
<!-- 		<form action='studentHome.jsp' style='margin-top: 100px'>
			<input style='color: blue; width: 100px' value=' back ' type='submit' onclick="window.location.href='studentHome.jsp" />
		</form>
 -->
</body>
</html>