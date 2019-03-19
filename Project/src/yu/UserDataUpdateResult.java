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
 * Servlet implementation class UserDataUpdateResult
 */
@WebServlet("/UserDataUpdateResult")
public class UserDataUpdateResult extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public UserDataUpdateResult() {
        super();
        // TODO Auto-generated constructor stub
    }


	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		/*文字化け対策*/
		request.setCharacterEncoding("UTF-8");
		//セッション開始
		HttpSession session = request.getSession();

		try {
			String upDateName = request.getParameter("user_name");
			String upDateAddress = request.getParameter("user_address");
			String upDateLoginId = request.getParameter("login_id");

			Userbeans ub = new Userbeans();
			//暗号化
			String changePass = Help.code(upDateAddress);
			ub.setName(upDateName);
			ub.setAddress(changePass);
			ub.setLoginId(upDateLoginId);
			ub.setId((int)session.getAttribute("userId"));

			String confirmed = request.getParameter("confirm_button");

			switch (confirmed) {
			case "update":
				//ユーザー情報を更新してその結果を抽出
				 Userbeans ubresult= UserDAO.upDateUser(ub);
				 request.setAttribute("ubresult", ubresult);
				//フォワード
				RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/jsp/UserDataUpdateResult.jsp");
				dispatcher.forward(request, response);
				break;

			case "back":
				session.setAttribute("returnUDB", ub);
				response.sendRedirect("UserData");

				break;
			}


		}catch (Exception e) {
			e.printStackTrace();
			session.setAttribute("errorMessage", e.toString());
			response.sendRedirect("Error");
		}
	}

}
