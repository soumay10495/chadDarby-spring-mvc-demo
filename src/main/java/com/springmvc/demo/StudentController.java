package com.springmvc.demo;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.Map;

@Controller
@RequestMapping("/student")
public class StudentController {
    @Value("#{countriesOptions}")
    private Map<String, String> countries;

    @RequestMapping("/showForm")
    public String displayForm(Model model) {
        Student student = new Student();
        model.addAttribute("student", student);
        model.addAttribute("countries", countries);
        return "student-form";
    }

    @RequestMapping("/processForm")
    public String processForm(@ModelAttribute Student student) {
        //System.out.print(student.getFirstName() + " " + student.getLastName());
        return "student-confirmation";
    }
}
