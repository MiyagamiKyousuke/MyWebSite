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
 * Servlet implementation class RegistResult
 */
@WebServlet("/RegistResult")
public class RegistResult extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public RegistResult() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");

		HttpSession session = request.getSession();
		try {

		String inputUserName = request.getParameter("user_name");
		String inputUserAddress = request.getParameter("user_address");
		String inputUserinputLoginId = request.getParameter("login_id");
		String inputUserPassword = request.getParameter("password");

		Userbeans udb = new Userbeans();
		//暗号化
		String changePass = Help.code(inputUserPassword);

		udb.setName(changePass);
		udb.setName(inputUserName);
		udb.setAddress(inputUserAddress);
		udb.setLoginId(inputUserinputLoginId);
		//暗号化後のパスワードをセット
		udb.setLoginPassword(changePass);

		String check = request.getParameter("confirm_button");

		switch (check) {
		case "cancel":
			session.setAttribute("udb", udb);
			response.sendRedirect("Regist");
			break;

		case "regist":
			UserDAO.insertUser(udb);

			session.setAttribute("udb", udb);
			//フォワード
			RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/jsp/registResult.jsp");
			dispatcher.forward(request, response);

			break;
		}

		}catch (Exception e) {
			e.printStackTrace();
			session.setAttribute("errorMessage", e.toString());
			response.sendRedirect("Error");
		}

	}

}
