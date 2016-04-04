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

@WebServlet("/FindServlet")
public class FindServlet extends HttpServlet {
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

			String cpu = req.getParameter("cpu");
			String gpu = req.getParameter("gpu");
			String ram = req.getParameter("ram");
			String harddisk = req.getParameter("harddisk");
			String size = req.getParameter("size");
			String prize = req.getParameter("prize");
			int lprize = 0, rprize;
			if (prize == "" || prize == null) {
				rprize = 1000000;
			} else {
				lprize = Integer.parseInt(prize);
				rprize = lprize + 999;
			}

			List<PC> pclist = pcDAO.getPCListByCondition(cpu, gpu, ram,
					harddisk, size, lprize, rprize);

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
