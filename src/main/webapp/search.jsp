<%@page import="java.sql.*"  %>
<%@page import="Project.ConnnectionProvider" %>

<% 
String searchStudent = request.getParameter("searchStudent");
String searchResult = request.getParameter("searchResult");
if (searchStudent != null && !searchStudent.isEmpty()) {
    try {
        
        Connection conn = ConnnectionProvider.get();

        // Create a statement
        Statement statement = conn.createStatement();

        // Execute the query
        ResultSet resultSet = statement.executeQuery("select * from student where rollNo= '" + searchStudent + "'");

        // Display or process the results
        while (resultSet.next()) {
            // Retrieve data from the result set
            String data1 = resultSet.getString("rollNo");
            String data2 = resultSet.getString("course");
            String data3 = resultSet.getString("name");
            String data4 = resultSet.getString("gender");
            String data5 = resultSet.getString("fatherName");
            String data6 = resultSet.getString("branch");
            

            // Display or process the retrieved data
            out.println("Roll Number: "+data1+"<br>");
            out.println("Course: "+data2+"<br>");
            out.println("Name: "+data3+"<br>");
            out.println("Gender: "+data4+"<br>");
            out.println("Father Name: "+data5+"<br>");
            out.println("Branch: "+data6+"<br>"+"<br>");
            %><a href="adminHome.jsp">Back</a><%
        }

     
    } catch (Exception e) {
        out.println(e);
    }
} else if (searchResult != null && !searchResult.isEmpty()) {
    try {
        
        Connection conn = ConnnectionProvider.get();

        // Create a statement
        Statement statement = conn.createStatement();

        // Execute the query
        ResultSet resultSet = statement.executeQuery("select * from result where rollNo= '" + searchResult + "'");

        // Display or process the results
        while (resultSet.next()) {
            // Retrieve data from the result set
            String data1 = resultSet.getString("rollNo");
            String data2 = resultSet.getString("sub1");
            String data3 = resultSet.getString("sub2");
            String data4 = resultSet.getString("sub3");
            String data5 = resultSet.getString("sub4");
            String data6 = resultSet.getString("sub5");
            String data7 = resultSet.getString("sub6");
            String data8 = resultSet.getString("sub7");

            // Display or process the retrieved data
            out.println("Roll Number: "+data1+"<br>");
            out.println("ENGG. PHYSICS-I: "+data2+"<br>");
            out.println("ENGG. CHEMISTRY: "+data3+"<br>");
            out.println("ENGG. MATHEMATICS-I: "+data4+"<br>");
            out.println("BASIC ELECTRICAL ENGG: "+data5+"<br>");
            out.println("ELECTRONIC ENGG.: "+data6+"<br>");
            out.println("ENGG. CHEMISTRY LAB: "+data7+"<br>");
            out.println("ENGG. PHYSICS LAB: "+data8+"<br>"+"<br>");
            
            %><a href="adminHome.jsp">Back</a><%
        }

     
    } catch (Exception e) {
        out.println(e);
    }
} else {
    // Handle the case when the search query is empty
    out.println("Please enter a search query.");
}
%>