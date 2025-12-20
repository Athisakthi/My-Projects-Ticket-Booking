package task;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

@WebServlet("/book")
public class book extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public book() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
		String name=request.getParameter("name");
		String number=request.getParameter("phone");
		long mobile=Long.parseLong(number);
		try {
			String query="select * from login";
			PreparedStatement prepare=data.login().prepareStatement(query);
			ResultSet r=prepare.executeQuery();
			while(r.next()) {
			String username=r.getString(1);
			long phone=r.getLong(2);
			if(name.equalsIgnoreCase(username)) {
				if(phone==mobile) {
					request.setAttribute("names",name);
					request.getRequestDispatcher("seat.jsp").forward(request, response);
					}
				}
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
	
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name=request.getParameter("name");
		String number=request.getParameter("phone");
		long mobile=Long.parseLong(number);
		try {
			String query="insert into login values(?,?)";
			PreparedStatement prepare=data.login().prepareStatement(query);
			prepare.setString(1,name);
			prepare.setLong(2,mobile);
			prepare.executeUpdate();
			response.sendRedirect("./signin.jsp");
		}catch(Exception e) {
			e.printStackTrace();
		}
	}

}
