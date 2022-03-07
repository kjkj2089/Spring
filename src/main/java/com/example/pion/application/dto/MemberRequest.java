package com.example.pion.application.dto;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;

public class MemberRequest {
	private String login_id;
	private String password;
	private String emp_name;
	private String resd_no_1;
	private String resd_no_2;
	private String my_birthday;
	private String solar_yn;
	private String married_anniver_date;
	private String comp_couple_yn;
	private String enter_date;
	private String before_career_year;
	private String before_career_month;
	private String company_career_year;
	private String company_career_month;
	private String email;
	private String hp_tel_no;
	private String home_addr;
	private String now_addr;
	private String base_team_id;
	private String job_code;
	private String auth_gubun_code;
	private String emp_no;
	private String biz_grp_id;
	private String married_yn;
	private String enter_yn;


	private List<MultipartFile> files;
	
	public MemberRequest(String login_id, String password, String emp_name, String resd_no_1, String resd_no_2,
			String my_birthday, String solar_yn, String married_anniver_date, String comp_couple_yn, String enter_date,
			String before_career_year, String before_career_month, String company_career_year,
			String company_career_month, String email, String hp_tel_no, String home_addr, String now_addr,
			String base_team_id, String job_code, String auth_gubun_code,  String emp_no, String biz_grp_id,
			String enter_yn, List<MultipartFile> files) {
		super();
		this.login_id = login_id;
		this.password = password;
		this.emp_name = emp_name;
		this.resd_no_1 = resd_no_1;
		this.resd_no_2 = resd_no_2;
		this.my_birthday = my_birthday;
		this.solar_yn = solar_yn;
		this.married_anniver_date = married_anniver_date;
		this.comp_couple_yn = comp_couple_yn;
		this.enter_date = enter_date;
		this.before_career_year = before_career_year;
		this.before_career_month = before_career_month;
		this.company_career_year = company_career_year;
		this.company_career_month = company_career_month;
		this.email = email;
		this.hp_tel_no = hp_tel_no;
		this.home_addr = home_addr;
		this.now_addr = now_addr;
		this.base_team_id = base_team_id;
		this.job_code = job_code;
		this.files = files;
		this.auth_gubun_code = auth_gubun_code;
		this.emp_no = emp_no;
		this.biz_grp_id = biz_grp_id;
		this.enter_yn = enter_yn;
	}
	
	public String getLogin_id() {
		return login_id;
	}
	public void setLogin_id(String login_id) {
		this.login_id = login_id;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getEmp_name() {
		return emp_name;
	}
	public void setEmp_name(String emp_name) {
		this.emp_name = emp_name;
	}
	public String getResd_no_1() {
		return resd_no_1;
	}
	public void setResd_no_1(String resd_no_1) {
		this.resd_no_1 = resd_no_1;
	}
	public String getResd_no_2() {
		return resd_no_2;
	}
	public void setResd_no_2(String resd_no_2) {
		this.resd_no_2 = resd_no_2;
	}
	public String getMy_birthday() {
		return my_birthday;
	}
	public void setMy_birthday(String my_birthday) {
		this.my_birthday = my_birthday;
	}
	public String getSolar_yn() {
		return solar_yn;
	}
	public void setSolar_yn(String solar_yn) {
		this.solar_yn = solar_yn;
	}
	public String getMarried_anniver_date() {
		return married_anniver_date;
	}
	public void setMarried_anniver_date(String married_anniver_date) {
		this.married_anniver_date = married_anniver_date;
	}
	public String getComp_couple_yn() {
		return comp_couple_yn;
	}
	public void setComp_couple_yn(String comp_couple_yn) {
		this.comp_couple_yn = comp_couple_yn;
	}
	public String getEnter_date() {
		return enter_date;
	}
	public void setEnter_date(String enter_date) {
		this.enter_date = enter_date;
	}
	public String getBefore_career_year() {
		return before_career_year;
	}
	public void setBefore_career_year(String before_career_year) {
		this.before_career_year = before_career_year;
	}
	public String getBefore_career_month() {
		return before_career_month;
	}
	public void setBefore_career_month(String before_career_month) {
		this.before_career_month = before_career_month;
	}
	public String getCompany_career_year() {
		return company_career_year;
	}
	public void setCompany_career_year(String company_career_year) {
		this.company_career_year = company_career_year;
	}
	public String getCompany_career_month() {
		return company_career_month;
	}
	public void setCompany_career_month(String company_career_month) {
		this.company_career_month = company_career_month;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getHp_tel_no() {
		return hp_tel_no;
	}
	public void setHp_tel_no(String hp_tel_no) {
		this.hp_tel_no = hp_tel_no;
	}
	public String getHome_addr() {
		return home_addr;
	}
	public void setHome_addr(String home_addr) {
		this.home_addr = home_addr;
	}
	public String getNow_addr() {
		return now_addr;
	}
	public void setNow_addr(String now_addr) {
		this.now_addr = now_addr;
	}
	public String getBase_team_id() {
		return base_team_id;
	}
	public void setBase_team_id(String base_team_id) {
		this.base_team_id = base_team_id;
	}
	public String getJob_code() {
		return job_code;
	}
	public void setJob_code(String job_code) {
		this.job_code = job_code;
	}
	public List<MultipartFile> getFiles() {
		return files;
	}
	public void setFiles(List<MultipartFile> files) {
		this.files = files;
	}
	public String getAuth_gubun_code() {
		return auth_gubun_code;
	}

	public void setAuth_gubun_code(String auth_gubun_code) {
		this.auth_gubun_code = auth_gubun_code;
	}

	public String getEmp_no() {
		return emp_no;
	}

	public void setEmp_no(String emp_no) {
		this.emp_no = emp_no;
	}
	public String getBiz_grp_id() {
		return biz_grp_id;
	}

	public void setBiz_grp_id(String biz_grp_id) {
		this.biz_grp_id = biz_grp_id;
	}

	public String getMarried_yn() {
		return married_yn;
	}

	public void setMarried_yn(String married_yn) {
		this.married_yn = married_yn;
	}
	public String getEnter_yn() {
		return enter_yn;
	}

	public void setEnter_yn(String enter_yn) {
		this.enter_yn = enter_yn;
	}
	
}
