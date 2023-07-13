package Project;
import java.io.IOException;
import java.sql.*;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class StudentInfoConnection extends HttpServlet{
	public void insertStudent(String course, String branch, String rollNo, String name, String fatherName, String gender) {
        try {
            Connection conn = ConnnectionProvider.get();
            Statement st = conn.createStatement();
            String query = "INSERT INTO student(course, branch, rollNo, name, fatherName, gender) " +
                    "VALUES('" + course + "','" + branch + "','" + rollNo + "','" + name + "','" + fatherName + "','" + gender + "')";
            st.executeUpdate(query);
            conn.close();
        } catch (Exception e) {
            System.out.println(e);
        }
    }
	
	 protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException{
		 try {
		 resp.sendRedirect("adminHome.jsp");
		 }catch (Exception e) {
			System.out.println(e);
		}
	 }
}
