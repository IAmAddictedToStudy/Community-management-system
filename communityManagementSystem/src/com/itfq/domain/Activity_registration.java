package com.itfq.domain;

import java.io.Serializable;

public class Activity_registration implements Serializable{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private int aaid;
	private String studentId;
	
	
	public int getAaid() {
		return aaid;
	}
	public void setAaid(int aaid) {
		this.aaid = aaid;
	}
	public String getStudentId() {
		return studentId;
	}
	public void setStudentId(String studentId) {
		this.studentId = studentId;
	}
	public Activity_registration(int aaid, String studentId) {
		this.aaid = aaid;
		this.studentId = studentId;
	}
	public Activity_registration() {

	}
	@Override
	public String toString() {
		return "Activity_registration [aaid=" + aaid + ", studentId=" + studentId + "]";
	}
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + aaid;
		result = prime * result + ((studentId == null) ? 0 : studentId.hashCode());
		return result;
	}
	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Activity_registration other = (Activity_registration) obj;
		if (aaid != other.aaid)
			return false;
		if (studentId == null) {
			if (other.studentId != null)
				return false;
		} else if (!studentId.equals(other.studentId))
			return false;
		return true;
	}

}
