package cn.teav.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.teav.dao.UserDAO;

@WebServlet("/AddFriendServlet")
public class AddFriendServlet extends HttpServlet {
	private UserDAO userDAO = UserDAO.getInstance();

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		String username1 = req.getParameter("username1");
		String username2 = req.getParameter("username2");

		try {
			if (username1 != "" && username2 != "" && username1 != null
					&& username2 != null) {
				if (userDAO.isbeFriend(username1, username2)) {
					resp.getWriter().print("no");
				} else {
					userDAO.addFriend(username1, username2);
					resp.getWriter().print("ok");
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
