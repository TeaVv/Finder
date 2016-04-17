package cn.teav.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import cn.teav.DB;
import cn.teav.model.News;

public class NewsDAO {

	private static NewsDAO instance;

	private NewsDAO() {

	}

	public static NewsDAO getInstance() {
		if (instance == null) {
			instance = new NewsDAO();
		}

		return instance;
	}

	/**
	 * 根据New_title查找News
	 * 
	 * @return list集合，存放找到的news，没有则返回空集
	 * @throws SQLException
	 */
	public List<News> getNewsListbyTitle(String news_title) throws SQLException {
		List<News> newslist = new ArrayList<>();
		String sql = "select id,title,tip,text,img1,img2,img3"
				+ " from news where title = '" + news_title + "'";
		try (Connection conn = DB.open();
				PreparedStatement stmt = conn.prepareStatement(sql)) {
			DB.setParam(stmt, new Object[] {});
			ResultSet rs = stmt.executeQuery();
			while (rs.next()) {
				newslist.add(convert(rs));
			}
			rs.close();
		}
		return newslist;
	}

	/**
	 * 查找所有News
	 * 
	 * @return list集合，存放所有的news，没有则返回空集
	 * @throws SQLException
	 */
	public List<News> getNewsList() throws SQLException {
		List<News> newslist = new ArrayList<>();
		String sql = "select id,title,tip,text,img1,img2,img3" + " from news";
		try (Connection conn = DB.open();
				PreparedStatement stmt = conn.prepareStatement(sql)) {
			DB.setParam(stmt, new Object[] {});
			ResultSet rs = stmt.executeQuery();
			while (rs.next()) {
				newslist.add(convert(rs));
			}
			rs.close();
		}
		return newslist;
	}

	private News convert(ResultSet rs) throws SQLException {
		News n = new News();
		n.setId(rs.getInt("id"));
		n.setTitle(rs.getString("title"));
		n.setTip(rs.getString("tip"));
		n.setText(rs.getString("text"));
		n.setImg1(rs.getString("img1"));
		n.setImg2(rs.getString("img2"));
		n.setImg3(rs.getString("img3"));
		return n;
	}
}
