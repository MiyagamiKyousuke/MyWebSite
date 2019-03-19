package yu;

import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;

import javax.servlet.http.HttpSession;
import javax.xml.bind.DatatypeConverter;

import beans.DeliveryMethodDataBeans;
import beans.ItemBeans;

public class Help {
	public static String name(String login_id) {

		//ハッシュを生成したい元の文字列
		String source = login_id;
		//ハッシュ生成前にバイト配列に置き換える際のCharset
		Charset charset = StandardCharsets.UTF_8;
		//ハッシュアルゴリズム
		String algorithm = "MD5";

		//ハッシュ生成処理
		byte[] bytes;
		String result = null;
		try {
			bytes = MessageDigest.getInstance(algorithm).digest(source.getBytes(charset));
			result = DatatypeConverter.printHexBinary(bytes);
		} catch (NoSuchAlgorithmException e) {
			// TODO 自動生成された catch ブロック
			e.printStackTrace();
		}

		//標準出力
		System.out.println(result);

		return result;

	}

	/**
	 * 商品の合計金額を算出する
	 *
	 * @param items
	 * @return total
	 */
	public static int getTotalItemPrice(ArrayList<ItemBeans> items, DeliveryMethodDataBeans dbm) {
		int total = 0;
		for (ItemBeans item : items) {
			total += item.getSubTotal();
			total += dbm.getPrice();
		}
		return total;
	}

	/**
	 * 商品の合計金額を算出する(配送料金なし)
	 *
	 * @param items
	 * @return total
	 */
	public static int getTotalItemPrice(ArrayList<ItemBeans> items) {
		int total = 0;
		for (ItemBeans item : items) {
			total += item.getPrice() *item.getCountNum();

		}
		return total;
	}

	/**
	 * セッションから指定データを取得（削除も一緒に行う）
	 *
	 * @param session
	 * @param str
	 * @return
	 */
	public static Object cutSessionAttribute(HttpSession session, String str) {
		Object test = session.getAttribute(str);
		session.removeAttribute(str);

		return test;
	}

	/**
	 * ログインIDのバリデーション
	 *
	 * @param inputLoginId
	 * @return
	 */
	public static boolean isLoginIdValidation(String inputLoginId) {
		// 英数字アンダースコア以外が入力されていたら
		if (inputLoginId.matches("[0-9a-zA-Z-_]+")) {
			return true;
		}

		return false;

	}

	public static String code(String password) {

		//ハッシュを生成したい元の文字列
		String source = password;
		//ハッシュ生成前にバイト配列に置き換える際のCharset
		Charset charset = StandardCharsets.UTF_8;
		//ハッシュアルゴリズム
		String algorithm = "MD5";

		//ハッシュ生成処理
		byte[] bytes = null;
		try {
			bytes = MessageDigest.getInstance(algorithm).digest(source.getBytes(charset));
		} catch (NoSuchAlgorithmException e) {
			// TODO 自動生成された catch ブロック
			e.printStackTrace();
		}
		String result = DatatypeConverter.printHexBinary(bytes);
		System.out.println(result);
		return source;

	}
}
