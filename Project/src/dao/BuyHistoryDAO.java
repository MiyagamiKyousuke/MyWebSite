package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import base.DBManager;
import beans.UserinfoBeans;

public class BuyHistoryDAO {
	public static ArrayList<UserinfoBeans> buyHistory(int id) throws SQLException {
		Connection con = null;
		PreparedStatement st = null;
		try {
			con = DBManager.getConnection();

			st = con.prepareStatement("SELECT buy.id,buy.user_id,buy.total_price,buy.delivery_method_id,buy.create_date,delivery_method.name FROM buy INNER JOIN delivery_method ON buy.delivery_method_id = delivery_method.id WHERE buy.user_id = ? ORDER BY buy.create_date DESC");
			st.setInt(1,id);
			ResultSet rs = st.executeQuery();
			ArrayList<UserinfoBeans> userInfoList = new ArrayList<UserinfoBeans>();

			while(rs.next()) {
				UserinfoBeans uif = new UserinfoBeans();
				uif.setId(rs.getInt("id"));
				uif.setTotalPrice(rs.getInt("total_price"));
				uif.setDelivertMethodName(rs.getString("name"));
				uif.setDelivertMethodId(rs.getInt("delivery_method_id"));
				uif.setCreateDate(rs.getTimestamp("create_date"));
				userInfoList.add(uif);
			}
			System.out.println("get Items by itemName has been completed");
			return userInfoList;
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
