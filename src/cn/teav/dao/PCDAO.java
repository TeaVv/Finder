package cn.teav.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import cn.teav.DB;
import cn.teav.model.PC;

public class PCDAO {
	private static PCDAO instance;

	private PCDAO() {

	}

	public static PCDAO getInstance() {
		if (instance == null) {
			instance = new PCDAO();
		}

		return instance;
	}

	/**
	 * 查找所有PC
	 * 
	 * @return list集合，存放所有的PC，没有则返回空集
	 * @throws SQLException
	 */
	public List<PC> getPCList() throws SQLException {
		List<PC> pclist = new ArrayList<>();
		String sql = "select id,pcname,cpu,gpu,ram,harddisk,size,prize"
				+ " from pc_test";
		try (Connection conn = DB.open();
				PreparedStatement stmt = conn.prepareStatement(sql)) {
			DB.setParam(stmt, new Object[] {});
			ResultSet rs = stmt.executeQuery();
			while (rs.next()) {
				pclist.add(convert(rs));
			}
			rs.close();
		}
		return pclist;
	}

	private PC convert(ResultSet rs) throws SQLException {
		PC n = new PC();
		n.setId(rs.getInt("id"));
		n.setPcname(rs.getString("pcname"));
		n.setCpu(rs.getString("cpu"));
		n.setGpu(rs.getString("gpu"));
		n.setRam(rs.getString("ram"));
		n.setHarddisk(rs.getString("harddisk"));
		n.setSize(rs.getString("size"));
		n.setPrize(rs.getString("prize"));
		return n;
	}
}
