package com.cg.dao;

import java.util.List;

import com.cg.entities.Employee;
import com.cg.service.EmployeeService;

public interface EmployeeRepository {
	public abstract Employee save(Employee employee);
	public abstract List<Employee> loadAll();
}
