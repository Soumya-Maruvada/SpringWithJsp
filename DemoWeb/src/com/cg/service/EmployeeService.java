package com.cg.service;

import java.util.List;

import com.cg.entities.Employee;

public interface EmployeeService {
	public abstract Employee save(Employee employee);
	public abstract List<Employee> loadAll();
}
