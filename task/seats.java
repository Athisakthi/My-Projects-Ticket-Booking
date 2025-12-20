package task;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

/**
 * Servlet implementation class seats
 */
@WebServlet("/seats")
public class seats extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public seats() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		String [] seat=request.getParameterValues("seats");
		
		if(seat==null) {
			response.sendRedirect("signin.jsp");
			return;
		}
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/booking", "root", "12345");
			
			PreparedStatement prepare=con.prepareStatement("UPDATE one SET seat='booked' WHERE seatno=?");
			for(String no :seat) {
				prepare.setString(1, no);
				prepare.executeUpdate();
			}
			request.setAttribute("seats",seat);
			request.getRequestDispatcher("ticket.jsp").forward(request, response);
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
}
