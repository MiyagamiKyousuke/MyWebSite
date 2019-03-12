package yu;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.UserDAO;

/**
 * Servlet implementation class LoginUser
 */
@WebServlet("/LoginUser")
public class LoginUser extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginUser() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		//フォワード
		RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/jsp/login.jsp");
		dispatcher.forward(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		/*文字化け対策*/
		request.setCharacterEncoding("UTF-8");
		HttpSession session = request.getSession();

		try {
		//パラメーターから取得
		String loginId = request.getParameter("Username");
		String password = request.getParameter("Password");

		int userId = UserDAO.findGetUserId(loginId, password);

		if(userId !=0) {
			session.setAttribute("isLogin", true);
			session.setAttribute("userId", userId);
			//response.sendRedirect("Index");
			//ログイン前のページを取得
			String returnStrUrl = (String) Help.cutSessionAttribute(session, "returnStrUrl");

			//ログイン前ページにリダイレクト。指定がない場合Index
			response.sendRedirect(returnStrUrl!=null?returnStrUrl:"Index");
		}else {
			session.setAttribute("loginId", loginId);
			session.setAttribute("loginErrorMessage", "入力内容が正しくありません");
			response.sendRedirect("LoginUser");
		}

		}catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
}
