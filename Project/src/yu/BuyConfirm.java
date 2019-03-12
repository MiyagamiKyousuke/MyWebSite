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

import beans.BuyDataBeans;
import beans.DeliveryMethodDataBeans;
import beans.ItemBeans;
import dao.DeliveryMethodDAO;

/**
 * Servlet implementation class BuyConfirm
 */
@WebServlet("/BuyConfirm")
public class BuyConfirm extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public BuyConfirm() {
        super();
        // TODO Auto-generated constructor stub
    }


	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		try {
		//買い物かご
		ArrayList<ItemBeans> cartIDBList = (ArrayList<ItemBeans>) session.getAttribute("cart");

		int totalPrice = Help.getTotalItemPrice(cartIDBList);
		int deliveryId = 0;
		//金額によって配送料を変更
		if(totalPrice >= 3000) {
			deliveryId = 2;
		}else {
			deliveryId = 1;
		}

		DeliveryMethodDataBeans userSelectDMB = DeliveryMethodDAO.getDeliveryMethodDataBeansByID(deliveryId);
		BuyDataBeans bdb = new BuyDataBeans();
		bdb.setUserId((int) session.getAttribute("userId"));
		bdb.setTotalPrice(Help.getTotalItemPrice(cartIDBList, userSelectDMB));
		//bdb.setDeliveryMethodName(userSelectDMB.getName());
		//配送料金IDを購入beansにセット
		bdb.setDelivertMethodId(userSelectDMB.getId());

		session.setAttribute("deliveryPrice", userSelectDMB);

		//購入確定で利用
		session.setAttribute("bdb", bdb);
		//フォワード
		RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/jsp/buyConfirm.jsp");
		dispatcher.forward(request, response);

		}catch (Exception e) {
			e.printStackTrace();
		}
	}

}
