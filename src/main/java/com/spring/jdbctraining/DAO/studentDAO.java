package com.spring.jdbctraining.DAO;

import java.util.List;

import com.spring.jdbctraining.model.*;

public interface studentDAO 
{

	public List<Student> getAllstudents();

	public Student getOnestudents(int studentid);

	public boolean saveStudents(Student student);

	public boolean Updatestudents(Student student);
	
	public boolean deletestudents(int studentid);
}
