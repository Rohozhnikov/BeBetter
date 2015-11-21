package mum.edu.domain;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class RecentActivities {

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id;

	private String complited;
	private long grade;

	public RecentActivities() {
		// TODO Auto-generated constructor stub
	}

	public RecentActivities(String complited, long grade) {
		super();
		this.complited = complited;
		this.grade = grade;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getComplited() {
		return complited;
	}

	public void setComplited(String complited) {
		this.complited = complited;
	}

	public long getGrade() {
		return grade;
	}

	public void setGrade(long grade) {
		this.grade = grade;
	}
}
