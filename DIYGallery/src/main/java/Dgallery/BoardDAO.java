package Dgallery;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class BoardDAO {
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
	
	public void insert(String title,String content,String day) {
		open();
		String sql = "insert into board(title,content,day) values (?,?,?)";
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, title);
			pstmt.setString(2, content);
			pstmt.setString(3,day);
			
			pstmt.executeUpdate();
			
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			close();
			System.out.println("게시판 작성 완료");
		}
	}
	
	//****************************************************************
	public List<BoardVO> getAll() {
		open();
		List<BoardVO> boards = new ArrayList<>();
		try {
			pstmt = conn.prepareStatement("select * from board");
			ResultSet rs = pstmt.executeQuery();
			
			while(rs.next()) {
				BoardVO b = new BoardVO();
				b.setBid(rs.getString("bid"));
				b.setTitle(rs.getString("title"));
				b.setContent(rs.getString("content"));
				b.setDay(rs.getString("day"));
				
				boards.add(b);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return boards;
	}
	
	//타이틀 클릭
	 public List<BoardVO> getTitle(String inputText) {
         open();
         List<BoardVO> items = new ArrayList<>();
         
         try {
            pstmt = conn.prepareStatement("select * from board where title = ?");
            pstmt.setString(1, inputText);
            ResultSet rs = pstmt.executeQuery();
      
            while(rs.next()) {
               BoardVO vo = new BoardVO();
               vo.setBid(rs.getString("bid"));
               vo.setTitle(rs.getString("title"));
               vo.setDay(rs.getString("day"));
               vo.setContent(rs.getString("content"));
               items.add(vo);
            }
         } catch (Exception e) {
            e.printStackTrace();
         } finally {
            close();
         }
         return items;
      }
	 
	 //게시판검색
	 public List<BoardVO> getSearchBoard(String inputText) {
         open();
         List<BoardVO> items = new ArrayList<>();
         
         try {
            pstmt = conn.prepareStatement("select * from board where title LIKE '%' || ? || '%' or day LIKE '%' || ? || '%'");
            pstmt.setString(1, inputText);
            pstmt.setString(2, inputText);
            ResultSet rs = pstmt.executeQuery();
      
            while(rs.next()) {
               BoardVO vo = new BoardVO();
               vo.setBid(rs.getString("bid"));
               vo.setTitle(rs.getString("title"));
               vo.setContent(rs.getString("content"));
               vo.setDay(rs.getString("day"));
               items.add(vo);
            }
         } catch (Exception e) {
            e.printStackTrace();
         } finally {
            close();
         }
         return items;
      }
}
