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
import cn.teav.model.User;

@WebServlet("/ShowUserDetailServlet")
public class ShowUserDetailServlet extends HttpServlet {
	private UserDAO userDAO = UserDAO.getInstance();

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		doPost(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		try {
			String username = req.getParameter("username");
			List<User> list = new ArrayList<>();
			User user = userDAO.getUser(username);
			list.add(user);

			resp.setCharacterEncoding("UTF-8");
			JSONArray json = JSONArray.fromObject(list);
			resp.getWriter().print(json.toString());
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
