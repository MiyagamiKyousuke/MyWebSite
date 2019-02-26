package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import base.DBManager;

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

			int userId = 0;

			if (!rs.next()) {

			}
			userId = rs.getInt("id");
			return userId;
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
