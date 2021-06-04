package tLOL.dao;

import java.io.Reader;
import java.sql.Connection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import tLOL.model.Article;

public class ArticleDao {
	private static ArticleDao instance = new ArticleDao();
	private ArticleDao() {}
	public static ArticleDao getInstance() {
		return instance;
	}

	private static SqlSession session;
	static {
		try {
			Reader reader = Resources.getResourceAsReader("configuration.xml");
			SqlSessionFactory ssf = new SqlSessionFactoryBuilder().build(reader);
			session = ssf.openSession(true);
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
	}
	@SuppressWarnings("unchecked") // 게시판 글 불러오기
	public List<Article> list(int startRow, int endRow, int board_num) {
		Map<String, Integer> parms = new HashMap<String, Integer>();
		parms.put("board_num", board_num);
		parms.put("startRow", startRow);
		parms.put("endRow", endRow);
		return session.selectList("articlens.selectList", parms);
	}
	@SuppressWarnings("unchecked") // 내가 쓴 글 불러오기
	public List<Article> myList(int startRow, int endRow, int account_num) {
		Map<String, Integer> parms = new HashMap<String, Integer>();
		parms.put("account_num", account_num);
		parms.put("startRow", startRow);
		parms.put("endRow", endRow);
		return session.selectList("articlens.selectMyList", parms);
	}
	
	public int getTotal(int board_num) {
		return (int) session.selectOne("articlens.total", board_num);
	}
	public void readcountUpdate(int article_num, int board_num) {
		Map<String, Integer> parms = new HashMap<String, Integer>();
		parms.put("board_num", board_num);
		parms.put("article_num", article_num);
		session.update("articlens.readcount", parms);		
	}
	public Article select(int article_num, int board_num) {
		Map<String, Integer> parms = new HashMap<String, Integer>();
		parms.put("board_num", board_num);
		parms.put("article_num", article_num);
		return (Article) session.selectOne("articlens.select", parms);	
	}
	public int getMyTotal(int account_num) {
		return (int) session.selectOne("articlens.myTotal", account_num);
	}
	   public int insert(Article article) {
		      return session.insert("articlens.insert", article);
		   }
}