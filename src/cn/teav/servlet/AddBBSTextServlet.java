package cn.teav.servlet;

import java.io.IOException;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.teav.dao.BBSDAO;
import cn.teav.model.BBSText;

@WebServlet("/AddBBSTextServlet")
public class AddBBSTextServlet extends HttpServlet {
	private BBSDAO bbsdao = BBSDAO.getInstance();

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		try {
			int bbsid = Integer.parseInt(req.getParameter("bbsid"));
			String username = req.getParameter("username");
			String text = req.getParameter("text");
			Date nowDate = new Date();
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
			Timestamp time = Timestamp.valueOf(sdf.format(nowDate));

			BBSText bbsText = new BBSText();
			bbsText.setBbsid(bbsid);
			bbsText.setText(text);
			bbsText.setTime(time);
			bbsText.setUsername(username);
			bbsdao.addBBSText(bbsText);

			resp.getWriter().print("ok");
		} catch (Exception e) {
			resp.getWriter().print("no");
			e.printStackTrace();
		}
	}
}
