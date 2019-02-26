package yu;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.UserDAO;

/**
 * Servlet implementation class LoginUserResult
 */
@WebServlet("/LoginUserResult")
public class LoginUserResult extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public LoginUserResult() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
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
			session.setAttribute("userId", userId);
			session.setAttribute("password", password);
			response.sendRedirect("Index");
		}else {

		}

		}catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}

}
