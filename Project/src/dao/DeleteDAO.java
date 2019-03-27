package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import base.DBManager;
import beans.Userbeans;

public class DeleteDAO {
	public static Userbeans deleteUserFind(int id) throws SQLException {
		Userbeans user = new Userbeans();
		Connection con = null;
		PreparedStatement ps = null;
		try {

			con = DBManager.getConnection();
			// SELECT文を準備
			// SELECTを実行し、結果表を取得
			ps = con.prepareStatement("SELECT * FROM user WHERE id = ?");
			ps.setInt(1, id);

			ResultSet rs = ps.executeQuery();
			if (rs.next()) {
				user.setId(rs.getInt("id"));
				user.setName(rs.getString("name"));
				user.setAddress(rs.getString("address"));
				user.setLoginId(rs.getString("login_id"));
				user.setLoginId(rs.getString("login_passwprd"));
			}
			return user;
		} catch (SQLException e) {
			System.out.println(e.getMessage());
			throw new SQLException(e);
		} finally {
			if (con != null) {
				con.close();
			}
		}
	}

	public static void deleteUser(int id) throws SQLException {
		Connection con = null;
		PreparedStatement ps = null;
		try {

			con = DBManager.getConnection();
			// SELECT文を準備
			// SELECTを実行し、結果表を取得
			ps = con.prepareStatement("DELETE FROM user WHERE id=?");
			ps.setInt(1, id);
			ps.executeUpdate();
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
