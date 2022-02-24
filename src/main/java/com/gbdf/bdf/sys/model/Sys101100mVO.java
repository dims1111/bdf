package com.gbdf.bdf.sys.model;

// 회사 VO
public class Sys101100mVO {

	private Integer company_id;
	private String company_code;
	private String company_name_kr;
	private String company_name_en;
	private String begin_date;
	private String end_date;
	private String user_yn;
	private String address_line1;
	private String address_line2;
	private String zip_code;
	private String email_address;
	private String telephone_number;
	private String description;
	private String create_by;
	private String create_date;
	private String update_by;
	private String update_date;

	public Integer getCompany_id() {
		return company_id;
	}

	public void setCompany_id(Integer company_id) {
		this.company_id = company_id;
	}

	public String getCompany_code() {
		return company_code;
	}

	public void setCompany_code(String company_code) {
		this.company_code = company_code;
	}

	public String getCompany_name_kr() {
		return company_name_kr;
	}

	public void setCompany_name_kr(String company_name_kr) {
		this.company_name_kr = company_name_kr;
	}

	public String getCompany_name_en() {
		return company_name_en;
	}

	public void setCompany_name_en(String company_name_en) {
		this.company_name_en = company_name_en;
	}

	public String getBegin_date() {
		return begin_date;
	}

	public void setBegin_date(String begin_date) {
		this.begin_date = begin_date;
	}

	public String getEnd_date() {
		return end_date;
	}

	public void setEnd_date(String end_date) {
		this.end_date = end_date;
	}

	public String getUser_yn() {
		return user_yn;
	}

	public void setUser_yn(String user_yn) {
		this.user_yn = user_yn;
	}

	public String getAddress_line1() {
		return address_line1;
	}

	public void setAddress_line1(String address_line1) {
		this.address_line1 = address_line1;
	}

	public String getAddress_line2() {
		return address_line2;
	}

	public void setAddress_line2(String address_line2) {
		this.address_line2 = address_line2;
	}

	public String getZip_code() {
		return zip_code;
	}

	public void setZip_code(String zip_code) {
		this.zip_code = zip_code;
	}

	public String getEmail_address() {
		return email_address;
	}

	public void setEmail_address(String email_address) {
		this.email_address = email_address;
	}

	public String getTelephone_number() {
		return telephone_number;
	}

	public void setTelephone_number(String telephone_number) {
		this.telephone_number = telephone_number;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getCreate_by() {
		return create_by;
	}

	public void setCreate_by(String create_by) {
		this.create_by = create_by;
	}

	public String getCreate_date() {
		return create_date;
	}

	public void setCreate_date(String create_date) {
		this.create_date = create_date;
	}

	public String getUpdate_by() {
		return update_by;
	}

	public void setUpdate_by(String update_by) {
		this.update_by = update_by;
	}

	public String getUpdate_date() {
		return update_date;
	}

	public void setUpdate_date(String update_date) {
		this.update_date = update_date;
	}

	@Override
	public String toString() {
		return "Sys101100mVO [company_id=" + company_id + ", company_code=" + company_code + ", company_name_kr="
				+ company_name_kr + ", company_name_en=" + company_name_en + ", begin_date=" + begin_date
				+ ", end_date=" + end_date + ", user_yn=" + user_yn + ", address_line1=" + address_line1
				+ ", address_line2=" + address_line2 + ", zip_code=" + zip_code + ", email_address=" + email_address
				+ ", telephone_number=" + telephone_number + ", description=" + description + ", create_by=" + create_by
				+ ", create_date=" + create_date + ", update_by=" + update_by + ", update_date=" + update_date + "]";
	}

}
