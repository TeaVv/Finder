package cn.teav.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import cn.teav.DB;
import cn.teav.model.ChatRecord;
import cn.teav.model.User;

public class UserDAO {
	private static UserDAO instance;

	private UserDAO() {

	}

	public static UserDAO getInstance() {
		if (instance == null) {
			instance = new UserDAO();
		}

		return instance;
	}

	/**
	 * 添加user
	 * 
	 * @throws SQLException
	 */
	public void addUser(User user) throws SQLException {
		String sql = "insert into user (username, password, email) values('"
				+ user.getUsername() + "','" + user.getPassword() + "','"
				+ user.getEmail() + "')";
		try (Connection conn = DB.open();
				PreparedStatement stmt = conn.prepareStatement(sql)) {
			DB.setParam(stmt, new Object[] {});
			stmt.execute();
		}
	}

	/**
	 * 添加user1, user2好友关系
	 * 
	 * @throws SQLException
	 */
	public void addFriend(String username1, String username2)
			throws SQLException {
		String sql = "insert into friend (username1, username2) values('"
				+ username1 + "','" + username2 + "')";
		try (Connection conn = DB.open();
				PreparedStatement stmt = conn.prepareStatement(sql)) {
			DB.setParam(stmt, new Object[] {});
			stmt.execute();
		}
	}

	/**
	 * 添加user1, user2
	 * 
	 * @throws SQLException
	 */
	public void addChatRecord(ChatRecord chatRecord) throws SQLException {
		String sql = "insert into chat_record (username1, username2, text, time) values('"
				+ chatRecord.getUsername1()
				+ "','"
				+ chatRecord.getUsername2()
				+ "','"
				+ chatRecord.getText()
				+ "','"
				+ chatRecord.getTime()
				+ "')";
		try (Connection conn = DB.open();
				PreparedStatement stmt = conn.prepareStatement(sql)) {
			DB.setParam(stmt, new Object[] {});
			stmt.execute();
		}
	}

	/**
	 * 根据id查找User
	 * 
	 * @return list集合，存放找到的user，没有则返回空集
	 * @throws SQLException
	 */
	public List<User> getUserListbyId(String idString) throws SQLException {
		List<User> userlist = new ArrayList<>();
		String sql = "select *" + " from user where id = '" + idString + "'";
		try (Connection conn = DB.open();
				PreparedStatement stmt = conn.prepareStatement(sql)) {
			DB.setParam(stmt, new Object[] {});
			ResultSet rs = stmt.executeQuery();
			while (rs.next()) {
				userlist.add(convert(rs));
			}
			rs.close();
		}
		return userlist;
	}

	/**
	 * 根据username查找好友列表
	 * 
	 * @return list集合，存放找到的username，没有则返回空集
	 * @throws SQLException
	 */
	public List<String> getFriendListbyName(String username)
			throws SQLException {
		List<String> friendlist = new ArrayList<>();
		String sql = "select *" + " from friend where username1 = '" + username
				+ "'";
		try (Connection conn = DB.open();
				PreparedStatement stmt = conn.prepareStatement(sql)) {
			DB.setParam(stmt, new Object[] {});
			ResultSet rs = stmt.executeQuery();
			while (rs.next()) {
				friendlist.add(rs.getString("username2"));
			}
			rs.close();
		}
		return friendlist;
	}

	/**
	 * 检查username1是否有好友username2
	 * 
	 * @return 有则返回true，否则返回false
	 * @throws SQLException
	 */
	public boolean isbeFriend(String username1, String username2)
			throws SQLException {
		List<String> friendlist = this.getFriendListbyName(username1);
		for (String u : friendlist) {
			if (u.equals(username2)) {
				return true;
			}
		}
		return false;
	}

	/**
	 * 查找所有ChatRecord
	 * 
	 * @return ChatRecord集合，存放所有的ChatRecord，没有则返回空集
	 * @throws SQLException
	 */
	public List<ChatRecord> getChatRecordList(String username1, String username2)
			throws SQLException {
		List<ChatRecord> chatrecordlist = new ArrayList<>();
		String sql = "select *" + " from chat_record where (username1 = '"
				+ username1 + "' and username2 = '" + username2
				+ "') or (username1 = '" + username2 + "' and username2 = '"
				+ username1 + "');";
		try (Connection conn = DB.open();
				PreparedStatement stmt = conn.prepareStatement(sql)) {
			DB.setParam(stmt, new Object[] {});
			ResultSet rs = stmt.executeQuery();
			while (rs.next()) {
				chatrecordlist.add(convertC(rs));
			}
			rs.close();
		}
		return chatrecordlist;
	}

	/**
	 * 查找所有User
	 * 
	 * @return list集合，存放所有的user，没有则返回空集
	 * @throws SQLException
	 */
	public List<User> getUserList() throws SQLException {
		List<User> userlist = new ArrayList<>();
		String sql = "select *" + " from user";
		try (Connection conn = DB.open();
				PreparedStatement stmt = conn.prepareStatement(sql)) {
			DB.setParam(stmt, new Object[] {});
			ResultSet rs = stmt.executeQuery();
			while (rs.next()) {
				userlist.add(convert(rs));
			}
			rs.close();
		}
		return userlist;
	}

	/**
	 * 根据username查找User
	 * 
	 * @return 返回User，没有则返回null
	 * @throws SQLException
	 */
	public User getUser(String username) throws SQLException {
		User user = User.getDefaultUser();
		List<User> userlist = this.getUserList();
		for (User u : userlist) {
			if (u.getUsername().equals(username)) {
				user = u;
				break;
			}
		}
		return user;
	}

	/**
	 * 检查user用户名密码是否正确
	 * 
	 * @return 正确则返回true，否则返回false
	 * @throws SQLException
	 */
	public boolean checkUser(User user) throws SQLException {
		String sql = "select *" + " from user where username = '"
				+ user.getUsername() + "' and password = '"
				+ user.getPassword() + "'";
		try (Connection conn = DB.open();
				PreparedStatement stmt = conn.prepareStatement(sql)) {
			DB.setParam(stmt, new Object[] {});
			ResultSet rs = stmt.executeQuery();
			if (rs.next()) {
				return true;
			}
			rs.close();
		}
		return false;
	}

	/**
	 * 查找是否存在该User
	 * 
	 * @return 有则返回true，否则返回false
	 * @throws SQLException
	 */
	public boolean isbeUser(String username) throws SQLException {
		String sql = "select *" + " from user where id = '" + username + "'";
		try (Connection conn = DB.open();
				PreparedStatement stmt = conn.prepareStatement(sql)) {
			DB.setParam(stmt, new Object[] {});
			ResultSet rs = stmt.executeQuery();
			if (rs.next()) {
				return true;
			}
			rs.close();
		}
		return false;
	}

	private User convert(ResultSet rs) throws SQLException {
		User u = new User();
		u.setId(rs.getInt("id"));
		u.setUsername(rs.getString("username"));
		u.setPassword(rs.getString("password"));
		u.setEmail(rs.getString("email"));
		return u;
	}

	private ChatRecord convertC(ResultSet rs) throws SQLException {
		ChatRecord c = new ChatRecord();
		c.setId(rs.getInt("id"));
		c.setUsername1(rs.getString("username1"));
		c.setUsername2(rs.getString("username2"));
		c.setText(rs.getString("text"));
		c.setTime(rs.getTimestamp("time"));
		return c;
	}
}
