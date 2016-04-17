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

import cn.teav.dao.BBSDAO;
import cn.teav.model.BBS;
import cn.teav.model.BBSText;

@WebServlet("/AddBBSServlet")
public class AddBBSServlet extends HttpServlet {
	BBSDAO bbsDAO = BBSDAO.getInstance();

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		try {
			String title = req.getParameter("title");
			String tip = req.getParameter("tip");
			String text = req.getParameter("text");
			String username = req.getParameter("username");
			Date nowDate = new Date();
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
			Timestamp time = Timestamp.valueOf(sdf.format(nowDate));

			BBS bbs = new BBS();
			bbs.setTitle(title);
			bbs.setTip(tip);
			bbs.setTime(time);
			bbs.setUsername(username);
			bbs.setNum(1);
			bbsDAO.addBBS(bbs);

			BBS bbs2 = bbsDAO.getBBSbybbs(bbs);
			BBSText bbsText = new BBSText();
			bbsText.setBbsid(bbs2.getId());
			bbsText.setText(text);
			bbsText.setTime(time);
			bbsText.setUsername(username);
			bbsDAO.addBBSText(bbsText);

			resp.getWriter().print("ok");
		} catch (SQLException e) {
			resp.getWriter().print("no");
			e.printStackTrace();
		}
	}
}
