package com.example.employeemanager.service.impl;

import com.example.employeemanager.dto.EmployeeDTO;
import com.example.employeemanager.entity.EmployeeEntity;
import com.example.employeemanager.repository.EmployeeRepository;
import com.example.employeemanager.service.IEmployeeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
@Service
public class EmployeeService implements IEmployeeService {
    @Autowired
    EmployeeRepository employeeRepository;
    @Override
    public List<EmployeeDTO> getAll() {
        List<EmployeeDTO> result = new ArrayList<>();
        for (EmployeeEntity entity : employeeRepository.findAll()) {
            EmployeeDTO dto = new EmployeeDTO();
            dto.setId(entity.getEmp_id());
            dto.setName(entity.getName());
            dto.setMale(entity.isMale());
            dto.setBirthday(entity.getBirthday());
            dto.setAddress(entity.getAddress());
            dto.setPhone(entity.getPhone());
            dto.setDepartment(entity.getDepartment());
            dto.setTitle(entity.getTitle());
            dto.setWageRale(entity.getWageRale());
            result.add(dto);
        }
        return result;
    }

    @Override
    public EmployeeDTO findById(String id) {
        EmployeeEntity entity = employeeRepository.findOneByEmpId(id);
        EmployeeDTO dto = new EmployeeDTO();
        dto.setId(entity.getEmp_id());
        dto.setName(entity.getName());
        dto.setMale(entity.isMale());
        dto.setBirthday(entity.getBirthday());
        dto.setAddress(entity.getAddress());
        dto.setPhone(entity.getPhone());
        dto.setDepartment(entity.getDepartment());
        dto.setTitle(entity.getTitle());
        dto.setWageRale(entity.getWageRale());
        return dto;
    }
}
