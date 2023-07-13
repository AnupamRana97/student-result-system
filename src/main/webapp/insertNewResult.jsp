<%@page import="Project.ConnnectionProvider" %>
<%@page import="java.sql.*" %>

<%
	String rollNo=request.getParameter("rollNo");
	String sub1=request.getParameter("sub1");
	String sub2=request.getParameter("sub2");
	String sub3=request.getParameter("sub3");
	String sub4=request.getParameter("sub4");
	String sub5=request.getParameter("sub5");
	String sub6=request.getParameter("sub6");
	String sub7=request.getParameter("sub7");
	
	try{
		Connection conn=ConnnectionProvider.get();
		Statement st=conn.createStatement();
		st.execute("insert into result(rollNo,sub1,sub2,sub3,sub4,sub5,sub6,sub7) values('"+rollNo+"','"+sub1+"','"+sub2+"','"+sub3+"','"+sub4+"','"+sub5+"','"+sub6+"','"+sub7+"')");
		response.sendRedirect("adminHome.jsp");
	}
	catch(Exception e){
		out.println(e);
	}
	
	
%>