package user;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class UserDAO {
	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	public UserDAO () {
		try {
			String dbURL = "jdbc:mysql://localhost:3306/tutoring";
			String dbID = "root";
			String dbPassword = "root";
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection(dbURL, dbID, dbPassword);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	public int join(User user) {

		String SQL = "INSERT INTO MEMBER VALUES (?,?,?,?,default,default,?,?);";

		try {

		pstmt = conn.prepareStatement(SQL);

		pstmt.setString(1, user.getUserID());

		pstmt.setString(2, user.getUserName());

		pstmt.setString(3, user.getUserPassword());

		pstmt.setInt(4, user.getUserPhone());

		pstmt.setString(5, user.getUserPicture());
		
		pstmt.setInt(6, user.getUserBirth());

		return pstmt.executeUpdate();

		} catch (Exception e) {

		e.printStackTrace();

		}

		return -1; // 데이터베이스 오류

	}
	public int login(String userID, String userPassword) {
		String SQL = "SELECT password FROM MEMBER WHERE id = ?";
		try {
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1,  userID);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				if(rs.getString(1).equals(userPassword)) {
					return 1;
				}
			}else {
				return 0;
			}
			return -1;
		}catch(Exception e) {
			e.printStackTrace();
		}
		return -2;
	}
}
