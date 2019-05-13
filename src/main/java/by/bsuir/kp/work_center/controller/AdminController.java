package by.bsuir.kp.work_center.controller;

import by.bsuir.kp.work_center.dao.entity.Company;
import by.bsuir.kp.work_center.dao.entity.Offer;
import by.bsuir.kp.work_center.dao.entity.Response;
import by.bsuir.kp.work_center.dao.entity.User;
import by.bsuir.kp.work_center.enumerated.Role;
import by.bsuir.kp.work_center.filtering.CompanyFiltering;
import by.bsuir.kp.work_center.filtering.OfferFiltering;
import by.bsuir.kp.work_center.filtering.ResponseFiltering;
import by.bsuir.kp.work_center.sevice.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
public class AdminController {

    @Autowired
    private UserService userService;

    @Autowired
    private OfferService offerService;

    @Autowired
    private CompanyService companyService;

    @Autowired
    private CityService cityService;

    @Autowired
    private ResponseService responseService;


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


    @RequestMapping("/offer-management")
    public String offerManagement(HttpServletRequest request, Model model) {
        request.setAttribute("mode", "MODE_WORK_LIST");
        request.setAttribute("offers", offerService.getAllOffers());
        model.addAttribute("offerFiltering", new OfferFiltering());
        return "adminpage";
    }

    @RequestMapping("/offer-activate")
    public String activateOffer(@RequestParam long id, HttpServletRequest request, Model model) {
        offerService.activateOffer(id, true);
        return offerManagement(request, model);
    }

    @RequestMapping("/offer-deactivate")
    public String deactivateOffer(@RequestParam long id, HttpServletRequest request, Model model) {
        offerService.activateOffer(id, false);
        return offerManagement(request, model);
    }


    @RequestMapping("/admin-edit-offer")
    public String editOffer(@RequestParam long id, HttpServletRequest request) {
        request.setAttribute("offer", offerService.getById(id));
        request.setAttribute("companies", companyService.getAllCompanies());
        request.setAttribute("mode", "MODE_UPDATE_WORK");
        return "adminpage";
    }

    @RequestMapping("/admin-delete-offer")
    public String deleteOffer(@RequestParam long id, HttpServletRequest request, Model model) {
        offerService.deleteOffer(id);
        return offerManagement(request, model);
    }

    @RequestMapping("/admin-new-offer")
    public String newOffer(HttpServletRequest request) {
        request.setAttribute("offer", new Offer());
        request.setAttribute("companies", companyService.getAllCompanies());
        request.setAttribute("mode", "MODE_UPDATE_WORK");
        return "adminpage";
    }

    @RequestMapping("/admin-save-offer")
    public String saveOffer(@ModelAttribute Offer offer, HttpServletRequest request) {

        offerService.save(offer);
        return "adminPage";
    }

    @RequestMapping("/company-management")
    public String companyManagement(HttpServletRequest request, Model model) {
        request.setAttribute("mode", "MODE_COMPANIES");
        request.setAttribute("companies", companyService.getAllCompanies());
        request.setAttribute("cities", cityService.getAllCities());
        model.addAttribute("companyFiltering", new CompanyFiltering());
        return "adminpage";
    }


    @RequestMapping("/admin-edit-company")
    public String editCompany(@RequestParam long id, HttpServletRequest request, Model model) {
        request.setAttribute("company", companyService.getById(id));
        request.setAttribute("city", cityService.getAllCities());
        request.setAttribute("mode", "MODE_UPDATE_COMPANY");
        return "adminpage";
    }

    @RequestMapping("/admin-delete-company")
    public String deleteCompany(@RequestParam long id, HttpServletRequest request, Model model) {
        companyService.delete(id);
        return companyManagement(request, model);
    }

    @RequestMapping("/admin-new-company")
    public String newCompany(HttpServletRequest request) {
        request.setAttribute("company", new Company());
        request.setAttribute("cities", cityService.getAllCities());
        request.setAttribute("mode", "MODE_UPDATE_COMPANY");
        return "adminpage";
    }

    @RequestMapping("/admin-save-company")
    public String saveOffer(@ModelAttribute Company company, HttpServletRequest request, Model model) {

        companyService.save(company);
        return companyManagement(request, model);
    }


    @RequestMapping("/response-management")
    public String responseManagement(HttpServletRequest request, Model model) {
        request.setAttribute("mode", "MODE_RESPONSES");
        List<Response> responseList = responseService.getAllResponses();
        request.setAttribute("responses", responseList);
        request.setAttribute("companies", companyService.getAllCompanies());
        request.setAttribute("cities", cityService.getAllCities());
        model.addAttribute("responsesFiltering", new ResponseFiltering());
        return "adminpage";
    }


    @RequestMapping("/admin-delete-response")
    public String deleteResponse(@RequestParam long id, HttpServletRequest request, Model model) {
        responseService.deleteById(id);
        return responseManagement(request, model);
    }

    @RequestMapping("/admin-approve-response")
    public String approveResponse(@RequestParam long id, HttpServletRequest request, Model model) {
        Response response = responseService.getById(id);
        response.setApproved(true);
        responseService.update(response);
        return responseManagement(request, model);
    }

    @RequestMapping("/admin-disapprove-response")
    public String disapproveResponse(@RequestParam long id, HttpServletRequest request, Model model) {
        Response response = responseService.getById(id);
        response.setApproved(false);
        responseService.update(response);
        return responseManagement(request, model);
    }


}
