package cn.teav.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.teav.dao.NewsDAO;
import cn.teav.dao.PCDAO;
import cn.teav.model.News;
import cn.teav.model.PC;

@WebServlet("/IndexServlet")
public class IndexServlet extends HttpServlet {
	private NewsDAO newsDAO = NewsDAO.getInstance();
	private PCDAO pcDAO = PCDAO.getInstance();

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
			News news = newslist.get(0);
			req.setAttribute("news1", news);
			news = newslist.get(1);
			req.setAttribute("news2", news);
			news = newslist.get(2);
			req.setAttribute("news3", news);

			List<PC> pclist = pcDAO.getPCList();

			req.setAttribute("pclist", pclist);
			req.setAttribute("isSearched", true);

			req.getRequestDispatcher("/index.jsp").forward(req, resp);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
