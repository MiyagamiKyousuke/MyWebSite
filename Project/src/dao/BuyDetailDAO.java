package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import base.DBManager;
import beans.BuyDetailDataBeans;
import beans.ItemBeans;

public class BuyDetailDAO {

	//購入完了表示DAO
	public static ArrayList<ItemBeans> getItemDataBeansListByBuyId(int buyId) throws SQLException {
		Connection con = null;
		PreparedStatement st = null;
		try {
			con = DBManager.getConnection();

			st = con.prepareStatement(
					"SELECT item.id,"
					+ " item.name,"
					+ " item.price,"
					+ " buy_detail.num"
					+ " FROM buy_detail"
					+ " JOIN item"
					+ " ON buy_detail.item_id = item.id"
					+ " WHERE buy_detail.buy_id = ?");
			st.setInt(1, buyId);

			ResultSet rs = st.executeQuery();
			ArrayList<ItemBeans> buyDetailItemList = new ArrayList<ItemBeans>();

			while (rs.next()) {
				ItemBeans idb = new ItemBeans();
				idb.setId(rs.getInt("id"));
				idb.setItemName(rs.getString("name"));
				idb.setPrice(rs.getInt("price"));
				idb.setNum(rs.getInt("num"));


				buyDetailItemList.add(idb);
			}

			System.out.println("searching ItemDataBeansList by BuyID has been completed");
			return buyDetailItemList;
		} catch (SQLException e) {
			System.out.println(e.getMessage());
			throw new SQLException(e);
		} finally {
			if (con != null) {
				con.close();
			}
		}
	}

	public static void insertBuyDetail(BuyDetailDataBeans bddb) throws SQLException {
		Connection con = null;
		PreparedStatement st = null;
		try {
			con = DBManager.getConnection();
			st = con.prepareStatement(
					"INSERT INTO buy_detail(buy_id,item_id,num) VALUES(?,?,?)");
			st.setInt(1, bddb.getBuyId());
			st.setInt(2, bddb.getItemId());
			st.setInt(3, bddb.getBuyNum());
			st.executeUpdate();
			System.out.println("inserting BuyDetail has been completed");

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
