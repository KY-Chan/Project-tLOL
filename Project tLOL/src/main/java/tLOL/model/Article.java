package tLOL.model;

import java.sql.Date;

public class Article {
	private int board_num;
	private int article_num;
	private int account_num;
	private String article_title;
	private String article_content;
	private Date article_date;
	private int article_read;
	private int article_recom;
	private String article_del;
	private String account_nickname;
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
	public int getAccount_num() {
		return account_num;
	}
	public void setAccount_num(int account_num) {
		this.account_num = account_num;
	}
	public String getArticle_title() {
		return article_title;
	}
	public void setArticle_title(String article_title) {
		this.article_title = article_title;
	}
	public String getArticle_content() {
		return article_content;
	}
	public void setArticle_content(String article_content) {
		this.article_content = article_content;
	}
	public Date getArticle_date() {
		return article_date;
	}
	public void setArticle_date(Date article_date) {
		this.article_date = article_date;
	}
	public int getArticle_read() {
		return article_read;
	}
	public void setArticle_read(int article_read) {
		this.article_read = article_read;
	}
	public int getArticle_recom() {
		return article_recom;
	}
	public void setArticle_recom(int article_recom) {
		this.article_recom = article_recom;
	}

	public String getArticle_del() {
		return article_del;
	}
	public void setArticle_del(String article_del) {
		this.article_del = article_del;
	}
	public String getAccount_nickname() {
		return account_nickname;
	}
	public void setAccount_nickname(String account_nickname) {
		this.account_nickname = account_nickname;
	}
}
