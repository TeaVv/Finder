package cn.teav.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import cn.teav.DB;
import cn.teav.model.BBS;
import cn.teav.model.BBSText;

public class BBSDAO {

	private static BBSDAO instance;

	private BBSDAO() {

	}

	public static BBSDAO getInstance() {
		if (instance == null) {
			instance = new BBSDAO();
		}

		return instance;
	}

	/**
	 * 添加bbs
	 * 
	 * @throws SQLException
	 */
	public void addBBS(BBS bbs) throws SQLException {
		String sql = "insert into bbs (title, tip, num, username, time) values('"
				+ bbs.getTitle()
				+ "','"
				+ bbs.getTip()
				+ "','"
				+ bbs.getNum()
				+ "','" + bbs.getUsername() + "','" + bbs.getTime() + "')";
		try (Connection conn = DB.open();
				PreparedStatement stmt = conn.prepareStatement(sql)) {
			DB.setParam(stmt, new Object[] {});
			stmt.execute();
		}
	}

	/**
	 * 添加bbstext
	 * 
	 * @throws SQLException
	 */
	public void addBBSText(BBSText bbsText) throws SQLException {
		String sql = "insert into bbstext (bbsid, username, text, time) values('"
				+ bbsText.getBbsid()
				+ "','"
				+ bbsText.getUsername()
				+ "','"
				+ bbsText.getText() + "','" + bbsText.getTime() + "')";
		try (Connection conn = DB.open();
				PreparedStatement stmt = conn.prepareStatement(sql)) {
			DB.setParam(stmt, new Object[] {});
			stmt.execute();
		}
	}

	/**
	 * 查找所有BBSText
	 * 
	 * @return list集合，存放所有的bbstext，没有则返回空集
	 * @throws SQLException
	 */
	public List<BBSText> getBBSTextList(String bbsid) throws SQLException {
		List<BBSText> bbstextlist = new ArrayList<>();
		String sql = "select * from bbstext where bbsid = " + bbsid;
		try (Connection conn = DB.open();
				PreparedStatement stmt = conn.prepareStatement(sql)) {
			DB.setParam(stmt, new Object[] {});
			ResultSet rs = stmt.executeQuery();
			while (rs.next()) {
				bbstextlist.add(convertT(rs));
			}
			rs.close();
		}
		return bbstextlist;
	}

	/**
	 * 查找所有BBS
	 * 
	 * @return list集合，存放所有的bbs，没有则返回空集
	 * @throws SQLException
	 */
	public List<BBS> getBBSList() throws SQLException {
		List<BBS> bbslist = new ArrayList<>();
		String sql = "select * from bbs";
		try (Connection conn = DB.open();
				PreparedStatement stmt = conn.prepareStatement(sql)) {
			DB.setParam(stmt, new Object[] {});
			ResultSet rs = stmt.executeQuery();
			while (rs.next()) {
				bbslist.add(convert(rs));
			}
			rs.close();
		}
		return bbslist;
	}

	/**
	 * 根据bbsid查找BBS
	 * 
	 * @return list集合，存放所有的bbs，没有则返回空集
	 * @throws SQLException
	 */
	public BBS getBBSbyId(String IdString) throws SQLException {
		BBS bbs = new BBS();
		List<BBS> bbslist = this.getBBSList();
		for (BBS b : bbslist) {
			if (b.getId() == Integer.parseInt(IdString)) {
				bbs = b;
				break;
			}
		}
		return bbs;
	}

	/**
	 * 根据bbs查找BBS
	 * 
	 * @return list集合，存放所有的bbs，没有则返回空集
	 * @throws SQLException
	 */
	public BBS getBBSbybbs(BBS bbs) throws SQLException {
		List<BBS> bbslist = this.getBBSList();
		for (BBS b : bbslist) {
			if (b.getTitle().equals(bbs.getTitle())
					&& b.getTime().equals(bbs.getTime())
					&& b.getTip().equals(bbs.getTip())) {
				bbs = b;
				break;
			}
		}
		return bbs;
	}

	private BBS convert(ResultSet rs) throws SQLException {
		BBS b = new BBS();
		b.setId(rs.getInt("id"));
		b.setTitle(rs.getString("title"));
		b.setTip(rs.getString("tip"));
		b.setNum(rs.getInt("num"));
		b.setUsername(rs.getString("username"));
		b.setTime(rs.getTimestamp("time"));
		return b;
	}

	private BBSText convertT(ResultSet rs) throws SQLException {
		BBSText b = new BBSText();
		b.setId(rs.getInt("id"));
		b.setText(rs.getString("text"));
		b.setUsername(rs.getString("username"));
		b.setTime(rs.getTimestamp("time"));
		b.setBbsid(rs.getInt("bbsid"));
		return b;
	}
}
