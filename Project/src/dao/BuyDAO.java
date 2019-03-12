package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.Timestamp;

import base.DBManager;
import beans.BuyDataBeans;

public class BuyDAO {
	public static int insertBuy(BuyDataBeans bdb) throws SQLException {
		Connection con = null;
		PreparedStatement st = null;
		int autoIncKey = -1;
		try {
			con = DBManager.getConnection();
			st = con.prepareStatement(
					"INSERT INTO buy(user_id,total_price,delivery_method_id,create_date) VALUES(?,?,?,?)",
					Statement.RETURN_GENERATED_KEYS);
			st.setInt(1, bdb.getUserId());
			st.setInt(2, bdb.getTotalPrice());
			st.setInt(3, bdb.getDelivertMethodId());
			st.setTimestamp(4, new Timestamp(System.currentTimeMillis()));
			st.executeUpdate();

			ResultSet rs = st.getGeneratedKeys();
			if (rs.next()) {
				autoIncKey = rs.getInt(1);
			}
			System.out.println("inserting buy-datas has been completed");

			return autoIncKey;
		}catch (SQLException e) {
			System.out.println(e.getMessage());
			throw new SQLException(e);
		} finally {
			if (con != null) {
				con.close();
			}
		}



	}
	//購入完了表示DAO
public static BuyDataBeans getBuyDataBeansByBuyId(int buyId) throws SQLException {
	Connection con = null;
	PreparedStatement st = null;
	try {
		con = DBManager.getConnection();

		st = con.prepareStatement(
				"SELECT * FROM buy"
						+ " JOIN delivery_method"
						+ " ON buy.delivery_method_id = delivery_method.id"
						+ " WHERE buy.id = ?");
		st.setInt(1, buyId);

		ResultSet rs = st.executeQuery();

		BuyDataBeans bdb = new BuyDataBeans();
		if (rs.next()) {
			bdb.setId(rs.getInt("id"));
			bdb.setTotalPrice(rs.getInt("total_price"));
			bdb.setBuyDate(rs.getTimestamp("create_date"));
			bdb.setDelivertMethodId(rs.getInt("delivery_method_id"));
			bdb.setUserId(rs.getInt("user_id"));
			bdb.setDeliveryMethodPrice(rs.getInt("price"));
			bdb.setDeliveryMethodName(rs.getString("name"));
		}

		System.out.println("searching BuyDataBeans by buyID has been completed");

		return bdb;
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
