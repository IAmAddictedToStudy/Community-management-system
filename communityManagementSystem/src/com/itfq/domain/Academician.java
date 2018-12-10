package com.itfq.domain;

import java.io.Serializable;

public class Academician implements Serializable{

    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String studentId;
	private int associationId;
	private String time;
	
	public Academician() {
		super();
	}
	public String getStudentId() {
		return studentId;
	}
	public void setStudentId(String studentId) {
		this.studentId = studentId;
	}
	public int getAssociationId() {
		return associationId;
	}
	public void setAssociationId(int associationId) {
		this.associationId = associationId;
	}
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	public Academician(String studentId, int associationId, String time) {
		super();
		this.studentId = studentId;
		this.associationId = associationId;
		this.time = time;
	}
	@Override
	public String toString() {
		return "Academician [studentId=" + studentId + ", associationId=" + associationId + ", time=" + time + "]";
	}
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + associationId;
		result = prime * result + ((studentId == null) ? 0 : studentId.hashCode());
		result = prime * result + ((time == null) ? 0 : time.hashCode());
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
		Academician other = (Academician) obj;
		if (associationId != other.associationId)
			return false;
		if (studentId == null) {
			if (other.studentId != null)
				return false;
		} else if (!studentId.equals(other.studentId))
			return false;
		if (time == null) {
			if (other.time != null)
				return false;
		} else if (!time.equals(other.time))
			return false;
		return true;
	}
	
}
