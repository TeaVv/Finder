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
import cn.teav.model.BBS;

@WebServlet("/GetBBSServlet")
public class GetBBSServlet extends HttpServlet {
	BBSDAO bbsdao = BBSDAO.getInstance();

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		try {
			List<BBS> bbsList = bbsdao.getBBSList();
			SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
			for (BBS b : bbsList) {
				b.setTimeString(df.format(b.getTime()));
			}
			resp.setCharacterEncoding("UTF-8");
			JSONArray json = JSONArray.fromObject(bbsList);
			resp.getWriter().print(json.toString());
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
}
