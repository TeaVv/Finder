package cn.teav;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class DB {
	private static String url = "jdbc:mysql://localhost:3306/finder"
			+ "?useUnicode=true&characterEncoding=utf8";
	private static String user = "root";
	private static String password = "";
	static {
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (Exception ex) {
			ex.printStackTrace();
		}
	}

	public static Connection open() throws SQLException {
		return DriverManager.getConnection(url, user, password);
	}

	public static PreparedStatement setParam(PreparedStatement stmt,
			Object[] param) throws SQLException {
		for (int i = 0; i < param.length; i++) {
			stmt.setObject(i + 1, param[i]);
		}
		return stmt;
	}
}
