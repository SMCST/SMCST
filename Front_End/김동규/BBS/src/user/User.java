package user;

public class User {
	private String userID;
	private String userName;
	private String userPassword;
	private int userPhone;
	private int userAlert;
	private int userStatuscode;
	private String userPicture;
	public String getUserID() {
		return userID;
	}
	public void setUserID(String userID) {
		this.userID = userID;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getUserPassword() {
		return userPassword;
	}
	public void setUserPassword(String userPassword) {
		this.userPassword = userPassword;
	}
	public int getUserPhone() {
		return userPhone;
	}
	public void setUserPhone(int userPhone) {
		this.userPhone = userPhone;
	}
	public int getUserAlert() {
		return userAlert;
	}
	public void setUserAlert(int userAlert) {
		this.userAlert = userAlert;
	}
	public int getUserStatuscode() {
		return userStatuscode;
	}
	public void setUserStatuscode(int userStatuscode) {
		this.userStatuscode = userStatuscode;
	}
	public String getUserPicture() {
		return userPicture;
	}
	public void setUserPicture(String userPicture) {
		this.userPicture = userPicture;
	}
	public int getUserBirth() {
		return userBirth;
	}
	public void setUserBirth(int userBirth) {
		this.userBirth = userBirth;
	}
	private int userBirth;
}
