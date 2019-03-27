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
import dao.DeleteDAO;

/**
 * Servlet implementation class DeleteResult
 */
@WebServlet("/DeleteResult")
public class DeleteResult extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeleteResult() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");

		HttpSession session = request.getSession();

		try {
		String dName = request.getParameter("user_name");
		String dAddress = request.getParameter("user_address");
		String dLoginId = request.getParameter("login_id");
		String dUserId = request.getParameter("user_id");
		int chdUserId = Integer.parseInt(dUserId);
		String btn = request.getParameter("confirm_button");

		switch (btn) {
		case "cancel":
			response.sendRedirect("AdminIndex");
			break;

		case "delete":
			Userbeans user = DeleteDAO.deleteUserFind(chdUserId);
			DeleteDAO.deleteUser(user.getId());
			request.setAttribute("user", user);
			//フォワード
			RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/jsp/deleteResult.jsp");
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
