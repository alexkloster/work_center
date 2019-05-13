package by.bsuir.kp.work_center.dao.repository;

import by.bsuir.kp.work_center.dao.entity.Offer;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface OfferRepository extends JpaRepository<Offer, Long> {

    List<Offer> getAllByActive(Boolean active);
}
