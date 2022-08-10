<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>   
<%@ page import="java.util.*" %>   

<%-- <%@ include file="index.jsp"%>
 --%>
 
<!DOCTYPE html>
<html>


<head>

	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">

	<title>Welcome : <%=session.getAttribute("login")%></title>

 	<link rel="stylesheet" href="admin.css" type="text/css" >
	<script>
		function validate() {
			var username = document.form2.username;
			var password = document.form2.psd;
			var fname = document.form2.f_name;
			var lname = document.form2.l_name;
			var email = document.form2.email;
			var phone = document.form2.number;
			var rId = document.form2.rId;


			if (username.value == null || username.value == "" || password.value == null || password.value == "" || fname.value==null || fname.value == "" || 
					lname.value==null || lname.value == "" || email.value==null || email.value == "" || phone.value == null || phone.value == "" 
					|| rId.value == null || rId.value == "" )  {
				if (username.value == null || username.value == "") {
	 				username.style.background = '#f08080';
					username.focus();
				} else {
					 username.style.background = '#282828';
				}
				
				if (password.value == null || password.value == "") {
	 				password.style.background = '#f08080'; 
					password.focus();
				}else  {
					 password.style.background = '#282828';
				} 
				
				if (fname.value == null || fname.value == "") {
					fname.style.background = '#f08080'; 
					fname.focus();
				}else {
					fname.style.background = '#282828';
				} 
				
				if (lname.value == null || lname.value == "") {
					lname.style.background = '#f08080'; 
					lname.focus();
				}else  {
					lname.style.background = '#282828';
				} 
				
				if (email.value == null || email.value == "") {
					email.style.background = '#f08080'; 
					email.focus();
				}else  {
					email.style.background = '#282828';
				} 
				
				if (phone.value == null || phone.value == "") {
					phone.style.background = '#f08080'; 
					phone.focus();
				}else {
					phone.style.background = '#282828';
				} 
				
				if (rId.value == null || rId.value == "") {
					rId.style.background = '#f08080'; 
					rId.focus();
				}else {
					rId.style.background = '#282828';
				} 
				return false;
			}
			return true;
		}
		
		
		
		function validate2() {
/*  			document.writeln(-1);
 			var saa = document.form3.userIDtoDelete.value;
 			document.writeln(saa);
 			document.writeln(document.form3.userIDtoDelete.value);

			var u = document.getElementsById("userIDtoDelete")[0];
 			document.writeln(u); */
 			var userId = document.form3.userIDtoDelete;
/* 			document.writeln(userId);
 */
			if (userId.value == null || userId.value == ""){
				if (userId.value == null || userId.value == "")  {
					userId.style.background = '#f08080';
					userId.focus();
				}else {
					userId.style.background = '#282828';
				}
				 
				return false;
			}   
			return true;
		}
		
		
		function validateAddClass() {
			var cId = document.form4.cAbIDtoAdd;
 			var enr = document.form4.enrollmentToAdd;
			var cap = document.form4.capacityToAdd;
			var mode = document.form4.modeToAdd;
			var loc = document.form4.locationToAdd;
			var time = document.form4.timeToAdd;
			var iId = document.form4.instructorIDToAdd;
			
			
			if (cId.value == null || cId.value == "" || enr.value==null || enr.value == "" || 
					cap.value==null || cap.value == "" || mode.value==null || mode.value == "" 
					|| loc.value == null || loc.value == "" || time.value == null || time.value == "" || iId.value == null || iId.value == "")  {
				
				if (cId.value == null || cId.value == "") {
					cId.style.background = '#f08080';
					cId.focus();
				} else {
					cId.style.background = '#282828';
				}
				
				
				if (enr.value == null || enr.value == "") {
					enr.style.background = '#f08080'; 
					enr.focus();
				}else {
					enr.style.background = '#282828';
				} 
				
				if (cap.value == null || cap.value == "") {
					cap.style.background = '#f08080'; 
					cap.focus();
				}else  {
					cap.style.background = '#282828';
				} 
				
				
				if (mode.value == null || mode.value == "") {
					mode.style.background = '#f08080'; 
					mode.focus();
				}else {
					phone.style.background = '#282828';
				} 
				
				if (loc.value == null || loc.value == "") {
					loc.style.background = '#f08080'; 
					loc.focus();
				}else {
					loc.style.background = '#282828';
				} 
				
				if (time.value == null || time.value == "") {
					time.style.background = '#f08080'; 
					time.focus();
				}else {
					time.style.background = '#282828';
				} 


				if (iId.value == null || iId.value == "") {
					iId.style.background = '#f08080'; 
					iId.focus();
				}else {
					iId.style.background = '#282828';
				} 

				return false;
			}

			return true;
		}
		
		function validateModifyClass() {
			var cId = document.form5.classIDtoLookupWhenModifying;
 			var enr = document.form5.enrollmentToModify;
			var cap = document.form5.capacityToModify;
			var mode = document.form5.modeToModify;
			var loc = document.form5.locationToModify;
			var time = document.form5.timeToModify;
			var iId = document.form5.instructorIDToModify;

			
			if (cId.value == null || cId.value == "" || enr.value==null || enr.value == "" || 
					cap.value==null || cap.value == "" || mode.value==null || mode.value == "" 
					|| loc.value == null || loc.value == "" || time.value == null || time.value == "" || iId.value == null || iId.value == "" )  {
				if (cId.value == null || cId.value == "") {
					cId.style.background = '#f08080';
					cId.focus();
				} else {
					cId.style.background = '#282828';
				}
				
				
				if (enr.value == null || enr.value == "") {
					enr.style.background = '#f08080'; 
					enr.focus();
				}else {
					enr.style.background = '#282828';
				} 
				
				if (cap.value == null || cap.value == "") {
					cap.style.background = '#f08080'; 
					cap.focus();
				}else  {
					cap.style.background = '#282828';
				} 
				
				
				if (mode.value == null || mode.value == "") {
					mode.style.background = '#f08080'; 
					mode.focus();
				}else {
					phone.style.background = '#282828';
				} 
				
				if (loc.value == null || loc.value == "") {
					loc.style.background = '#f08080'; 
					loc.focus();
				}else {
					loc.style.background = '#282828';
				} 
				
				if (time.value == null || time.value == "") {
					time.style.background = '#f08080'; 
					time.focus();
				}else {
					time.style.background = '#282828';
				} 
				if (iId.value == null || iId.value == "") {
					iId.style.background = '#f08080'; 
					iId.focus();
				}else {
					iId.style.background = '#282828';
				} 
				return false;
			}
			return true;
		}
		
		function validateDeleteClass() {
			var cId = document.form6.classIDtoDelete;
			
			if (cId.value == null || cId.value == "") {
				if (cId.value == null || cId.value == "") {
					cId.style.background = '#f08080';
					cId.focus();
				} else {
					cId.style.background = '#282828';
				}
				return false;
			}
			return true;
		}
		
		function validateAddCourse() {
			var cdId = document.form7.courseDepartmentIDtoAdd;
			var abv = document.form7.courseAbvtoAdd;
			var name = document.form7.courseNametoAdd;
			var desc = document.form7.courseDesctoAdd;
			var cred = document.form7.courseCredstoAdd;

			if (cdId.value == null || cdId.value == "" || abv.value == null || abv.value == "" || name.value == null || name.value == "" || desc.value == null || desc.value == "" || 
					cred.value == null || cred.value == "") {
				if (cdId.value == null || cdId.value == "") {
					cdId.style.background = '#f08080';
					cdId.focus();
				} else {
					cdId.style.background = '#282828';
				}
				if (abv.value == null || abv.value == "") {
					abv.style.background = '#f08080';
					abv.focus();
				} else {
					abv.style.background = '#282828';
				}
				if (name.value == null || name.value == "") {
					name.style.background = '#f08080';
					name.focus();
				} else {
					name.style.background = '#282828';
				}
				if (desc.value == null || desc.value == "") {
					desc.style.background = '#f08080';
					desc.focus();
				} else {
					desc.style.background = '#282828';
				}
				if (cred.value == null || cred.value == "") {
					cred.style.background = '#f08080';
					cred.focus();
				} else {
					cred.style.background = '#282828';
				}
				return false;
			}
			return true;
		}
		
		function validateAddDepartment() {
			var dName = document.form8.departmentNametoAdd;

			if (dName.value == null || dName.value == "") {
				if (dName.value == null || dName.value == "") {
					dName.style.background = '#f08080';
					dName.focus();
				} else {
					dName.style.background = '#282828';
				}
				return false;
			}
			return true;
		}

		
	</script>
</head>

<body>

<div class="myspan">
<%!
	//this function check the time conflict, it take a time and a list time
	//compare the time with all times in the list, all time are special format in string
	//cooperation with time24h function only
	//if conflict return false, if not conflict return true
	//core algorithm designed by Youhao Chen at SJSU
	//import java.sql.Time; is required 
	static boolean checkConflict(String time, String []classesTime)
	{
		boolean ok = true;
		
		for(int i = 0;i<classesTime.length;i++)
		{
			String []dayAry = new String []{"W","Th","Tu","Fr"};
			for(int j=0;j<dayAry.length;j++)
			{
				//"m" is special alpha
				if(classesTime[i].contains(dayAry[j])&&time.contains(dayAry[j]) || classesTime[i].charAt(0)=='M'&&time.charAt(0)=='M' )
				{
					//convert time
					//old classes
					Time []cAry = time24h(classesTime[i]);
					Time []tAry = time24h(time);
					if(tAry[0].compareTo(cAry[0])<0 &&tAry[1].compareTo(cAry[0])>0)	// before ctime
					{
					
							ok=false;
						
					}
					if(tAry[0].compareTo(cAry[0])>0 &&tAry[0].compareTo(cAry[1])<0)
					{
						ok = false;
					}
					if(tAry[0].compareTo(cAry[0])==0||tAry[1].compareTo(cAry[1])==0)
					{
						ok =false;
					}
				}
					
			}
			
			
			
			
		}
			
		return ok;
		
		
	}
	//convert string to the sql.time
	//convert am&pm String time into time format of sql.time
	//import java.sql.time 
	//core algorithm designed by Youhao Chen at SJSU
	static Time []time24h(String aStr)//parameter like；MW 1:00pm-2；00pm
	{
		aStr = aStr.replace(" ", "");
		String [] arry = new String[2];
		String []result;
		String[]timeArray = new String[2];
		Time []resultTime = new Time[2];
		for(int i =0;i<aStr.length();i++)
		{
			//getthe first number position;
			if(Character.isDigit(aStr.charAt(i)))
			{
				String time=aStr.substring(i);
				arry = time.split("-",2);
				
				//out
				i+=100;
			}
		}
		//change it to the 24 mode
		// the format here is like 1:00pm
		
		String s1 ="";
		for (int i=0;i<arry.length;i++)
		{
			/* arry[i].trim(); */
			if(arry[i].contains("P"))
			{
				timeArray = arry[i].split(":",2);
				//1
				int h = Integer.parseInt(timeArray[0]);
				if(h!=12)
				{
				h +=12;
				}
				 s1 = Integer.toString(h)+":"+timeArray[1].substring(0,timeArray[1].length()-3);//cut last two char
				 
				
				
			}
			if(arry[i].contains("A"))
			{
				//01:00am
				 s1 = "0"+arry[i].substring(0,arry[i].length()-2); //cut last two char
				
				
			}
			//seconds
			s1=s1+":00";
			
			resultTime[i] = Time.valueOf(s1); 
		}
		
		
		
		return resultTime;
	}
%>

<%
try {	
	Class.forName("com.mysql.cj.jdbc.Driver"); //load driver
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/student_portal?autoReconnect=true&useSSL=false", "root", "970630");


	if (request.getParameter("add_user") != null){ 
		String username = request.getParameter("username");
		String email = request.getParameter("email");
		String phone = request.getParameter("number");
		String roleId = request.getParameter("rId");
	
		String selectUsernameSql = "SELECT username FROM users WHERE username='" + username + "'";
		String selectEmailSql = "SELECT email FROM users WHERE email='" + email + "'";
		String selectPhoneSql = "SELECT phone FROM users WHERE phone='" + phone + "'";
		String selectRoleIdSql = "SELECT role_id FROM roles WHERE role_id='" + roleId + "'";

		Statement statement = con.createStatement();
		ResultSet rs = statement.executeQuery(selectUsernameSql);
		
		if (!rs.next()){ //no existing user with the same userName	
			 rs = statement.executeQuery(selectEmailSql);
			 if (!rs.next()){ //no existing user with the same email	
				 rs = statement.executeQuery(selectPhoneSql);
				 if (!rs.next()){ //no existing user with the same phone
					 	rs = statement.executeQuery(selectRoleIdSql);
					 	if (rs.next()) { //role id is valid
						 	String password = request.getParameter("psd");
							String fname = request.getParameter("f_name");
							String lname = request.getParameter("l_name");
							
							rs = statement.executeQuery("SELECT count(user_id) FROM student_portal.users;");
							rs.next();
							int newId = rs.getInt(1) + 1;
								
							String sqlAddStudentStatment = "INSERT INTO `student_portal`.`users` (`user_id`, `username`, `password`, `first_name`, `last_name`, `email`, `phone`)"
									+ " VALUES('"+newId+"','"+username+"'"	+",'"+password+"','"+fname+"','"+lname+"','"+email+"','"+phone+"');";
							//rs =
							statement.executeUpdate(sqlAddStudentStatment);
														
							sqlAddStudentStatment = "INSERT INTO `student_portal`.`has` (`user_id`, `role_id`) VALUES('"+newId+"','"+roleId+"');";
							statement.executeUpdate(sqlAddStudentStatment);
							rs.close();
							statement.close();
					 	}else{
					 		out.println("Role is invalid. Choose a different role id.");
					 	}
						//con.close(); //close connection
				 }else {
					 out.println("Phone is invalid. Choose a different phone number.");
				 }	
			}else {
				out.println("Email is invalid. Choose a different email.");
			}	
		}else {
			out.println("Username is invalid. Choose a different username.");
		}	
		
	} 
	
	
	if (request.getParameter("delete_user") != null){ 
		String userId = request.getParameter("userIDtoDelete");

		String selectUsernameSql = "SELECT * FROM student_portal.users WHERE user_id='" + userId + "';";

		Statement statement = con.createStatement();
		ResultSet rs = statement.executeQuery(selectUsernameSql);
		
		if (rs.next()){ // if the user id exists
			String checkIfAdminSql = "SELECT * FROM student_portal.has JOIN student_portal.roles ON student_portal.has.user_id='" + userId + "' AND has.role_id=roles.role_id AND roles.role_name='admin'";
			rs = statement.executeQuery(checkIfAdminSql);
			if (!rs.next()){ // if the user id does not belong to an admin
				statement.executeUpdate("DELETE FROM `student_portal`.`has` WHERE (`user_id` = '" + userId + "');");
				statement.executeUpdate("DELETE FROM `student_portal`.`comment` WHERE (`user_id` = '" + userId + "');");
				statement.executeUpdate("DELETE FROM `student_portal`.`save` WHERE (`user_id` = '" + userId + "');");
				statement.executeUpdate("DELETE FROM `student_portal`.`grade` WHERE (`user_id` = '" + userId + "');");
				statement.executeUpdate("DELETE FROM `student_portal`.`register` WHERE (`user_id` = '" + userId + "');");
				statement.executeUpdate("DELETE FROM `student_portal`.`users` WHERE (`user_id` = '" + userId + "');");
			} else {  // if the user id does not belongs to an admin
				out.println("Cannot delete user. User id belongs to an admin.");
			}
		} else { // if the user id doesn't exist
			out.println("No user with the selected user id exists.");
		}

		/* rs.close();
		statement.close(); */
		//con.close(); //close connection
	}
	
	
	
	if (request.getParameter("add_class") != null){ 
		String cId = request.getParameter("cAbIDtoAdd");
		String enr = request.getParameter("enrollmentToAdd");
		String cap = request.getParameter("capacityToAdd");
		String mode = request.getParameter("modeToAdd");
		String loc = request.getParameter("locationToAdd");
		String time = request.getParameter("timeToAdd");
		String iId = request.getParameter("instructorIDToAdd");

		String selectClassSql = "SELECT * FROM student_portal.is WHERE course_abbreviation='" + cId + "';";
		Statement statement = con.createStatement();
		ResultSet rs = statement.executeQuery(selectClassSql);
		if (rs.next()){// means a class with this abbreviation is mapped to a course (meaning valid)
			
			rs = statement.executeQuery("SELECT * FROM student_portal.has WHERE user_id='" + iId + "' AND role_id='"+2+"';");
			if (rs.next()){ // means the id is for an instructor that exists
			
				rs = statement.executeQuery("SELECT time FROM student_portal.teach NATURAL JOIN student_portal.classes WHERE user_id='" + iId + "';");

				List<String> resultList = new ArrayList<String>();
				while (rs.next()) {
				    resultList.add(rs.getString(1));
				}
				String[] resultArr = new String[resultList.size()];
				resultArr = resultList.toArray(resultArr);
				boolean noConflict = checkConflict(time, resultArr);
				if (noConflict) { // means no conflict for instructor so we can proceed
					rs = statement.executeQuery("SELECT count(*) FROM student_portal.classes;");
					rs.next();
					int newClassId = rs.getInt(1) + 1;
					
					String sqlAddClassStatement = "INSERT INTO `student_portal`.`classes` (`class_id`, `enrollment`, `capacity`, `mode_of_instruction`, `location`, `time`) " + 
					" VALUES('"+newClassId+"','"+enr+"','"+cap+"','"+mode+"','"+loc+"','"+time+"');";
					statement.executeUpdate(sqlAddClassStatement);
						
					String sqlAddToIsStatement = "INSERT INTO `student_portal`.`is` (`class_id`, `course_abbreviation`) VALUES('"+newClassId+"','"+cId+"');";
					statement.executeUpdate(sqlAddToIsStatement);
				} else{
					out.println("There is a time conflict in the instructor's schedule.");
				}
			}else{
				out.println("An instructor with that instructor id does not exist.");
			}
		}else{
			out.println("Cannot create a class for a course that does not exist.");
		}
	}
	
	
	
	
	
	
	if (request.getParameter("modify_class") != null){ 
		String cId = request.getParameter("classIDtoLookupWhenModifying");
		String enr = request.getParameter("enrollmentToModify");
		String cap = request.getParameter("capacityToModify");
		String mode = request.getParameter("modeToModify");
		String loc = request.getParameter("locationToModify");
		String time = request.getParameter("timeToModify");
		String iId = request.getParameter("instructorIDToModify");

		String selectClassSql = "SELECT * FROM student_portal.classes WHERE class_id='" + cId + "';";
		Statement statement = con.createStatement();
		ResultSet rs = statement.executeQuery(selectClassSql);
		if (rs.next()){// means a class with that id exists	
			
			rs = statement.executeQuery("SELECT * FROM student_portal.has WHERE user_id='" + iId + "' AND role_id='"+2+"';");
			if (rs.next()){ // means the id is for an instructor that exists
				
				rs = statement.executeQuery("SELECT time FROM student_portal.teach NATURAL JOIN student_portal.classes WHERE user_id='" + iId + "';");
				List<String> resultList = new ArrayList<String>();
				while (rs.next()) {
				    resultList.add(rs.getString(1));
				}
				String[] resultArr = new String[resultList.size()];
				resultArr = resultList.toArray(resultArr);
				boolean noConflict = checkConflict(time, resultArr);
				if (noConflict) { // means no conflict for instructor so we can proceed
					statement.executeUpdate("UPDATE student_portal.teach SET user_id='"+iId+"' WHERE class_id='"+cId+"';");
					statement.executeUpdate("UPDATE student_portal.classes SET enrollment='"+enr+"', capacity='"+cap+"', mode_of_instruction='"+mode+"', location='"+loc+"', time='"+time+"' WHERE class_id='"+cId+"';");
				} else{
					out.println("There is a time conflict in the instructor's schedule.");
				}
			} else{
				out.println("An instructor with that instructor id does not exist.");
			}
		}else{
			out.println("Could not find class with given class_id.");
		}
	}
	
	if (request.getParameter("delete_class") != null){ 
		String cId = request.getParameter("classIDtoDelete");

		String selectUsernameSql = "SELECT * FROM student_portal.classes WHERE class_id='" + cId + "';";

		Statement statement = con.createStatement();
		ResultSet rs = statement.executeQuery(selectUsernameSql);
		
		if (rs.next()){ // if the class exists
			statement.executeUpdate("DELETE FROM `student_portal`.`is` WHERE (`class_id` = '" + cId + "');");
			statement.executeUpdate("DELETE FROM `student_portal`.`comment` WHERE (`class_id` = '" + cId + "');");
			statement.executeUpdate("DELETE FROM `student_portal`.`save` WHERE (`class_id` = '" + cId + "');");
			statement.executeUpdate("DELETE FROM `student_portal`.`grade` WHERE (`class_id` = '" + cId + "');");
			statement.executeUpdate("DELETE FROM `student_portal`.`register` WHERE (`class_id` = '" + cId + "');");
			statement.executeUpdate("DELETE FROM `student_portal`.`teach` WHERE (`class_id` = '" + cId + "');");
			statement.executeUpdate("DELETE FROM `student_portal`.`classes` WHERE (`class_id` = '" + cId + "');");
		} else { // if the user id doesn't exist
			out.println("No class with the selected class id exists.");
		}

		rs.close();
		statement.close();

	}
	
	
	
	if (request.getParameter("add_course") != null){ 
		String cdId = request.getParameter("courseDepartmentIDtoAdd");
		String abv = request.getParameter("courseAbvtoAdd");
		String name = request.getParameter("courseNametoAdd");
		String desc = request.getParameter("courseDesctoAdd");
		String cred = request.getParameter("courseCredstoAdd");
		
		String selectDepSql = "SELECT * FROM student_portal.departments WHERE department_id='" + cdId + "';";
		Statement statement = con.createStatement();
		ResultSet rs = statement.executeQuery(selectDepSql);
		if (rs.next()){ // means a department with that department id exists
			String selectCourseSql = "SELECT * FROM student_portal.catalogue_courses WHERE course_abbreviation='" + abv + "';";
			rs = statement.executeQuery(selectCourseSql);
			if (!rs.next()){// means a catalogue course with this abbreviation doesn't already exist				
				String sqlAddCourseStatement = "INSERT INTO `student_portal`.`catalogue_courses` (`course_abbreviation`, `course_name`, `course_description`, `credits`) " + 
				" VALUES('"+abv+"','"+name+"','"+desc+"','"+cred+"');";
				statement.executeUpdate(sqlAddCourseStatement);
				
				String sqlAddInStatement = "INSERT INTO `student_portal`.`in` (`course_abbreviation`, `department_id`) " + 
				" VALUES('"+abv+"','"+cdId+"');";
				statement.executeUpdate(sqlAddInStatement);
			}else{
				out.println("Cannot create a catalogue course as a course with this abbreviation already exists.");
			}

		}else{
			out.println("No department with that department id exists. Try again.");
		}
	}
	
	
	
	if (request.getParameter("add_department") != null){ 
		String dName = request.getParameter("departmentNametoAdd");
		
		String selectDepSql = "SELECT * FROM student_portal.departments WHERE department_name='" + dName + "';";
		Statement statement = con.createStatement();
		ResultSet rs = statement.executeQuery(selectDepSql);
		if (!rs.next()){// means a department with this abbreviation does not already exist
			rs = statement.executeQuery("SELECT count(*) FROM student_portal.departments;");
			rs.next();
			int newDepartmentId = rs.getInt(1) + 1;
			
			String sqlAddDepartmentStatement = "INSERT INTO `student_portal`.`departments` (`department_id`, `department_name`) " + 
			" VALUES('"+newDepartmentId+"','"+dName+"');";
			statement.executeUpdate(sqlAddDepartmentStatement);
		}else{
			out.println("A department with that name already exists. Try again.");
		}
	}
	
}
catch(Exception e)
{
	out.println(e);
}
%>

</div>
    <div class="admin-home">
    	<button class ="profileButton" onclick="window.location.href='modifyProfile.jsp'">Profile</button>
    
		<%
		if(session.getAttribute("login") == null || session.getAttribute("login")==" ") //check condition unauthorize user not direct access welcome.jsp page
		{
			response.sendRedirect("index.jsp"); 
		}
		%>
	
	
	
		<div class="admin-home-title">
			Welcome, Admin <%=session.getAttribute("login")%>
		</div>

		<!-- <form name="form1" method="POST" action="index.jsp"> -->

		<div class ="add-user-form">
			<h1> Add User </h1>
			<form name ="form2" class="form2" method = "post" onsubmit="return validate();">
				username:  
				<input type="search" name = "username"/>	
				<br><br>				
				password:
				<input type="search" name = "psd"/>
				<br><br>							
				first name:  
				<input type="search" name = "f_name"/>
				<br><br>							
				last name: 
				<input type="search" name = "l_name"/>
				<br><br>					
				email:
				<input type="search" name = "email"/>
				<br><br>							
				phone: 
				<input type="search" name = "number"/>
				<br><br>
				role id: 
				<input type="search" name = "rId"/>
				<br><br>
				<input type="submit" class="add_user" name="add_user" value="Add User"/>
			</form>
			
		</div>
		
		
		<div class ="delete-user-form">
			<h1> Delete User </h1>
			<form name ="form3" class="form3" method = "post" onsubmit="return validate2();">
				user id:  
				<input type="search" name = "userIDtoDelete" id ="userIDtoDelete"/>	
				<br><br>
							
				<input type="submit" class="delete_user" name="delete_user" value="Delete User"/>
			</form>
		</div> <br>
		
		
		
		<div class ="add-class-form">
			<h1> Add Class </h1>
			<form name ="form4" class="form4" method = "post" onsubmit="return validateAddClass();">
				Course Abbreviation:  
				<input type="search" name = "cAbIDtoAdd"/>	
				<br><br>
				Enrollment:  
				<input type="search" name = "enrollmentToAdd"/>	
				<br><br>		
				Capacity:  
				<input type="search" name = "capacityToAdd"/>	
				<br><br>		
				Mode of Instruction:  
				<input type="search" name = "modeToAdd"/>	
				<br><br>		
				Location:  
				<input type="search" name = "locationToAdd"/>	
				<br><br>		
				Time:  
				<input type="search" name = "timeToAdd"/>	
				<br><br>
				Instructor id:  
				<input type="search" name = "instructorIDToAdd"/>	
				<br><br>		
				<input type="submit" class="add_class" name="add_class" value="Add Class"/>
			</form>
		</div><br>
		
		<div class ="modify-class-form">
			<h1> Modify Class </h1>
			<form name ="form5" class="form5" method = "post" onsubmit="return validateModifyClass();">
				Class id:  
				<input type="search" name = "classIDtoLookupWhenModifying"/>	
				<br><br>
				New Enrollment:  
				<input type="search" name = "enrollmentToModify"/>	
				<br><br>		
				New Capacity:  
				<input type="search" name = "capacityToModify"/>	
				<br><br>		
				New Mode of Instruction:  
				<input type="search" name = "modeToModify"/>	
				<br><br>		
				New Location:  
				<input type="search" name = "locationToModify"/>	
				<br><br>		
				New Time:  
				<input type="search" name = "timeToModify"/>	
				<br><br>
				Instructor id:  
				<input type="search" name = "instructorIDToModify"/>	
				<br><br>			
				<input type="submit" class="modify_class" name="modify_class" value="Modify Class"/>
			</form>
		</div><br>
		
		<div class ="delete-class-form">
			<h1> Delete Class </h1>
			<form name ="form6" class="form6" method = "post" onsubmit="return validateDeleteClass();">
				Class id:  
				<input type="search" name = "classIDtoDelete"/>	
				<br><br>
							
				<input type="submit" class="delete_class" name="delete_class" value="Delete Class"/>
			</form>
		</div><br>
		
		<div class ="add-course-form">
			<h1> Add Course </h1>
			<form name ="form7" class="form7" method = "post" onsubmit="return validateAddCourse();">
				Department id:  
				<input type="search" name = "courseDepartmentIDtoAdd"/>	
				<br><br>
				Abbreviation:  
				<input type="search" name = "courseAbvtoAdd"/>	
				<br><br>
				Name:  
				<input type="search" name = "courseNametoAdd"/>	
				<br><br>
				Description:  
				<input type="search" name = "courseDesctoAdd"/>	
				<br><br>
				Credits:  
				<input type="search" name = "courseCredstoAdd"/>	
				<br><br>
							
				<input type="submit" class="add_course" name="add_course" value="Add Course"/>
			</form>
		</div><br>
		
		<div class ="add-department-form">
			<h1> Add Department </h1>
			<form name ="form8" class="form8" method = "post" onsubmit="return validateAddDepartment();">
				Department name:  
				<input type="search" name = "departmentNametoAdd"/>	
				<br><br>
							
				<input type="submit" class="add_department" name="add_department" value="Add Department"/>
			</form>
		</div><br>
		
		
		
		<a href="logout.jsp">Logout</a>
    </div>

</body>

</html>
