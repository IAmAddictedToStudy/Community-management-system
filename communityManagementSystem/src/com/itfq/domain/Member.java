package com.itfq.domain;



public class Member {
	/*
	 * `studentId`, `password`, `mName`, `mSex`, `academy`, `grade`, `profession`,
	 * `classAndGrade`, `dorm`, `phone`, `QQ`, `email`
	 */
	private String studentId;// 学号
	private String password;// 密码
	private String mName;// 姓名
	private String mSex;// 性别
	private String academy;// 学院
	private String grade;// 年级
	private String profession;// 专业
	private String classAndGrade;// 班级
	private String dorm;// 宿舍
	private String phone;// 电话
	private String QQ;// QQ
	private String email;// 邮箱
	
	public Member() {
		super();
	}

	public Member(String studentId, String password, String mName, String mSex, String academy, String grade,
			String profession, String classAndGrade, String dorm, String phone, String qQ, String email) {
		super();
		this.studentId = studentId;
		this.password = password;
		this.mName = mName;
		this.mSex = mSex;
		this.academy = academy;
		this.grade = grade;
		this.profession = profession;
		this.classAndGrade = classAndGrade;
		this.dorm = dorm;
		this.phone = phone;
		QQ = qQ;
		this.email = email;
	}

	public String toString() {
		return "member [studentId=" + studentId + ", password=" + password + ", mName=" + mName + ", mSex=" + mSex
				+ ", academy=" + academy + ", grade=" + grade + ", profession=" + profession + ", classAndGrade="
				+ classAndGrade + ", dorm=" + dorm + ", phone=" + phone + ", QQ=" + QQ + ", email=" + email + "]";
	}
	public String getStudentId() {
		return studentId;
	}
	public void setStudentId(String studentId) {
		this.studentId = studentId;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getmName() {
		return mName;
	}
	public void setmName(String mName) {
		this.mName = mName;
	}
	public String getmSex() {
		return mSex;
	}
	public void setmSex(String mSex) {
		this.mSex = mSex;
	}
	public String getAcademy() {
		return academy;
	}
	public void setAcademy(String academy) {
		this.academy = academy;
	}
	public String getGrade() {
		return grade;
	}
	public void setGrade(String grade) {
		this.grade = grade;
	}
	public String getProfession() {
		return profession;
	}
	public void setProfession(String profession) {
		this.profession = profession;
	}
	public String getClassAndGrade() {
		return classAndGrade;
	}
	public void setClassAndGrade(String classAndGrade) {
		this.classAndGrade = classAndGrade;
	}
	public String getDorm() {
		return dorm;
	}
	public void setDorm(String dorm) {
		this.dorm = dorm;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getQQ() {
		return QQ;
	}
	public void setQQ(String qQ) {
		QQ = qQ;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}

}
