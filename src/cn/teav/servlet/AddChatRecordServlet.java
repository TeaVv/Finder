package cn.teav.servlet;

import java.io.IOException;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.teav.dao.UserDAO;
import cn.teav.model.ChatRecord;

@WebServlet("/AddChatRecordServlet")
public class AddChatRecordServlet extends HttpServlet {
	UserDAO userDAO = UserDAO.getInstance();

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		try {
			String username1 = req.getParameter("username1");
			String username2 = req.getParameter("username2");
			String text = req.getParameter("text");
			Date nowDate = new Date();
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
			Timestamp time = Timestamp.valueOf(sdf.format(nowDate));

			ChatRecord chatRecord = new ChatRecord();
			chatRecord.setUsername1(username1);
			chatRecord.setUsername2(username2);
			chatRecord.setText(text);
			chatRecord.setTime(time);
			userDAO.addChatRecord(chatRecord);

			resp.getWriter().print("ok");
		} catch (SQLException e) {
			resp.getWriter().print("no");
			e.printStackTrace();
		}
	}
}
