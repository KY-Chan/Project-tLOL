package tLOL.model;

import java.sql.Date;

public class Comment {
	private int board_num;
	public int getBoard_num() {
		return board_num;
	}
	public void setBoard_num(int board_num) {
		this.board_num = board_num;
	}
	public int getArticle_num() {
		return article_num;
	}
	public void setArticle_num(int article_num) {
		this.article_num = article_num;
	}
	public int getComm_num() {
		return comm_num;
	}
	public void setComm_num(int comm_num) {
		this.comm_num = comm_num;
	}
	public int getAccount_num() {
		return account_num;
	}
	public void setAccount_num(int account_num) {
		this.account_num = account_num;
	}
	public int getAccount_nickname() {
		return account_nickname;
	}
	public void setAccount_nickname(int account_nickname) {
		this.account_nickname = account_nickname;
	}
	public String getComm_content() {
		return comm_content;
	}
	public void setComm_content(String comm_content) {
		this.comm_content = comm_content;
	}
	public int getComm_recom() {
		return comm_recom;
	}
	public void setComm_recom(int comm_recom) {
		this.comm_recom = comm_recom;
	}
	public Date getComm_date() {
		return comm_date;
	}
	public void setComm_date(Date comm_date) {
		this.comm_date = comm_date;
	}
	public String getComm_del() {
		return comm_del;
	}
	public void setComm_del(String comm_del) {
		this.comm_del = comm_del;
	}
	private int article_num;
	private int comm_num;
	private int account_num;
	private int account_nickname;
	private String comm_content;
	private int comm_recom;
	private Date comm_date;
	private String comm_del;
	
}
