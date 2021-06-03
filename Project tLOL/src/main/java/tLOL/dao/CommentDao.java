package tLOL.dao;

import java.io.Reader;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import tLOL.model.Comment;

public class CommentDao {
	private static CommentDao instance = new CommentDao();
	private CommentDao() {}
	public static CommentDao getInstance() {
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
	
	@SuppressWarnings("unchecked")
	public List<Comment> list(int article_num, int board_num) {
		Map<String, Integer> parms = new HashMap<String, Integer>();
		parms.put("board_num", board_num);
		parms.put("article_num", article_num);
		return session.selectList("commentns.selectList", parms);
	}
	@SuppressWarnings("unchecked")
	public List<Comment> myList(int startRow, int endRow, int account_num) {
		Map<String, Integer> parms = new HashMap<String, Integer>();
		parms.put("startRow", startRow);
		parms.put("endRow", endRow);
		parms.put("account_num", account_num);
		return session.selectList("commentns.selectMyList", parms);
	}
	public int insert(Comment comment) {
		return session.insert("commentns.insert", comment);
	}
	public int getMyTotal(int account_num) {
		return (int) session.selectOne("commentns.myTotal", account_num);
	}
}
