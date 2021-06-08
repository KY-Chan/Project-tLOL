package tLOL.model;
import java.sql.Date;
public class Member {
	private int account_num;
	private String account_id;
	private String account_pw;
	private String account_nickname;
	private Date account_reg_date;
	private String account_email;
	private String account_del;
	private int account_admin;
	
	public int getAccount_num() {
		return account_num;
	}
	public void setAccount_num(int account_num) {
		this.account_num = account_num;
	}
	public String getAccount_id() {
		return account_id;
	}
	public void setAccount_id(String account_id) {
		this.account_id = account_id;
	}
	public String getAccount_pw() {
		return account_pw;
	}
	public void setAccount_pw(String account_pw) {
		this.account_pw = account_pw;
	}
	public String getAccount_nickname() {
		return account_nickname;
	}
	public void setAccount_nickname(String account_nickname) {
		this.account_nickname = account_nickname;
	}
	public Date getAccount_reg_date() {
		return account_reg_date;
	}
	public void setAccount_reg_date(Date account_reg_date) {
		this.account_reg_date = account_reg_date;
	}
	public String getAccount_email() {
		return account_email;
	}
	public void setAccount_email(String account_email) {
		this.account_email = account_email;
	}
	public String getAccount_del() {
		return account_del;
	}
	public void setAccount_del(String account_del) {
		this.account_del = account_del;
	}
	public int getAccount_admin() {
		return account_admin;
	}
	public void setAccount_admin(int account_admin) {
		this.account_admin = account_admin;
	}

}