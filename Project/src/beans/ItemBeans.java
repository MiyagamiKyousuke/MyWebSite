package beans;

import javax.servlet.http.Part;

public class ItemBeans {

	private int id;
	//商品名
	private String itemName;
	//カードの種類
	private int cardTypeId;
	//効果
	private String effect;
	//値段
	private int price;
	//ファイル名
	private String fileName;
	private int num;
	//ランキング
	private int ranking;
	//ファイル
	private Part file;
	//,付き値段
	private String stPrice;


	/* 表示用 */
	//購入数
	private int countNum;

	//小計

	/**
	 * @return id
	 */
	public int getId() {
		return id;
	}
	/**
	 * @param id セットする id
	 */
	public void setId(int id) {
		this.id = id;
	}
	/**
	 * @return itemName
	 */
	public String getItemName() {
		return itemName;
	}
	/**
	 * @param itemName セットする itemName
	 */
	public void setItemName(String itemName) {
		this.itemName = itemName;
	}
	/**
	 * @return cardTypeId
	 */
	public int getCardTypeId() {
		return cardTypeId;
	}
	/**
	 * @param cardTypeId セットする cardTypeId
	 */
	public void setCardTypeId(int cardTypeId) {
		this.cardTypeId = cardTypeId;
	}
	/**
	 * @return effect
	 */
	public String getEffect() {
		return effect;
	}
	/**
	 * @param effect セットする effect
	 */
	public void setEffect(String effect) {
		this.effect = effect;
	}
	/**
	 * @return price
	 */
	public int getPrice() {
		return price;
	}
	/**
	 * @param price セットする price
	 */
	public void setPrice(int price) {
		this.price = price;
	}
	/**
	 * @return fileName
	 */
	public String getFileName() {
		return fileName;
	}
	/**
	 * @param fileName セットする fileName
	 */
	public void setFileName(String fileName) {
		this.fileName = fileName;
	}
	/**
	 * @return ranking
	 */
	public int getRanking() {
		return ranking;
	}
	/**
	 * @param ranking セットする ranking
	 */
	public void setRanking(int ranking) {
		this.ranking = ranking;
	}
	/**
	 * @return num
	 */
	public int getNum() {
		return num;
	}
	/**
	 * @param num セットする num
	 */
	public void setNum(int num) {
		this.num = num;
	}
	public int getCountNum() {
		return countNum;
	}
	public void setCountNum(int countNum) {
		this.countNum = countNum;
	}
	//小計
	public int getSubTotal() {
		return this.price * this.countNum;
	}
	public String getStSubTotal() {
		return String.format("%,d", getSubTotal());
	}
	public Part getFile() {
		return file;
	}
	public void setFile(Part file) {
		this.file = file;
	}
	public String getStPrice() {

		return String.format("%,d", this.price);
	}
	public void setStPrice(String stPrice) {
		this.stPrice = stPrice;
	}


}
