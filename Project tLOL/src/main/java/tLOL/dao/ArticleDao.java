package tLOL.dao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import tLOL.model.Article;
public class ArticleDao {
	private static ArticleDao instance = new ArticleDao();
	private ArticleDao() {}
	public static ArticleDao getInstance() {
		return instance;
		
	}	
	private Connection getConnection() {
		Connection conn = null;
		try {
			Context ctx = new InitialContext();
			DataSource ds = (DataSource)ctx.lookup("java:comp/env/jdbc/OracleDB");
			conn = ds.getConnection();
		}catch (Exception e) {
			System.out.println("연결 에러 : "+e.getMessage());
		}
		return conn;
	} 
	public List<Article> list(int startRow, int endRow) {
		List<Article> list = new ArrayList<Article>();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		Connection conn = getConnection();
		String sql = "select * from article";
		try {
			pstmt = conn.prepareStatement(sql);
			//pstmt.setInt(1, startRow);
			//pstmt.setInt(2, endRow);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				Article article = new Article();
				article.setBoard_num(rs.getInt("board_num"));
				article.setArticle_num(rs.getInt("article_num"));
				article.setAccount_num(rs.getInt("account_num"));
				article.setArticle_title(rs.getString("article_title"));
				article.setArticle_content(rs.getString("article_content"));
				article.setArticle_date(rs.getDate("article_date"));
				article.setArticle_read(rs.getInt("article_read"));
				article.setArticle_recom(rs.getInt("article_recom"));
				article.setArticle_del(rs.getString("article_del"));
				
				list.add(article);
			}
		}catch (Exception e) {
			System.out.println(e.getMessage());
		}finally {
			try {
				if (rs != null) rs.close();
				if (pstmt != null) pstmt.close();
				if (conn != null)  conn.close();
			}catch (Exception e) {		}
		}
		return list;
	}
	public int insert(Article article) {
		int result = 0;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		Connection conn = getConnection();
		String sql="insert into article values(?,?,?,?,?,sysdate,?,?,'n')";
		String sql2 = "select nvl(max(article_num),0) + 1 from article";
		
		try {
			pstmt = conn.prepareStatement(sql2);
			rs = pstmt.executeQuery();
			rs.next();
			int number = rs.getInt(1); 
			pstmt.close();
			
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, number);
			pstmt.setInt(2, article.getAccount_num());
			pstmt.setString(3, article.getArticle_title());
			pstmt.setString(4, article.getArticle_content());
			result = pstmt.executeUpdate();			
		}catch (Exception e) {
			System.out.println(e.getMessage());
		}finally {
			try {
				if (rs != null) rs.close();
				if (pstmt != null) pstmt.close();
				if (conn != null)  conn.close();
			}catch (Exception e) {		}
		}
		return result;
	}
	public void readcoutUpdate(int num) {
		PreparedStatement pstmt = null;
		Connection conn = getConnection();
		String sql="update article set readcount = readcount + 1 where num=?";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, num);
	
			pstmt.executeUpdate();			
		}catch (Exception e) {
			System.out.println(e.getMessage());
		}finally {
			try {
				if (pstmt != null) pstmt.close();
				if (conn != null)  conn.close();
			}catch (Exception e) {		}
		}
	}
	public Article select(int num) {
		Article article = new Article();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		Connection conn = getConnection();
		String sql = "select * from article where num=?";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, num);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				article.setBoard_num(rs.getInt("board_num"));
				article.setArticle_num(rs.getInt("article_num"));
				article.setAccount_num(rs.getInt("account_num"));
				article.setArticle_content(rs.getString("article_content"));
				article.setArticle_title(rs.getString("article_title"));
				article.setArticle_date(rs.getDate("article_date"));
				article.setArticle_read(rs.getInt("article_read"));
				article.setArticle_recom(rs.getInt("article_recom"));
				article.setArticle_del(rs.getString("article_del"));
			}
		}catch (Exception e) {
			System.out.println(e.getMessage());
		}finally {
			try {
				if (rs != null) rs.close();
				if (pstmt != null) pstmt.close();
				if (conn != null)  conn.close();
			}catch (Exception e) {		}
		}
		return article;
	}
	public int update(Article article) { // article 화면에서 입력한 게시글
		int result = 0;
		PreparedStatement pstmt = null;
		Connection conn = getConnection();
		String sql="update article set content=?,subject=? where num=?";
		Article bd = select(article.getBoard_num()); // bd은 num으로 읽은 게시글
					try {
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, article.getArticle_content());
				pstmt.setString(2, article.getArticle_title());				
				pstmt.setInt(3, article.getBoard_num());				
				result = pstmt.executeUpdate();			
			}catch (Exception e) {
				System.out.println(e.getMessage());
			}finally {
				try {
					if (pstmt != null) pstmt.close();
					if (conn != null)  conn.close();
				}catch (Exception e) {		}
			}
		return result;
	}
	/*public int delete(int num, String password) { // article 화면에서 입력한 게시글
		int result = 0;
		PreparedStatement pstmt = null;
		Connection conn = getConnection();
		String sql="update article set del='y' where num=?";
		Article bd = select(num); // bd은 num으로 읽은 게시글
			try {
				pstmt = conn.prepareStatement(sql);
				pstmt.setInt(1,num);				
				result = pstmt.executeUpdate();			
			}catch (Exception e) {
				System.out.println(e.getMessage());
			}finally {
				try {
					if (pstmt != null) pstmt.close();
					if (conn != null)  conn.close();
				}catch (Exception e) {		}
			}
		return result;
	}*/
	public int getTotal() {
		int total = 0;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		Connection conn = getConnection();
		String sql = "select count(*) from article";
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				total = rs.getInt(1);
			}
		}catch (Exception e) {
			System.out.println(e.getMessage());
		}finally {
			try {
				if (rs != null) rs.close();
				if (pstmt != null) pstmt.close();
				if (conn != null)  conn.close();
			}catch (Exception e) {		}
		}
		return total;
	}
}

