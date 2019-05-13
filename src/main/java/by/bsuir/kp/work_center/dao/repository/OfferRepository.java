package by.bsuir.kp.work_center.dao.repository;

import by.bsuir.kp.work_center.dao.entity.Offer;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface OfferRepository extends JpaRepository<Offer, Long> {
}
