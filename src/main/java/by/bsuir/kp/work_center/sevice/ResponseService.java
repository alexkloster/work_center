package by.bsuir.kp.work_center.sevice;

import by.bsuir.kp.work_center.dao.entity.Response;
import by.bsuir.kp.work_center.dao.entity.User;

import java.util.List;

public interface ResponseService {

    void response(Long id);

    void deleteById(Long id);

    List<Response> getAllResponsesByUser(User user);

    List<Response> getAllResponses();

    Response getById(Long id);

    Response update(Response response);

}
