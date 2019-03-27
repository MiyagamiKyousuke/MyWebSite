package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.ArrayList;

import base.DBManager;
import beans.Userbeans;

/**
 * ユーザーIDを取得
 *
 * @param loginId
 *            ログインID
 * @param password
 *            パスワード
 * @return int ログインIDとパスワードが正しい場合対象のユーザーID 正しくない||登録されていない場合0
 * @throws SQLException
 *             呼び出し元にスロー
 */
public class UserDAO {
	public static int findGetUserId(String loginId, String password) throws SQLException {
		Connection con = null;
		PreparedStatement ps = null;
		try {

			con = DBManager.getConnection();
			// SELECT文を準備
			// SELECTを実行し、結果表を取得
			ps = con.prepareStatement("SELECT * FROM user WHERE login_id = ? AND login_passwprd = ?");
			ps.setString(1, loginId);
			ps.setString(2, password);

			ResultSet rs = ps.executeQuery();

			int itemId = 0;

			if (rs.next()) {
				itemId = rs.getInt("id");
				System.out.println("login success");
			}
			itemId = rs.getInt("id");
			return itemId;
		} catch (SQLException e) {
			System.out.println(e.getMessage());
			throw new SQLException(e);
		} finally {
			if (con != null) {
				con.close();
			}
		}

	}

	/**
	 * loginIdの重複チェック
	 *
	 * @param loginId
	 *            check対象のログインID
	 * @param userId
	 *            check対象から除外するuserID
	 * @return bool 重複している
	 * @throws SQLException
	 */
	public static boolean isOverlapLoginId(String loginId) throws SQLException {
		// 重複しているかどうか表す変数
		boolean isOverlap = false;
		Connection con = null;
		PreparedStatement st = null;

		try {
			con = DBManager.getConnection();
			// 入力されたlogin_idが存在するか調べる
			st = con.prepareStatement("SELECT login_id FROM user WHERE login_id = ?");
			st.setString(1, loginId);
			ResultSet rs = st.executeQuery();

			System.out.println("searching loginId by inputLoginId has been completed");

			if (rs.next()) {
				isOverlap = true;
			}
		} catch (SQLException e) {
			System.out.println(e.getMessage());
			throw new SQLException(e);
		} finally {
			if (con != null) {
				con.close();
			}
		}

		System.out.println("overlap check has been completed");
		return isOverlap;
	}

	/**
	 *
	 * @param ub
	 * @throws SQLException
	 */
	public static void insertUser(Userbeans ub) throws SQLException {
		Connection con = null;
		PreparedStatement st = null;
		try {
			con = DBManager.getConnection();
			st = con.prepareStatement(
					"INSERT INTO user(name,login_id,address,login_passwprd,create_date) VALUES(?,?,?,?,?)");
			st.setString(1, ub.getName());
			st.setString(2, ub.getLoginId());
			st.setString(3, ub.getAddress());
			st.setString(4, ub.getLoginPassword());
			st.setTimestamp(5, new Timestamp(System.currentTimeMillis()));
			st.executeUpdate();

		} catch (Exception e) {
			System.out.println(e.getMessage());
			throw new SQLException(e);
		} finally {
			if (con != null) {
				con.close();
			}
		}
	}

	/**
	 *
	 * @param userId
	 * @return
	 * @throws SQLException
	 */
	public static Userbeans getUserDataBeansByUserId(int userId) throws SQLException {
		Userbeans ub = new Userbeans();
		Connection con = null;
		PreparedStatement st = null;
		try {
			con = DBManager.getConnection();
			st = con.prepareStatement("SELECT id,name,address,login_id,login_passwprd FROM user WHERE id = ?");
			st.setInt(1, userId);
			ResultSet rs = st.executeQuery();

			if (rs.next()) {
				ub.setId(rs.getInt("id"));
				ub.setName(rs.getString("name"));
				ub.setAddress(rs.getString("address"));
				ub.setLoginId(rs.getString("login_id"));

			}
			st.close();
			System.out.println("searching UserDataBeans by userId has been completed");
			return ub;

		} catch (SQLException e) {
			System.out.println(e.getMessage());
			throw new SQLException(e);
		} finally {
			if (con != null) {
				con.close();
			}
		}

	}

	/**
	 * ユーザー情報の更新処理を行う。
	 *
	 * @param user
	 *            対応したデータを保持しているJavaBeans
	 * @throws SQLException
	 *             呼び出し元にcatchさせるためにスロー
	 */
	public static Userbeans upDateUser(Userbeans ub) throws SQLException {
		// 更新された情報をセットされたJavaBeansのリスト
		Userbeans updatedUdb = new Userbeans();
		Connection con = null;
		PreparedStatement st = null;

		try {
			con = DBManager.getConnection();
			// 入力されたlogin_idが存在するか調べる
			st = con.prepareStatement("UPDATE user SET name = ?,address = ?,login_id = ? WHERE id = ?");
			st.setString(1, ub.getName());
			st.setString(2, ub.getAddress());
			st.setString(3, ub.getLoginId());
			st.setInt(4, ub.getId());
			st.executeUpdate();
			System.out.println("update has been completed");

			st = con.prepareStatement("SELECT name, login_id, address FROM user WHERE id=" + ub.getId());
			ResultSet rs = st.executeQuery();

			if (rs.next()) {
				updatedUdb.setName(rs.getString("name"));
				updatedUdb.setLoginId(rs.getString("login_id"));
				updatedUdb.setAddress(rs.getString("address"));
			}
			st.close();
			System.out.println("searching updated-UserDataBeans has been completed");

			return updatedUdb;
		} catch (SQLException e) {
			System.out.println(e.getMessage());
			throw new SQLException(e);
		} finally {
			if (con != null) {
				con.close();
			}
		}

	}

	public static ArrayList<Userbeans> usertListFind() throws SQLException {
		Connection con = null;
		PreparedStatement st = null;
		try {
			con = DBManager.getConnection();
			// SELECT文を準備
			// SELECTを実行し、結果表を取得
			st = con.prepareStatement("SELECT * FROM user");

			ResultSet rs = st.executeQuery();

			ArrayList<Userbeans> userList = new ArrayList<Userbeans>();

			while (rs.next()) {
				Userbeans user = new Userbeans();
				user.setId(rs.getInt("id"));
				user.setName(rs.getString("name"));
				user.setAddress(rs.getString("address"));
				user.setLoginId(rs.getString("login_id"));
				user.setLoginPassword(rs.getString("login_passwprd"));
				userList.add(user);
			}
			return userList;
		} catch (SQLException e) {
			System.out.println(e.getMessage());
			throw new SQLException(e);
		} finally {
			if (con != null) {
				con.close();
			}
		}


	}

}
