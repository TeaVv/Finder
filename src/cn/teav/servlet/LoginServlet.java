package cn.teav.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.teav.dao.UserDAO;
import cn.teav.model.User;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private UserDAO userDAO = UserDAO.getInstance();

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		User user = new User();
		user.setUsername(req.getParameter("username"));
		user.setPassword(req.getParameter("password"));
		user.setEmail(req.getParameter("email"));

		try {
			if (userDAO.checkUser(user)) {
				resp.getWriter().print("ok");
			} else {
				resp.getWriter().print("not_equal");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
