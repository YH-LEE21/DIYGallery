package Dgallery;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;



public class MemberDAO {
	Connection conn = null;
	PreparedStatement pstmt;

	final String JDBC_DRIVER = "org.h2.Driver";
	final String JDBC_URL = "jdbc:h2:tcp://localhost/~/YH_TEST";
	
	public void open(){
		try {
			Class.forName(JDBC_DRIVER);
			conn = DriverManager.getConnection(JDBC_URL,"YH_TEST","0226");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public void close() {
		try {
			pstmt.close();
			conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public void insert(String id, String pwd, String email, String phone) {
		open();
		String sql = "insert into member(id,pwd,email,phone) values (?,?,?,?)";
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			pstmt.setString(2, pwd);
			pstmt.setString(3, email);
			pstmt.setString(4, phone);
			
			pstmt.executeUpdate();
			
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			close();
			System.out.println("회원가입 성공...");
		}
	}
	
	//****************************************************************
	public List<MemberVO> getAll() {
		open();
		List<MemberVO> members = new ArrayList<>();
		
		try {
			pstmt = conn.prepareStatement("select * from member");
			ResultSet rs = pstmt.executeQuery();
	
			while(rs.next()) {
				MemberVO m = new MemberVO();
				m.setId(rs.getString("id"));
				m.setPwd(rs.getString("pwd"));
				m.setEmail(rs.getString("email"));
				m.setPhone(rs.getString("phone"));
				
				members.add(m);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return members;
	}
	//*****************************************************
	public String loginCheck(String id2, String pwd2) {
		open();
		String loginOK = null;
		try {
			pstmt = conn.prepareStatement("select * from member where id=? and pwd=?");			
			pstmt.setString(1, id2);
			pstmt.setString(2, pwd2);
			
			ResultSet rs = pstmt.executeQuery();
			if(rs.next()) {//회원 맞음
				loginOK = "OK";
			}else {// 회원 아님
				loginOK = "No";
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return loginOK;
	}
}

	//****************************************************************


