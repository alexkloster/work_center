package by.bsuir.kp.work_center.controller;

import by.bsuir.kp.work_center.dao.entity.User;
import by.bsuir.kp.work_center.enumerated.Role;
import by.bsuir.kp.work_center.sevice.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;

@Controller
public class AdminController {

    @Autowired
    private UserService userService;


    @RequestMapping("/adminPage")
    public String adminPage(HttpServletRequest request) {
        request.setAttribute("mode", "MODE_HOME");
        return "adminpage";
    }


    @RequestMapping("/users")
    public String users(HttpServletRequest request) {
        request.setAttribute("users", userService.getAllUsers());
        request.setAttribute("mode", "MODE_USERS");
        return "adminpage";
    }

    @RequestMapping("/new-user")
    public String newUser(HttpServletRequest request) {
        request.setAttribute("user", new User());
        request.setAttribute("mode", "MODE_UPDATE");
        return "adminpage";
    }

    @RequestMapping("/admin-edit-user")
    public String editUser(@RequestParam long id, HttpServletRequest request) {
        request.setAttribute("user", userService.findById(id));
        request.setAttribute("mode", "MODE_UPDATE");
        return "adminpage";
    }

    @RequestMapping("/admin-delete-user")
    public String deleteUser(@RequestParam int id, HttpServletRequest request) {
        userService.deleteUser((long) id);
        request.setAttribute("users", userService.getAllUsers());
        request.setAttribute("mode", "MODE_USERS");
        return "adminpage";
    }

    @RequestMapping("/admin-save-user")
    public String registration(@ModelAttribute User user, HttpServletRequest request) {
        user.setRole(Role.USER);
        user.setSubmitted(true);
        userService.registration(user);
        request.setAttribute("mode", "MODE_USERS");
        return "adminpage";
    }
}