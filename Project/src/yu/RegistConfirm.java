package yu;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import beans.Userbeans;
import dao.UserDAO;

/**
 * Servlet implementation class RegistConfirm
 */
@WebServlet("/RegistConfirm")
public class RegistConfirm extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public RegistConfirm() {
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
		/* 文字化け対策 */
		request.setCharacterEncoding("UTF-8");
		HttpSession session = request.getSession();
		try {

			String inputUserName = request.getParameter("name");
			String inputUserAddress = request.getParameter("address");
			String inputLoginId = request.getParameter("loginId");
			String inputPassword = request.getParameter("password");
			String inputConfirmPassword = request.getParameter("password2");

			Userbeans udb = new Userbeans();
			udb.setName(inputUserName);
			udb.setAddress(inputUserAddress);
			udb.setLoginId(inputLoginId);
			udb.setLoginPassword(inputPassword);

			String validationMessage = "";
			//空文字チェック
			if (udb.getName().length() == 0 || udb.getAddress().length() == 0 || udb.getLoginId().length() == 0
					|| udb.getLoginPassword().length() == 0 || inputConfirmPassword.length() == 0) {
				validationMessage += "入力必須項目が未入力です";
				return;
			}

			// 入力されているパスワードが確認用と等しいか
			if (!(udb.getLoginPassword()).equals(inputConfirmPassword)) {
				validationMessage += "入力されているパスワードと確認用パスワードが違います<br>";
			}
			// ログインIDの入力規則チェック 英数字 ハイフン アンダースコアのみ入力可能
			if (!Help.isLoginIdValidation(udb.getLoginId())) {
				validationMessage += "半角英数とハイフン、アンダースコアのみ入力できます";
			}

			// loginIdの重複をチェック
			if (UserDAO.isOverlapLoginId(udb.getLoginId())) {
				validationMessage += "ほかのユーザーが使用中のログインIDです";
			}

			// バリデーションエラーメッセージがないなら確認画面へ
			if (validationMessage.length() == 0) {

				request.setAttribute("udb", udb);
				//フォワード
				RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/jsp/registConfirm.jsp");
				dispatcher.forward(request, response);
			} else {
				session.setAttribute("udb", udb);
				session.setAttribute("validationMessage", validationMessage);
				response.sendRedirect("Regist");
			}

		} catch (Exception e) {
			e.printStackTrace();
			session.setAttribute("errorMessage", e.toString());
			response.sendRedirect("Error");
		}
	}

}
