package by.bsuir.kp.work_center.controller;

import by.bsuir.kp.work_center.dao.entity.User;
import by.bsuir.kp.work_center.enumerated.Role;
import by.bsuir.kp.work_center.filtering.OfferFiltering;
import by.bsuir.kp.work_center.sevice.OfferService;
import by.bsuir.kp.work_center.sevice.ResponseService;
import by.bsuir.kp.work_center.sevice.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;

@Controller
public class UserController {

    @Autowired
    private OfferService offerService;

    @Autowired
    private UserService userService;

    @Autowired
    private ResponseService responseService;

    @RequestMapping("/workList")
    public String workList(HttpServletRequest request, Model model) {
        request.setAttribute("mode", "MODE_WORK_LIST");
        request.setAttribute("offers", offerService.getAllActiveOffers());
        model.addAttribute("filtering", new OfferFiltering());
        return "userpage";
    }

    @RequestMapping("/responses")
    public String responses(HttpServletRequest request, Model model) {
        request.setAttribute("mode", "MODE_RESPONSES");
        request.setAttribute("responses", responseService.getAllResponsesByUser(userService.getCurrentUser()));
        return "userpage";
    }

    @RequestMapping("/response")
    public String response(@RequestParam Long id, HttpServletRequest request, Model model) {
        responseService.response(id);
        return responses(request, model);
    }

    @RequestMapping("/unResponse")
    public String unResponse(@RequestParam Long id, HttpServletRequest request, Model model) {
        responseService.deleteById(id);
        return workList(request, model);
    }


    @RequestMapping("/profile")
    public String profile(HttpServletRequest request) {
        request.setAttribute("mode", "MODE_PROFILE");
        request.setAttribute("user", userService.findById(userService.getCurrentUser().getId()));
        return "userpage";
    }

    @PostMapping("/edit-user")
    public String registration(@ModelAttribute User user, HttpServletRequest request) {
        System.out.println(user.getLogin() + user.getPassword());
        user.setSubmitted(true);
        user.setRole(Role.USER);
        userService.update(user);
        return profile(request);
    }
}
