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
	 * 根据电脑型号查找PC
	 * 
	 * @return list集合，存放所有的PC，没有则返回空集
	 * @throws SQLException
	 */
	public List<PC> getPCListByPc_model(String pc_model) throws SQLException {
		List<PC> pclist = new ArrayList<>();
		String sql = "select *" + " from pc where pc_model ='" + pc_model + "'";
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

	/**
	 * 根据输入字符串查找PC
	 * 
	 * @return list集合，存放所有的PC，没有则返回空集
	 * @throws SQLException
	 */
	public List<PC> getPCListBySearchInput(String SearchInput)
			throws SQLException {
		List<PC> pclist = new ArrayList<>();
		String sql = "select *" + " from pc where pc_model like '%"
				+ SearchInput + "%'";
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

	/**
	 * 根据特定条件查找PC
	 * 
	 * @return list集合，存放所有的PC，没有则返回空集
	 * @throws SQLException
	 */
	public List<PC> getPCListByCondition(String cpu, String gpu, String ram,
			String harddisk, String size, int lprice, int rprice)
			throws SQLException {
		List<PC> pclist = new ArrayList<>();
		String sql = "select *" + " from pc where " + "cpu_model like '%" + cpu
				+ "%' and " + "gpu_model like '%" + gpu + "%' and "
				+ "memory_capacity like '%" + ram + "%' and "
				+ "harddisk_capacity like '%" + harddisk + "%' and "
				+ "display_size like '%" + size + "%' and " + "price>="
				+ lprice + " and price<=" + rprice + ";";
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

	/**
	 * 查找所有PC
	 * 
	 * @return list集合，存放所有的PC，没有则返回空集
	 * @throws SQLException
	 */
	public List<PC> getPCList() throws SQLException {
		List<PC> pclist = new ArrayList<>();
		String sql = "select *" + " from pc";
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
		PC p = new PC();
		p.setId(rs.getInt("id"));
		p.setBluetooth(rs.getString("bluetooth"));
		p.setCamera(rs.getString("camera"));
		p.setCardreader(rs.getString("cardreader"));
		p.setCd(rs.getString("cd"));
		p.setCpu_core(rs.getString("cpu_core"));
		p.setCpu_model(rs.getString("cpu_model"));
		p.setCpu_struct(rs.getString("cpu_struct"));
		p.setDisplay_resolution(rs.getString("display_resolution"));
		p.setDisplay_size(rs.getString("display_size"));
		p.setDisplay_type(rs.getString("display_type"));
		p.setGpu_capacity(rs.getString("gpu_capacity"));
		p.setGpu_model(rs.getString("gpu_model"));
		p.setHarddisk_capacity(rs.getString("harddisk_capacity"));
		p.setHarddisk_type(rs.getString("harddisk_type"));
		p.setMemory_capacity(rs.getString("memory_capacity"));
		p.setMemory_type(rs.getString("memory_type"));
		p.setPc_model(rs.getString("pc_model"));
		p.setPrice(rs.getInt("price"));
		p.setUsb(rs.getString("usb"));
		p.setWeight(rs.getString("weight"));
		p.setWireless(rs.getString("wireless"));
		p.setDimension(rs.getString("dimension"));
		p.setImg1(rs.getString("img1"));
		p.setImg2(rs.getString("img2"));
		p.setImg3(rs.getString("img3"));
		return p;
	}
}
