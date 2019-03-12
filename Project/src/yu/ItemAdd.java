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
 * Servlet implementation class ItemAdd
 */
@WebServlet("/ItemAdd")
public class ItemAdd extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public ItemAdd() {
        super();
        // TODO Auto-generated constructor stub
    }


	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();

		try {
			//選択された商品のIDを型変換し利用
			int id = Integer.parseInt(request.getParameter("item_id"));
			//選択された購入数を型変換し利用
			int num = Integer.parseInt(request.getParameter("numAdd"));
			//対象のアイテム情報を取得
			ItemBeans items = ItemDAO.getItemByItemID(id);
			//購入数をItemBeansにセット
			items.setCountNum(num);

			//追加した商品を表示するためリクエストパラメーターにセット
			request.setAttribute("items", items);
			//カートを取得
			ArrayList<ItemBeans> cart = (ArrayList<ItemBeans>) session.getAttribute("cart");

			//セッションにカートがない場合カートを作成
			if (cart == null) {
				cart = new ArrayList<ItemBeans>();
			}
			//
			int x = 0;
			for (ItemBeans itemBeans : cart) {
				if(itemBeans.getId() == items.getId()) {
					itemBeans.setCountNum(itemBeans.getCountNum() + items.getCountNum());
					x = itemBeans.getId();

				}
			}


			//カートの商品IDが違うのならカートに商品を追加。
			if(x != items.getCountNum()) {
				cart.add(items);
			}
			//カート情報更新
			session.setAttribute("cart", cart);
			request.setAttribute("cartActionMessage", "商品を追加しました");
			//フォワード
			RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/jsp/itemAdd.jsp");
			dispatcher.forward(request, response);
		}catch(Exception e) {
			e.printStackTrace();

		}

	}

}
