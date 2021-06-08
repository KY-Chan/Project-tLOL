package tLOL.service.member;

import java.io.Reader;
import java.sql.Connection;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import tLOL.dao.MemberDao;

public class MemberOutAction {

	//데이터베이스 연결
	private Connection getConnection() {
		Connection conn = null;
		try {
			Context ctx = new InitialContext();
			DataSource ds = (DataSource)ctx.lookup("java:comp/env/jdbc/OracleDB");
			conn = ds.getConnection();
		} catch (Exception e) {
			System.out.println("연결 에러 : "+e.getMessage());
		}
		return conn;
	}
	
	MemberDao md = MemberDao.getInstance();
/*	
	while() {
		int result = md.delete(account_id);
	}
	*/
}
