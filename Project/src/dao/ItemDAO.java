package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import base.DBManager;
import beans.ItemBeans;

public class ItemDAO {
	public static ArrayList<ItemBeans> getRankingItem(int getLimit) throws SQLException {

		Connection con = null;
		PreparedStatement st = null;

		try {
			con = DBManager.getConnection();

			st = con.prepareStatement(
					"SELECT item.*, sum(buy_detail.num) as number FROM buy_detail INNER JOIN item ON buy_detail.item_id = item.id group by item.id order by number desc, id LIMIT ?;");
			st.setInt(1, getLimit);
			ResultSet rs = st.executeQuery();

			ArrayList<ItemBeans> itemList = new ArrayList<ItemBeans>();

			while (rs.next()) {
				ItemBeans item = new ItemBeans();
				item.setId(rs.getInt("id"));
				item.setItemName(rs.getString("name"));
				item.setCardTypeId(rs.getInt("card_type_id"));
				item.setEffect(rs.getString("effect"));
				item.setPrice(rs.getInt("price"));
				item.setFileName(rs.getString("file_name"));
				item.setNum(rs.getInt("number"));
				itemList.add(item);
			}
			System.out.println("getItemRanking completed");
			return itemList;
		} catch (SQLException e) {
			System.out.println(e.getMessage());
			throw new SQLException(e);
		} finally {
			if (con != null) {
				con.close();
			}
		}
	}

	public static ItemBeans itemDetailPrint(int id) throws SQLException {
		Connection con = null;
		PreparedStatement st = null;

		try {
			con = DBManager.getConnection();
			st = con.prepareStatement("SELECT * FROM item WHERE id = ?");
			st.setInt(1, id);
			ResultSet rs = st.executeQuery();

			ItemBeans item = new ItemBeans();
			if (rs.next()) {
				item.setId(rs.getInt("id"));
				item.setItemName(rs.getString("name"));
				item.setCardTypeId(rs.getInt("card_type_id"));
				item.setEffect(rs.getString("effect"));
				item.setPrice(rs.getInt("price"));
				item.setFileName(rs.getString("file_name"));
			}
			System.out.println("searching item by itemID has been completed");
			return item;
		} catch (SQLException e) {
			System.out.println(e.getMessage());
			throw new SQLException(e);
		} finally {
			if (con != null) {
				con.close();
			}
		}

	}

	public static ArrayList<ItemBeans> itemSearch(int card, String keyword) throws SQLException {
		Connection con = null;
		PreparedStatement st = null;

		try {
			con = DBManager.getConnection();

//			String sql = "SELECT * FROM item WHERE id > 0 ";
			String sql = "SELECT * FROM item";

			boolean cardFlag = false;
			boolean keywordFlag = false;

//			if (card != 0) {
//				//モンスター、魔法、トラップを種別ＩＤで文字列結合する
//				sql += "AND card_type_id = ?";
//				cardFlag = true;
//
//			}
//
//			if (keyword != "") {
//				//商品の部分検索を降順で行い文字列結合する
//				sql += "AND name LIKE ?";
//				keywordFlag = true;
//
//			}
			if(card != 0 || !keyword.equals("")) {
				sql += " WHERE id > 0";
				if(card != 0) {
					sql += " AND card_type_id = ?";
					cardFlag = true;
				}
				if(!keyword.equals("")) {
					sql += " AND name LIKE ?";
					keywordFlag = true;
				}
			}
			st = con.prepareStatement(sql);

			if (cardFlag && keywordFlag) {
				st.setInt(1, card);
				st.setString(2, "%" + keyword + "%");

			} else if (cardFlag) {
				st.setInt(1, card);

			} else if (keywordFlag) {
				st.setString(1, "%" + keyword + "%");
			}


			ResultSet rs = st.executeQuery();
			ArrayList<ItemBeans> itemList = new ArrayList<ItemBeans>();


			while (rs.next()) {
				ItemBeans item = new ItemBeans();
				item.setId(rs.getInt("id"));
				item.setItemName(rs.getString("name"));
				item.setCardTypeId(rs.getInt("card_type_id"));
				item.setEffect(rs.getString("effect"));
				item.setPrice(rs.getInt("price"));
				item.setFileName(rs.getString("file_name"));
				itemList.add(item);
			}

			System.out.println("searching item by itemID has been completed");
			return itemList;

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
