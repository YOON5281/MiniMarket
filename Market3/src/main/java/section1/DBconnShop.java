package section1;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
//import java.util.logging.Logger;
//import java.sql.DriverManager;
//import java.sql.PreparedStatement;
//import java.sql.ResultSet;
//import java.sql.SQLException;

/*DB 연동
 *DB connection, select, insert
 * 
 * 
 * cd c://program files/mysql/mysql server 8.0/bin
 * */

public class DBconnShop {

//		private static Logger logger = Logger.getLogger(DBconn.class.getName()); 

	Connection conn; // 자바와 DB를 연결해줄 통로
	PreparedStatement pstmt;
	Statement stmt;
	ResultSet rs;
	ArrayList<Member> memberList = new ArrayList<Member>();
	ArrayList<Board> boardList = new ArrayList<Board>();

	String url = "jdbc:mysql://localhost:3306/fashionShop";

	/* http 처럼 mysql에서 지켜야 할 약속 */

	public DBconnShop() {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			System.out.println("Driver 로딩 성공!");
			conn = DriverManager.getConnection(url, "root", "dkehskdl4701!");

			System.out.println("DB 접속 성공!");

		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

//	public String test() {
//		String sql = "INSERT INTO testTable VALUES (?,?)";
//		try {
//			conn = DriverManager
//					.getConnection(url,"root","root");
//			pstmt = conn.prepareStatement(sql);
//		} catch (SQLException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
//		return "테스트";
//		
//	}

	/**
	 * testTable 회원 리스트 전체 조회
	 */
	public void findMember() {
		try {

			stmt = conn.createStatement();
			rs = stmt.executeQuery("SELECT * FROM memberInfo");

			while (rs.next()) { // 다음 행 있어?
//				System.out.println(rs.getString("id") + " " + rs.getString("pw") + " " + rs.getString("name") + " "
//						+ rs.getString("date") + " " + rs.getString("gender") + " " + rs.getString("tel") + " "
//						+ rs.getString("styleList"));

				memberList.add(new Member(rs.getString("id"), rs.getString("pw"), rs.getString("name"),
						rs.getString("date"), rs.getString("gender"), rs.getString("tel"), rs.getString("styleList")));

			}

//			for( int i = 0 ; i < memberList.size(); i++) {
//				
//				Member member  = memberList.get(i);
//				System.out.println((i + 1)+ "번 회원");
//				member.showMemberInfo();
//		
//			}

			rs.close();
			stmt.close();

		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	public ArrayList<Member> getMemberList() {

		return memberList;

	}

	public void findBoard() {
		try {

			stmt = conn.createStatement();
			rs = stmt.executeQuery("SELECT * FROM boardInfo");

			while (rs.next()) { // 다음 행 있어?
//				System.out.println(rs.getString("title") + " " + rs.getString("category") + " " + rs.getString("name") + " "
//						+ rs.getString("date") + " " + rs.getString("content"));

				boardList.add(new Board(rs.getString("title"), rs.getString("category"), rs.getString("name"),
						rs.getString("date"), rs.getString("content")));

			}

			rs.close();
			stmt.close();

		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	public ArrayList<Board> getBoardList() {

		return boardList;

	}

	public void saveInfo(String id, String pw, String name, String date, String gender, String tel, String styleList) {
		try {

			String sql = "INSERT INTO memberInfo VALUES (?,?,?,?,?,?,?)";
			pstmt = conn.prepareStatement(sql);

			pstmt.setString(1, id);
			pstmt.setString(2, pw);
			pstmt.setString(3, name);
			pstmt.setString(4, date);
			pstmt.setString(5, gender);
			pstmt.setString(6, tel);
			pstmt.setString(7, styleList);

			pstmt.executeUpdate();
			System.out.println("DB 저장 성공");
			pstmt.close();

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	public void saveBoard(String title, String category, String name, String date, String content) {
		try {
			String sql = "INSERT INTO boardInfo VALUES (?,?,?,?,?)";
			pstmt = conn.prepareStatement(sql);

			pstmt.setString(1, title);
			pstmt.setString(2, category);
			pstmt.setString(3, name);
			pstmt.setString(4, date);
			pstmt.setString(5, content);
			pstmt.executeUpdate();
			System.out.println("DB 저장 성공");
			pstmt.close();

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

//	public static void main(String[] args) {
//		DBconnShop db = new DBconnShop();
//		db.saveBoard("문의 있습니다","주문", "서준","2022-10-15", "질문 있어용");

//		db.saveInfo("abc", "1231" , "soo", "1999-05-04", "man", "010-8854-6852", "일상");
//		db.test();
//		db.findAll();
//	db.save(5, "tester5");

//	}

}
