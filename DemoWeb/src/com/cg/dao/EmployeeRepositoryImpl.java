package com.cg.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.TypedQuery;

import org.springframework.stereotype.Repository;

import com.cg.entities.Employee;
@Repository
public class EmployeeRepositoryImpl implements EmployeeRepository {
	
	@PersistenceContext
	EntityManager em;
	
	@Override
	public Employee save(Employee employee) {
		em.persist(employee);
		em.flush();
		return employee;
	}

	@Override
	public List<Employee> loadAll() {
		TypedQuery<Employee> query=em.createQuery("SELECT e FROM Employee e", Employee.class);
		return query.getResultList();
	}

}
