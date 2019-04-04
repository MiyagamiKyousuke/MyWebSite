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
 * Servlet implementation class Index
 */
@WebServlet("/Index")
public class Index extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Index() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();
		try {
			//ランキング情報を取得
			ArrayList<ItemBeans> itemList = ItemDAO.getRankingItem(3);


			//順位を設定
			int continueNum = 1;
			for(int i = 0; i < itemList.size(); i++) {
				ItemBeans item = itemList.get(i);
				int previous = i > 0 ? itemList.get(i -1).getRanking() : 0;
				int previousNum = i > 0 ? itemList.get(i -1).getNum() : 0;
				if(i > 0 && previousNum == item.getNum()) {
					item.setRanking(previous);
					continueNum++;
				} else {
					item.setRanking(previous + continueNum);
					continueNum = 1;
				}

			}


			//リクエストスコープにセット
			request.setAttribute("itemList", itemList);

			//セッションにsearchWordが入っていたら破棄する
			String searchWord = (String) session.getAttribute("searchWord");
			if (searchWord != null) {
				session.removeAttribute("searchWord");
			}

			//フォワード
			RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/jsp/index.jsp");
			dispatcher.forward(request, response);
		} catch (Exception e) {
			e.printStackTrace();
			session.setAttribute("errorMessage", e.toString());
			response.sendRedirect("Error");
		}
	}
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
