package com.jsp.studentservice;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.jsp.student.Student;
import com.jsp.studentdao.StudentDao;

@Component
public class StudentService {
	@Autowired
	private StudentDao studentDao;

	public Student saveStudent(Student student) {
		if (student != null) {
			return studentDao.saveStudent(student);
		}
		return null;
	}

	public List<Student> getAllStudents() {
		return studentDao.getAllStudents();
	}

	public boolean deleteById(int id) {
		return studentDao.deleteById(id);
	}
	public Student updateStudentById(int id,Student student) {
		Student s=studentDao.getStudentById(id);
		s.setName(student.getName());
		s.setEmail(student.getEmail());
		return studentDao.updateStudentById(s);
	}
}
