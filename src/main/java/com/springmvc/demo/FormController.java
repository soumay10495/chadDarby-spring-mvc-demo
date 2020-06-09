package com.springmvc.demo;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;

@Controller
@RequestMapping("/mainForm")        //Parent Mapping (Optional)
public class FormController {
    @RequestMapping("/showForm")    //Sub Mapping (Relative)
    public String routeForm() {
        return "form";
    }

    @RequestMapping("/processForm")
    public String processForm() {
        return "welcome";
    }

    @RequestMapping("/processFormUppercase")
    public String displayUppercase(HttpServletRequest httpServletRequest, Model model) {
        String name = httpServletRequest.getParameter("studentName");
        model.addAttribute("uppercaseName", "Yo " + name.toUpperCase());
        return "welcome";
    }

    @RequestMapping("/processFormUppercase2")
    public String displayUppercase2(@RequestParam("studentName") String name, Model model) {
        model.addAttribute("uppercaseName", "Hey 2 " + name.toUpperCase());
        return "welcome";
    }

    @RequestMapping("/processFormUppercase3")
    public String displayUppercase3(@RequestParam String studentName, Model model) {
        model.addAttribute("uppercaseName", "Hey 3 " + studentName.toUpperCase());
        return "welcome";
    }
}
