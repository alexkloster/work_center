package by.bsuir.kp.work_center.sevice;

import by.bsuir.kp.work_center.dao.entity.Response;
import by.bsuir.kp.work_center.dao.entity.User;

import java.util.List;

public interface ResponseService {

    void response(Long id);

    void unResponse(Long id);

    List<Response> getAllResponsesByUser(User user);

}
