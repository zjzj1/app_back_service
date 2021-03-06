package com.xiao.appserv.controller;
import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.xiao.appserv.entity.User;
import com.xiao.appserv.service.IUserService;

@Controller
@RequestMapping("/user")
public class UserController {
	@Resource  
    private IUserService userService;  
    @RequestMapping("/showUser")  
    public String toIndex(HttpServletRequest request,Model model){  
        int userId = Integer.parseInt(request.getParameter("id"));  
        User user = (User) this.userService.getUserById(userId);  
        model.addAttribute("user", user);  
        return "showUser";  
    }
}
