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
 * Servlet implementation class UserDataUpdateConfirm
 */
@WebServlet("/UserDataUpdateConfirm")
public class UserDataUpdateConfirm extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public UserDataUpdateConfirm() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		/*文字化け対策*/
		request.setCharacterEncoding("UTF-8");
		//セッション開始
		HttpSession session = request.getSession();
		try {
			//エラーメッセージを格納する変数
			String validationMessage = "";

			String updateName = request.getParameter("user_name");
			String updateLoginId = request.getParameter("login_id");
			String updateAddress = request.getParameter("user_address");

			Userbeans ub = new Userbeans();
			ub.setName(updateName);
			ub.setLoginId(updateLoginId);
			ub.setAddress(updateAddress);
			ub.setId((int) session.getAttribute("userId"));
			if (!Help.isLoginIdValidation(ub.getLoginId())) {
				validationMessage = "半角英数とハイフン、アンダースコアのみ入力できます";
			}

			if (UserDAO.isOverlapLoginId(updateLoginId)) {

			}

			if (validationMessage.length() == 0) {
				//フォワード
				request.setAttribute("ub", ub);
				RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/jsp/UserDataUpdateConfirm.jsp");
				dispatcher.forward(request, response);
			}else {
				//セッションにエラーメッセージを持たせてユーザー画面へ
				session.setAttribute("validationMessage", validationMessage);
				response.sendRedirect("UserData");
			}


		} catch (Exception e) {
			e.printStackTrace();
			session.setAttribute("errorMessage", e.toString());
			response.sendRedirect("Error");
		}

	}

}
