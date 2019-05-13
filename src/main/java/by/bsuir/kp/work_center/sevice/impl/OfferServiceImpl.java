package by.bsuir.kp.work_center.sevice.impl;

import by.bsuir.kp.work_center.dao.entity.Offer;
import by.bsuir.kp.work_center.dao.entity.User;
import by.bsuir.kp.work_center.dao.repository.OfferRepository;
import by.bsuir.kp.work_center.sevice.OfferService;
import by.bsuir.kp.work_center.sevice.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Set;
import java.util.stream.Collectors;

@Service
public class OfferServiceImpl implements OfferService {

    @Autowired
    private OfferRepository offerRepository;

    @Autowired
    private UserService userService;


    @Override
    public List<Offer> getAllActiveOffers() {
        Long userId = userService.getCurrentUser().getId();
        User user = userService.findById(userId);
        Set<Long> ids = user.getResponses().stream().map(response -> response.getOffer().getId()).collect(Collectors.toSet());
        if (ids.size() == 0) {
            return offerRepository.getAllByActive(true);
        }
        return offerRepository.getAllByActiveAndIdNotIn(true, ids);
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

    @Override
    public void deleteOffer(Long id) {
        offerRepository.deleteById(id);
    }
}
