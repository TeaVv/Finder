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
import cn.teav.dao.BBSDAO;
import cn.teav.model.BBSText;

@WebServlet("/GetBBSTextServlet")
public class GetBBSTextServlet extends HttpServlet {
	BBSDAO bbsdao = BBSDAO.getInstance();

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		try {
			String bbsid = req.getParameter("bbsid");
			List<BBSText> bbstextList = bbsdao.getBBSTextList(bbsid);
			SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
			for (BBSText b : bbstextList) {
				b.setTimeString(df.format(b.getTime()));
			}
			resp.setCharacterEncoding("UTF-8");
			JSONArray json = JSONArray.fromObject(bbstextList);
			resp.getWriter().print(json.toString());
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
}
