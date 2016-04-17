package cn.teav.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.teav.dao.UserDAO;
import cn.teav.model.User;

@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {
	private UserDAO userDAO = UserDAO.getInstance();

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		String username = req.getParameter("username");
		String password = req.getParameter("password");
		String password_confirmation = req
				.getParameter("password_confirmation");
		String email = req.getParameter("email");
		if (!password.equals(password_confirmation)) {
			resp.getWriter().print("not_equal");
			return;
		}
		System.out.println(username);
		try {
			if (!userDAO.isbeUser(username)) {
				User user = new User();
				user.setUsername(username);
				user.setPassword(password);
				user.setEmail(email);
				userDAO.addUser(user);
				resp.getWriter().print("ok");
			} else {
				resp.getWriter().print("already_have");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
