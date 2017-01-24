

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import org.sqlite.JDBC;

import com.mysql.jdbc.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class CheckLogin
 */
@WebServlet("/CheckLogin")
public class CheckLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public CheckLogin() {
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
		//doGet(request, response);
		final String DB_URL = "jdbc:mysql://localhost:3306/test";
		final String USER = "root";
		final String PASS = "dhawal";
		Connection c = null;
		Statement stmt = null;
		String user = request.getParameter("u_name");
		String pwd = request.getParameter("password");
	    try {
	      Class.forName("com.mysql.jdbc.Driver");
	      c = DriverManager.getConnection(DB_URL, USER, PASS);
	      stmt = c.createStatement();
	      java.sql.PreparedStatement statement = c.prepareStatement("SELECT * from LoginChart where username=? and password=?");
	      statement.setString(1, user);
	      statement.setString(2, pwd);
	      ResultSet resultSet = statement.executeQuery();
	      if(resultSet.next() == false)
	    	  request.getRequestDispatcher("/Failed.jsp").forward(request, response);
	      else
	  		request.getRequestDispatcher("/Success.jsp").forward(request, response);
	      
	    } catch ( Exception e ) {
	      System.err.println( e.getClass().getName() + ": " + e.getMessage() );
	      System.exit(0);
	    }
	}

}
