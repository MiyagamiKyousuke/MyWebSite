package yu;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import beans.ItemBeans;
import dao.ItemDAO;

/**
 * Servlet implementation class ItemStockInsert
 */
@WebServlet("/ItemStockInsert")
public class ItemStockInsert extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ItemStockInsert() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();
		try {
		String itemId = request.getParameter("h_itemId");
		int chItemId = Integer.parseInt(itemId);
		String itemStock = request.getParameter("h_itemStock");
		int chItemStock = Integer.parseInt(itemStock);

		//在庫更新
		ItemDAO.itemStockUpdate(chItemId,chItemStock);
		//更新後の商品
		ArrayList<ItemBeans> itemList = ItemDAO.itemFindAll();
		//リクエスト領域に更新後の商品テーブルを保管
		request.setAttribute("itemList", itemList);

		//フォワード
		RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/jsp/adminStockInsert.jsp");
		dispatcher.forward(request, response);
		} catch (Exception e) {
			e.printStackTrace();
			session.setAttribute("errorMessage", e.toString());
			response.sendRedirect("Error");
		}
	}

}
