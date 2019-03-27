package yu;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import beans.ItemBeans;

/**
 * Servlet implementation class ItemInsertConfirm
 */
@WebServlet("/ItemInsertConfirm")
@MultipartConfig(location="C:\\Users\\LIKEIT_STUDENT\\Documents\\GitHub\\MyWebSite\\Project\\WebContent\\image", maxFileSize=1048576)
public class ItemInsertConfirm extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public ItemInsertConfirm() {
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
	 * @see HttpSServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		/* 文字化け対策 */
		request.setCharacterEncoding("UTF-8");
		HttpSession session = request.getSession();
		try {
		String validationMessage ="";

		String insertName = request.getParameter("name");
		String insertCardType = request.getParameter("number");
		int chInsertCardType = Integer.parseInt(insertCardType);
		String insertEffect = request.getParameter("effect");
		String insertMoney = request.getParameter("money");
		int chInsertMoney = Integer.parseInt(insertMoney);
		String insertFileName = request.getParameter("fileNmae");
		Part inserimgFile =request.getPart("imgFile");


		inserimgFile.write(insertFileName);


		ItemBeans insertItem = new ItemBeans();
		insertItem.setItemName(insertName);
		insertItem.setCardTypeId(chInsertCardType);
		insertItem.setEffect(insertEffect);
		insertItem.setPrice(chInsertMoney);
		insertItem.setFile(inserimgFile);
		insertItem.setFileName(insertFileName);

//		if(!insertMoney.matches("[0-9]")) {
//			validationMessage += "半角数字のみ入力できます";
//		}

		if(validationMessage.length() == 0) {
			
			request.setAttribute("insertItem",insertItem);
			//フォワード
			RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/jsp/itemInsertConfirm.jsp");
			dispatcher.forward(request, response);
		}else {
			session.setAttribute("insertItem", insertItem);
			session.setAttribute("validationMessage", validationMessage);
			response.sendRedirect("ItemInsert");
		}

		} catch (Exception e) {
			e.printStackTrace();
			session.setAttribute("errorMessage", e.toString());
			response.sendRedirect("Error");
		}


	}

}
