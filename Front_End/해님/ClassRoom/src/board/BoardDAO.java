package board;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class BoardDAO {
	private Connection conn;
	private ResultSet rs;
	
	public BoardDAO() {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			
			String jdbcDriver = "jdbc:mysql://localhost:3306/tutoring?"+
					"useUnicode=true&characterEncoding=utf8";
			String dbUser = "root";
			String dbPass = "root";
	
			conn = DriverManager.getConnection(jdbcDriver, dbUser, dbPass);
			
			
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	public String getDate() {
		String SQL = "SELECT NOW()";
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				return rs.getString(1);
			}		
		}catch(Exception e) {
			e.printStackTrace();
		}
		return ""; //db 오류
	}
	public int getNext() {
		String SQL = "SELECT BoardNumber FROM BOARD ORDER BY BoardNumber DESC";
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				return rs.getInt(1)+1;
			}
			return 1; //첫 번째 게시물인 경우
		}catch(Exception e) {
			e.printStackTrace();
		}
		return -1; //db 오류
	}
	public int write(String title, String ID, String contents) {
		String SQL = "INSERT INTO BOARD VALUES (?,null,?,?,?,?,0,0)";
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			pstmt.setInt(1, getNext());
			pstmt.setString(2, ID);
			pstmt.setString(3, title);
			pstmt.setString(4, contents);
			pstmt.setString(5, getDate());
			
			return pstmt.executeUpdate();
		}catch(Exception e) {
			e.printStackTrace();
		}
		return -1; //db 오류
	}
	public ArrayList<Board> getList(int pageNumber){
		String SQL = "SELECT * FROM BOARD WHERE BoardNumber < ? ORDER BY BoardNumber DESC LIMIT 10";
		ArrayList<Board> list = new ArrayList<Board>();
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			pstmt.setInt(1, getNext() - (pageNumber -1)*10); //6보다 작은것만 가져온다.
			rs = pstmt.executeQuery();
			while(rs.next()) {
				Board board = new Board();
				board.setBoardNumber(rs.getInt(1));
				board.setAcademicNumber(rs.getString(2));
				board.setID(rs.getString(3));
				board.settitle(rs.getString(4));
				board.setcontents(rs.getString(5));
				board.setDate(rs.getString(6));
				board.setCode(rs.getInt(7));
				board.setViews(rs.getInt(8));
				list.add(board);
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	public boolean nextPage(int pageNumber) {
		String SQL = "SELECT * FROM BOARD WHERE BoardNumber < ? ";
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			pstmt.setInt(1, getNext() - (pageNumber -1)*10); //6보다 작은것만 가져온다.
			rs = pstmt.executeQuery();
			if(rs.next()) {
				return true;
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return false;
	}
	public Board getBoard(int BoardNumber) {
		String SQL = "SELECT * FROM BOARD WHERE BoardNumber = ? ";
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			pstmt.setInt(1,  BoardNumber);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				Board board = new Board();
				board.setBoardNumber(rs.getInt(1));
				board.setAcademicNumber(rs.getString(2));
				board.setID(rs.getString(3));
				board.settitle(rs.getString(4));
				board.setcontents(rs.getString(5));
				board.setDate(rs.getString(6));
				board.setCode(rs.getInt(7));
				board.setViews(rs.getInt(8));
				return board;
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	public int update(int BoardNumber, String title, String contents) {
		String SQL = "UPDATE BOARD SET Title = ?, Contents= ? WHERE BoardNumber =?";
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, title);
			pstmt.setString(2, contents);
			pstmt.setInt(3, BoardNumber);
			return pstmt.executeUpdate();
		}catch(Exception e) {
			e.printStackTrace();
		}
		return -1; //db 오류
	}
	public int delete(int BoardNumber) {
		String SQL = "DELETE FROM BOARD WHERE BoardNumber =?";
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			pstmt.setInt(1, BoardNumber);
			return pstmt.executeUpdate();
		}catch(Exception e) {
			e.printStackTrace();
		}
		return -1; //db 오류
	}
}
