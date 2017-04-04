

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.PreparedStatement;

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
	public static final String DB_URL = "jdbc:mysql://localhost:3306/test";
	public static final String USER = "root";
	public static final String PASS = "dhawal";

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
		
		String user = request.getParameter("u_name");
		String pwd = request.getParameter("password");
	    try {
	      Class.forName("com.mysql.jdbc.Driver");
	      Connection c = DriverManager.getConnection(DB_URL, USER, PASS);

	      PreparedStatement statement = c.prepareStatement("SELECT * from LoginChart where username=? and password=?");
	      statement.setString(1, user);
	      statement.setString(2, pwd);
	      ResultSet resultSet = statement.executeQuery();

	      if(resultSet.next() == false){
	    	  request.setAttribute("loggedInUser", "null");
	    	  request.getRequestDispatcher("/home.jsp").forward(request, response);
	      }
	      else{
	    	request.setAttribute("loggedInUser", resultSet.getString("username"));
	    	PreparedStatement statementUsers = c.prepareStatement("SELECT * from Users where username=?");
	    	statementUsers.setString(1, user);
	    	ResultSet resultSetUsers = statementUsers.executeQuery();
	    	resultSetUsers.next();
	    	request.setAttribute("name", resultSetUsers.getString("name") + " " + resultSetUsers.getString("surname"));
	    	request.setAttribute("streetName", resultSetUsers.getString("streetName"));
	    	request.setAttribute("city", resultSetUsers.getString("city"));
	    	request.setAttribute("province", resultSetUsers.getString("province"));
	    	request.setAttribute("pin", resultSetUsers.getString("pin"));
	    	request.setAttribute("country", resultSetUsers.getString("country"));
	  		request.getRequestDispatcher("/home.jsp").forward(request, response);
	      }
	      
	    } catch ( Exception e ) {
	      e.printStackTrace();
	      System.exit(0);
	    }
	}

}
