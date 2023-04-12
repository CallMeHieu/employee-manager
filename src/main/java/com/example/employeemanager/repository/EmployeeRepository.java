package com.example.employeemanager.repository;

import com.example.employeemanager.entity.EmployeeEntity;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface EmployeeRepository extends JpaRepository<EmployeeEntity,Long> {
    EmployeeEntity findOneByEmpId(String id);
}
