package by.bsuir.kp.work_center.sevice;

import by.bsuir.kp.work_center.dao.entity.Offer;

import java.util.List;

public interface OfferService {

    List<Offer> getAllActiveOffers();

    Offer getById(Long id);

}
