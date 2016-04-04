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
import cn.teav.dao.PCDAO;
import cn.teav.model.News;
import cn.teav.model.PC;

@WebServlet("/SearchServlet")
public class SearchServlet extends HttpServlet {
	private PCDAO pcDAO = PCDAO.getInstance();
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
			News news = newslist.get(0);
			req.setAttribute("news1", news);
			news = newslist.get(1);
			req.setAttribute("news2", news);
			news = newslist.get(2);
			req.setAttribute("news3", news);

			String SearchInput = req.getParameter("searchinput");

			List<PC> pclist = pcDAO.getPCListBySearchInput(SearchInput);

			PC nullpc = PC.getDefaultPC();
			while (pclist.size() < 9) {
				pclist.add(nullpc);
			}
			JSONArray json = JSONArray.fromObject(pclist);
			resp.getWriter().print(json.toString());

		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
