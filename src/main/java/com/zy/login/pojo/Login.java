package com.zy.login.pojo;

public class Login {
	//	'lid', 
	private Integer lid;
	//	'lusername', 
	private String lusername;
	//	'lpassword', 
	private String lpassword;
	//	'ltype', 
	private Integer ltype;
	//	'lstate', 
	private Integer lstate;
	//	'lcode'
	private String lcode;
//			'lname',
    private  String lname;
//			'lmoney',
	private  Double lmoney;
//			'lidcard',
    private String lidcard;
//			'lphone',
	private  String lphone;
//			'laddress',
	private  String laddress;
//			'lsex'
	private  Integer lsex;

	public String getLname() {
		return lname;
	}

	public Double getLmoney() {
		return lmoney;
	}

	public String getLidcard() {
		return lidcard;
	}

	public String getLphone() {
		return lphone;
	}

	public String getLaddress() {
		return laddress;
	}

	public Integer getLsex() {
		return lsex;
	}

	public void setLname(String lname) {
		this.lname = lname;
	}

	public void setLmoney(Double lmoney) {
		this.lmoney = lmoney;
	}

	public void setLidcard(String lidcard) {
		this.lidcard = lidcard;
	}

	public void setLphone(String lphone) {
		this.lphone = lphone;
	}

	public void setLaddress(String laddress) {
		this.laddress = laddress;
	}

	public void setLsex(Integer lsex) {
		this.lsex = lsex;
	}

	public Integer getLid() {
		return lid;
	}
	public void setLid(Integer lid) {
		this.lid = lid;
	}
	public String getLusername() {
		return lusername;
	}
	public void setLusername(String lusername) {
		this.lusername = lusername;
	}
	public String getLpassword() {
		return lpassword;
	}
	public void setLpassword(String lpassword) {
		this.lpassword = lpassword;
	}
	public Integer getLtype() {
		return ltype;
	}
	public void setLtype(Integer ltype) {
		this.ltype = ltype;
	}
	public Integer getLstate() {
		return lstate;
	}
	public void setLstate(Integer lstate) {
		this.lstate = lstate;
	}
	public String getLcode() {
		return lcode;
	}
	public void setLcode(String lcode) {
		this.lcode = lcode;
	}
	public Login(Integer lid, String lusername, String lpassword, Integer ltype, Integer lstate, String lcode) {
		super();
		this.lid = lid;
		this.lusername = lusername;
		this.lpassword = lpassword;
		this.ltype = ltype;
		this.lstate = lstate;
		this.lcode = lcode;
	}
	public Login() {
		super();
	}
	
}
