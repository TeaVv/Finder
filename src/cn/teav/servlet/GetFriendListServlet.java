package cn.teav.servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.sf.json.JSONArray;
import cn.teav.dao.UserDAO;

@WebServlet("/GetFriendListServlet")
public class GetFriendListServlet extends HttpServlet {
	private UserDAO userDAO = UserDAO.getInstance();

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		List<String> friendlist = new ArrayList<>();
		String username = req.getParameter("username");
		try {
			if (username != "" && username != null) {
				friendlist = userDAO.getFriendListbyName(username);
				resp.setCharacterEncoding("UTF-8");
				JSONArray json = JSONArray.fromObject(friendlist);
				resp.getWriter().print(json.toString());
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
