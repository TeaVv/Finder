package cn.teav.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.sf.json.JSONArray;
import cn.teav.dao.NewsDAO;
import cn.teav.model.News;

@WebServlet("/NewsServlet")
public class NewsServlet extends HttpServlet {
	private NewsDAO newsDAO = NewsDAO.getInstance();

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		doPost(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		try {
			List<News> newslist = newsDAO.getNewsList();

			resp.setCharacterEncoding("UTF-8");
			JSONArray json = JSONArray.fromObject(newslist);
			resp.getWriter().print(json.toString());
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
