package frid.controllers;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import frid.dao.UserDAO;
import frid.model.User;
public class HomeController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public HomeController() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action = request.getParameter("action");
		if (action.equals("user_registration")) {
			String username = request.getParameter("username");
			String mobile = request.getParameter("mobile");
			String email = request.getParameter("email");
			String confirmPassword = request.getParameter("confirmPassword");
			String password = request.getParameter("password");
			if(password.equals(confirmPassword)){
				User user = new User();
				user.setUsername(username);
				user.setMobile(Long.parseLong(mobile));
				user.setEmail(email);	
				user.setPassword(password);
				UserDAO userDao = new UserDAO();
				if (userDao.saveUser(user) > 0) {
					response.sendRedirect("login.jsp");
				}
				else{
					request.setAttribute("message", "Something Went Wrong Please Try Again.");
					request.getRequestDispatcher("register.jsp").forward(request, response);
				}
			}else{
				request.setAttribute("message", "Please Enter Same Confirm Password");
				request.getRequestDispatcher("register.jsp").forward(request, response);
			}
		}else if (action.equals("login")) {

			String email = request.getParameter("email");
			String password = request.getParameter("password");
			
			if(email != null && password != null)
			{
				User user = new UserDAO().validateUser(email);
				if (user.getPassword()!=null && user.getPassword().equals(password)) {
					HttpSession httpSession = request.getSession();
					httpSession.setAttribute("loggedUser", user.getId());
					request.getRequestDispatcher("services.jsp").forward(request, response);
				}
			}else{
				request.setAttribute("email", "Dude Please Fill All the Values.");
				request.getRequestDispatcher("login.jsp").forward(request, response);
				
			}
	
		}
	}
}
	
