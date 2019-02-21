package bbs;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class BbsDAO {
	private Connection conn;
	private ResultSet rs;

	public BbsDAO() {
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

	public String getDate() {
		// 현재 시간을 가져오는 함수. 게시판 글 작성 시 필요.
		String SQL = "SELECT NOW()";
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				return rs.getString(1);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "";
	}

	public int getNext() {
		String SQL = "SELECT BoardNumber FROM board ORDER BY BoardNumber DESC";
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				return rs.getInt(1) + 1;
			}
			return 1; // 첫번째 게시물인 경우
		} catch (Exception e) {
			e.printStackTrace();
		}
		return -1;
	}

	public int write(String bbsTitle, String userID, String bbsContents) {
		String SQL = "INSERT INTO board VALUES (?, ?, ?, ?, ?, ?, ?, ?)";
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			pstmt.setInt(1, getNext()); // 게시물번호 호출하는 함수. getNext()참조.
			pstmt.setString(2, null);
			pstmt.setString(3, userID);
			pstmt.setString(4, bbsTitle);
			pstmt.setString(5, bbsContents);
			pstmt.setString(6, getDate());
			pstmt.setInt(7, 0); // 0=문의게시판, 1= 튜터링공지사항게시판, 2=튜터링보고서, 3=튜터링회의록, 4=공지사항, 5=스터디, 6=졸프, 7=공모전, 8=청원,
								// 9=소원)
			pstmt.setInt(8, 0); // 조회수
			return pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return -1; // 데이터베이스 오류
	}

	public ArrayList<Bbs> getList(int pageNumber) {
		String SQL = "SELECT * FROM board WHERE BoardNumber < ? ORDER BY BoardNumber DESC LIMIT 10";
		ArrayList<Bbs> list = new ArrayList<Bbs>();
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			pstmt.setInt(1,  getNext() - (pageNumber - 1) * 10);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				Bbs bbs = new Bbs();
				bbs.setBbsBoardNumber(rs.getInt(1));
				bbs.setBbsAcademicNumber(rs.getString(2));
				bbs.setBbsID(rs.getString(3));
				bbs.setBbsTitle(rs.getString(4));
				bbs.setBbsContents(rs.getString(5));
				bbs.setBbsDate(rs.getString(6));
				bbs.setBbsCode(rs.getInt(7));
				bbs.setBbsViews(rs.getInt(8));
				list.add(bbs);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	
	public boolean nextPage(int pageNumber) {
		//게시글이 10단위로 끊긴다고 가정하에, 다음 페이지 버튼의 유무 설정.
		String SQL = "SELECT * FROM board WHERE BoardNumber < ? ORDER BY BoardNumber DESC LIMIT 10";
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			pstmt.setInt(1,  getNext() - (pageNumber - 1) * 10);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				return true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return false;
	}
	
	public Bbs getBbs(int bbsBoardNumber) {
		String SQL = "SELECT * FROM board WHERE BoardNumber = ?";
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			pstmt.setInt(1, bbsBoardNumber);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				Bbs bbs = new Bbs();
				bbs.setBbsBoardNumber(rs.getInt(1));
				bbs.setBbsAcademicNumber(rs.getString(2));
				bbs.setBbsID(rs.getString(3));
				bbs.setBbsTitle(rs.getString(4));
				bbs.setBbsContents(rs.getString(5));
				bbs.setBbsDate(rs.getString(6));
				bbs.setBbsCode(rs.getInt(7));
				bbs.setBbsViews(rs.getInt(8));
				return bbs;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	
	public int update(int bbsBoardNumber, String bbsTitle, String bbsContents) {
		String SQL = "UPDATE board SET title = ?, contents = ? WHERE boardnumber = ?";
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, bbsTitle); // 게시물번호 호출하는 함수. getNext()참조.
			pstmt.setString(2, bbsContents);
			pstmt.setInt(3, bbsBoardNumber);
			return pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return -1; // 데이터베이스 오류
	}
	
	public int delete(int bbsBoardNumber) {
		String SQL = "DELETE FROM board WHERE boardnumber = ?";
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			pstmt.setInt(1, bbsBoardNumber); // 게시물번호 호출하는 함수. getNext()참조.
			return pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return -1; // 데이터베이스 오류
	}
}
