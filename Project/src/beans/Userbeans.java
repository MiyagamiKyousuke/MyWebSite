package beans;

import java.util.Date;

public class Userbeans {
	private int id;
	private String name;
	private String address;
	private String loginId;
	private String loginPassword;
	private Date createDate;

	// コンストラクタ
	public Userbeans() {
		this.name = "";
		this.address = "";
		this.loginId = "";
		this.loginPassword = "";
	}

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
	 * @return name
	 */
	public String getName() {
		return name;
	}
	/**
	 * @param name セットする name
	 */
	public void setName(String name) {
		this.name = name;
	}
	/**
	 * @return address
	 */
	public String getAddress() {
		return address;
	}
	/**
	 * @param address セットする address
	 */
	public void setAddress(String address) {
		this.address = address;
	}
	/**
	 * @return loginId
	 */
	public String getLoginId() {
		return loginId;
	}
	/**
	 * @param loginId セットする loginId
	 */
	public void setLoginId(String loginId) {
		this.loginId = loginId;
	}
	/**
	 * @return loginPassword
	 */
	public String getLoginPassword() {
		return loginPassword;
	}
	/**
	 * @param loginPassword セットする loginPassword
	 */
	public void setLoginPassword(String loginPassword) {
		this.loginPassword = loginPassword;
	}
	/**
	 * @return createDate
	 */
	public Date getCreateDate() {
		return createDate;
	}
	/**
	 * @param createDate セットする createDate
	 */
	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}


	/**
	 * ユーザー情報更新時の必要情報をまとめてセットするための処理
	 *
	 * @param name
	 * @param loginId
	 * @param address
	 */
	public void setUpdateUserDataBeansInfo(String name, String loginId, String address, int id) {
		this.name = name;
		this.loginId = loginId;
		this.address = address;
		this.id = id;
	}

}
