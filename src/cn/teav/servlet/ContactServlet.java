package cn.teav.servlet;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.sf.json.JSONArray;

@WebServlet("/ContactServlet")
public class ContactServlet extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		doPost(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		String name = req.getParameter("name");
		String email = req.getParameter("email");
		String subject = req.getParameter("subject");
		String message = req.getParameter("message");

		System.out.println("name:" + name);
		System.out.println("email:" + email);
		System.out.println("subject:" + subject);
		System.out.println("message:" + message);

		Map params = new HashMap();

		params.put("msg", "我们已经收到您的消息");

		resp.setCharacterEncoding("UTF-8");
		JSONArray json = JSONArray.fromObject(params);
		resp.getWriter().print(json.toString());
	}
}
