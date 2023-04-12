package com.example.employeemanager.controller;

import com.example.employeemanager.dto.EmployeeDTO;
import com.example.employeemanager.service.IEmployeeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
public class EmployeeController {
    @Autowired
    IEmployeeService iEmployeeService;
    @RequestMapping(value = "/nhan-vien/danh-sach-nhan-vien", method = RequestMethod.GET)
    public ModelAndView homePage() {
        ModelAndView mav = new ModelAndView("dsnhanvien");
        List<EmployeeDTO> employees = iEmployeeService.getAll();
        mav.addObject("employeeList",employees);
        mav.addObject("totalEmployee",employees.size());
        return mav;
    }
    @RequestMapping(value = "/nhan-vien/{id}", method = RequestMethod.GET)
    public ModelAndView employee(@PathVariable("id") String id) {
        ModelAndView mav = new ModelAndView("chitietnhanvien");
        mav.addObject("employee",iEmployeeService.findById(id));
        return mav;
    }
    @RequestMapping(value = "/employee",method = RequestMethod.POST)
    public ModelAndView addEmployee(){
        ModelAndView mav = new ModelAndView("themnhanvien");
        return mav;
    }
}
