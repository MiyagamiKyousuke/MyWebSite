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

import beans.Userbeans;
import beans.UserinfoBeans;
import dao.BuyHistoryDAO;
import dao.UserDAO;

/**
 * Servlet implementation class UserData
 */
@WebServlet("/UserData")
public class UserData extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public UserData() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// セッション開始
				HttpSession session = request.getSession();
				try {
					// ログイン時に取得したユーザーIDをセッションから取得
					int userId = (int) session.getAttribute("userId");

					Userbeans ub = session.getAttribute("returnUDB") == null ? UserDAO.getUserDataBeansByUserId(userId) : (Userbeans) Help.cutSessionAttribute(session, "returnUDB");

					// 入力された内容に誤りがあったとき等に表示するエラーメッセージを格納する
					String validationMessage = (String) Help.cutSessionAttribute(session, "validationMessage");


					request.setAttribute("validationMessage", validationMessage);
					request.setAttribute("ub", ub);

					//表示用
					ArrayList<UserinfoBeans> uibList = BuyHistoryDAO.buyHistory(userId);
					request.setAttribute("uibList", uibList);
					//フォワード
					RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/jsp/userData.jsp");
					dispatcher.forward(request, response);
				}catch (Exception e) {
					e.printStackTrace();
					session.setAttribute("errorMessage", e.toString());
					response.sendRedirect("Error");
				}
	}

}
