package cn.teav.servlet;

import java.io.IOException;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.sf.json.JSONArray;
import cn.teav.dao.UserDAO;
import cn.teav.model.ChatRecord;

@WebServlet("/GetChatRecordServlet")
public class GetChatRecordServlet extends HttpServlet {
	UserDAO userDAO = UserDAO.getInstance();

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		try {
			String username1 = req.getParameter("username1");
			String username2 = req.getParameter("username2");
			List<ChatRecord> chatrecordlist = userDAO.getChatRecordList(
					username1, username2);
			SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
			for (ChatRecord c : chatrecordlist) {
				c.setTimeString(df.format(c.getTime()));
			}
			resp.setCharacterEncoding("UTF-8");
			JSONArray json = JSONArray.fromObject(chatrecordlist);
			resp.getWriter().print(json.toString());
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
}
