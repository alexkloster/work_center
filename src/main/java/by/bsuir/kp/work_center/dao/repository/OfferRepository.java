package by.bsuir.kp.work_center.dao.repository;

import by.bsuir.kp.work_center.dao.entity.Offer;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Set;

@Repository
public interface OfferRepository extends JpaRepository<Offer, Long> {

    List<Offer> getAllByActiveAndIdNotIn(Boolean active, Set<Long> ids);

    List<Offer> getAllByActive(Boolean active);
}
