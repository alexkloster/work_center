package by.bsuir.kp.work_center.sevice.impl;

import by.bsuir.kp.work_center.dao.entity.Offer;
import by.bsuir.kp.work_center.dao.repository.OfferRepository;
import by.bsuir.kp.work_center.sevice.OfferService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class OfferServiceImpl implements OfferService {

    @Autowired
    private OfferRepository offerRepository;


    @Override
    public List<Offer> getAllActiveOffers() {
        return offerRepository.getAllByActive(true);
    }

    @Override
    public List<Offer> getAllOffers() {
        return offerRepository.findAll();
    }

    @Override
    public Offer getById(Long id) {
        return offerRepository.findById(id).orElse(null);
    }

    @Override
    public Offer save(Offer offer) {
        return offerRepository.save(offer);
    }

    @Override
    public void activateOffer(Long id, Boolean active) {
        Offer offer = offerRepository.findById(id).orElse(null);
        if (offer != null) {
            offer.setActive(active);
            save(offer);
        }
    }
}
