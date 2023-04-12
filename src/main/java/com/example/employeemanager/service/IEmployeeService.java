package com.example.employeemanager.service;

import com.example.employeemanager.dto.EmployeeDTO;

import java.util.List;

public interface IEmployeeService {
    List<EmployeeDTO> getAll();
    EmployeeDTO findById(String id);
}
