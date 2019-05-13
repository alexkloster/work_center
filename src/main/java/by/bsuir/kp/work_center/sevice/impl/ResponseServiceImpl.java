package by.bsuir.kp.work_center.sevice.impl;

import by.bsuir.kp.work_center.dao.entity.Offer;
import by.bsuir.kp.work_center.dao.entity.Response;
import by.bsuir.kp.work_center.dao.entity.User;
import by.bsuir.kp.work_center.dao.repository.ResponseRepository;
import by.bsuir.kp.work_center.sevice.OfferService;
import by.bsuir.kp.work_center.sevice.ResponseService;
import by.bsuir.kp.work_center.sevice.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ResponseServiceImpl implements ResponseService {

    @Autowired
    private ResponseRepository responseRepository;

    @Autowired
    private UserService userService;

    @Autowired
    private OfferService offerService;

    @Override
    public void response(Long id) {
        User user = userService.getCurrentUser();
        Offer offer = offerService.getById(id);
        Response response = new Response(user, offer, false);
        responseRepository.save(response);

    }

    @Override
    public void deleteById(Long id) {
        responseRepository.deleteById(id);
    }

    @Override
    public List<Response> getAllResponsesByUser(User user) {
        return responseRepository.findAllByUser(user);
    }

    @Override
    public List<Response> getAllResponses() {
        return responseRepository.findAll();
    }

    @Override
    public Response getById(Long id) {
        return responseRepository.findById(id).orElse(null);
    }

    @Override
    public Response update(Response response) {
        return responseRepository.save(response);
    }
}
