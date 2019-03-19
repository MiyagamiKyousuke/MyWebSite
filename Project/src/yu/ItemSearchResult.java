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
 * Servlet implementation class ItemSearchResult
 */
@WebServlet("/ItemSearchResult")
public class ItemSearchResult extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ItemSearchResult() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// リクエストパラメータの文字コードを指定
		request.setCharacterEncoding("UTF-8");
		HttpSession session = request.getSession();
		try {
		ArrayList<ItemBeans> itemSearch = ItemDAO.itemSearch(0,"");

		int itemCount = ItemDAO.getItemCount("",0);

		//リクエストスコープにセット
		request.setAttribute("itemSearch", itemSearch);
		request.setAttribute("itemCount", itemCount);


		//フォワード
		RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/jsp/itemsearchresult.jsp");
		dispatcher.forward(request, response);

		}catch (Exception e) {
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
		HttpSession session = request.getSession();

		// リクエストパラメータの文字コードを指定
		request.setCharacterEncoding("UTF-8");

		String searchWord = request.getParameter("search_word");

		String searchType = request.getParameter(("cardType"));

		int searchTypeInteger = Integer.parseInt(searchType);

		try {

			ArrayList<ItemBeans> itemSearch = ItemDAO.itemSearch(searchTypeInteger, searchWord);

			int itemCount = ItemDAO.getItemCount(searchWord,searchTypeInteger);

			//リクエストスコープにセット
			request.setAttribute("itemSearch", itemSearch);
			request.setAttribute("itemCount", itemCount);

			//フォワード
			RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/jsp/itemsearchresult.jsp");
			dispatcher.forward(request, response);

		} catch (Exception e) {
			e.printStackTrace();
			session.setAttribute("errorMessage", e.toString());
			response.sendRedirect("Error");
		}

	}

}
