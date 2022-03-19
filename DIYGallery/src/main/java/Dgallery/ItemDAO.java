package Dgallery;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;


public class ItemDAO {
	
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
	//book저장 => book 테이블에 저장
	public void addItem(ItemVo vo) throws Exception {
		open();
		
		String sql = "insert into item (author,title,content,img) values(?,?,?,?)";
		pstmt = conn.prepareStatement(sql);
		
		try{
			pstmt.setString(1, vo.getAuthor());
			pstmt.setString(2, vo.getTitle());
			pstmt.setString(3, vo.getContent());
			pstmt.setString(4, vo.getImg());
			pstmt.executeUpdate();
			
		}catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}
	}
	public void addItem(String author,String title,String content,String img) throws Exception {
		open();
		
		String sql = "insert into item (author,title,content,img) values(?,?,?,?)";
		pstmt = conn.prepareStatement(sql);
		
		try{
			pstmt.setString(1, author);
			pstmt.setString(2, title);
			pstmt.setString(3, content);
			pstmt.setString(4, img);
			pstmt.executeUpdate();
			
		}catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}
	}
	
	//****************************************************************
	
	//****************************************************************
		public List<ItemVo> getAllItems() {
			open();
			List<ItemVo> items = new ArrayList<>();
			
			try {
				pstmt = conn.prepareStatement("select * from item");
				ResultSet rs = pstmt.executeQuery();
		
				while(rs.next()) {
					ItemVo vo = new ItemVo();
					vo.setTitle(rs.getString("title"));
					vo.setAuthor(rs.getString("author"));
					vo.setContent(rs.getString("content"));
					vo.setImg(rs.getString("img"));
					
					items.add(vo);
				}
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				close();
			}
			return items;
		}
		//*****************************************************
	    public List<ItemVo> getSearchItems(String inputText) {
	          open();
	          List<ItemVo> items = new ArrayList<>();
	          
	          try {
	             pstmt = conn.prepareStatement("select * from item where title LIKE '%' || ? || '%' or content LIKE '%' || ? || '%' or"+
	            		 						" author LIKE '%' || ? || '%'");
	             pstmt.setString(1, inputText);
	             pstmt.setString(2, inputText);
	             pstmt.setString(3, inputText);
	             ResultSet rs = pstmt.executeQuery();
	       
	             while(rs.next()) {
	                ItemVo vo = new ItemVo();
	                vo.setTitle(rs.getString("title"));
	                vo.setAuthor(rs.getString("author"));
	                vo.setContent(rs.getString("content"));
	                vo.setImg(rs.getString("img"));
	                items.add(vo);
	             }
	          } catch (Exception e) {
	             e.printStackTrace();
	          } finally {
	             close();
	          }
	          return items;
	       }

	//*******************************************************
}
