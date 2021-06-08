package tLOL.service.member;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import tLOL.model.Member;

public class MemberList {
	private static MemberList instance = new MemberList();
	private MemberList() {}
	// 클래스 메서드
	public static MemberList getInstance() {
		return instance;
	}
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
	
	public ArrayList<Member> getMemberAll() {
		ArrayList<Member> list = new ArrayList<Member>();
		String sql = "select * from ACCOUNTS";
		Connection conn = getConnection();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			while(rs.next()){
				Member memberlist = new Member();
		
				memberlist.setmember_num(rs.getInt("member_num"));
				memberlist.setmember_id(rs.getString("member_id"));
				memberlist.setmember_nickname(rs.getString("member_nickname"));
				memberlist.setmember_reg_date(rs.getDate("member_reg_date"));
				memberlist.setmember_email(rs.getString("member_email"));
				memberlist.setmember_del(rs.getString("member_del"));
		
				list.add(memberlist);
			}
		} catch (Exception e) {
			System.out.println("Err code : "+e.getMessage());
		} finally {
			try {
				if(rs!=null)rs.close();
				if(pstmt!=null)pstmt.close();
				if(conn!=null)conn.close();
			} catch (Exception e2) {
				// TODO: handle exception
			}
		}
		return list;
	}
}
	
