package by.bsuir.kp.work_center.controller;


import by.bsuir.kp.work_center.dao.entity.User;
import by.bsuir.kp.work_center.enumerated.Role;
import by.bsuir.kp.work_center.sevice.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;


@Controller
public class WebController {

    @Autowired
    private UserService userService;


    @RequestMapping("/welcome")
    public String welcome(HttpServletRequest request) {
        if(userService.getAllUsers().size() == 0) {
            User admin = new User("admin", "admin", "admin", Role.ADMINISTRATOR, true) ;
            userService.registration(admin);
            User user = new User("user", "user", "user", Role.USER, true );
            userService.registration(user);
        }
        checkUser(request);
        request.setAttribute("mode", "MODE_HOME");
        return "welcomepage";
    }

    @RequestMapping("/register")
    public String registration(HttpServletRequest request) {
        request.setAttribute("mode", "MODE_REGISTER");
        return "welcomepage";
    }


    @RequestMapping("/login")
    public String login(HttpServletRequest request) {
        request.setAttribute("mode", "MODE_LOGIN");
        return "welcomepage";
    }

    @RequestMapping("/login-user")
    public String loginUser(@ModelAttribute User user, HttpServletRequest request) {
        User userEntity = userService.authorisation(user.getLogin(), user.getPassword());
        if (userEntity != null && userEntity.getRole() != null) {
            if (userEntity.getRole() == Role.USER) {
                request.setAttribute("mode", "MODE_HOME");
                return "userpage";
            } else {
                request.setAttribute("mode", "MODE_HOME");
                return "adminpage";
            }
        }
        else {
            request.setAttribute("error", "Invalid Username or Password");
            request.setAttribute("mode", "MODE_LOGIN");
            return "welcomepage";

        }
    }

    @RequestMapping("/requisites")
    public String requisites(HttpServletRequest request) {
        checkUser(request);
        return "requisites";
    }

    @RequestMapping("/contacts")
    public String contacts(HttpServletRequest request) {
        checkUser(request);
        return "contacts";
    }

    @RequestMapping("/offices")
    public String offices(HttpServletRequest request) {
        checkUser(request);
        return "offices";
    }

    @RequestMapping("/jobs")
    public String work(HttpServletRequest request) {
        checkUser(request);
        return "work";
    }

    @RequestMapping("/exit")
    public String exit(HttpServletRequest request) {
        userService.setCurrentUser(null);
        return welcome(request);
    }



    private void checkUser(HttpServletRequest request) {
        if (userService.getCurrentUser() == null) {
            request.setAttribute("NAVIGATION_MODE", null);
        } else if (userService.getCurrentUser().getRole() == Role.ADMINISTRATOR) {
            request.setAttribute("NAVIGATION_MODE", "admin");
        } else {
            request.setAttribute("NAVIGATION_MODE", "user");
        }
    }



}