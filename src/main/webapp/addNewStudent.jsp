<%@page import="Project.ConnnectionProvider"  %>
<%@page import="java.sql.*"  %>
<%
	String course=request.getParameter("course");
	String branch=request.getParameter("branch");
	String rollNo=request.getParameter("rollNo");
	String name=request.getParameter("name");
	String fatherName=request.getParameter("fatherName");
	String gender=request.getParameter("gender");

try
{
	Connection conn=ConnnectionProvider.get();
	Statement st=conn.createStatement();
	st.executeUpdate("insert into student(course,branch,rollNo,name,fatherName,gender) values('"+course+"','"+branch+"','"+rollNo+"','"+name+"','"+fatherName+"','"+gender+"')");
	response.sendRedirect("adminHome.jsp");
	}
catch(Exception e)
{
	out.println(e);
	}

%>
