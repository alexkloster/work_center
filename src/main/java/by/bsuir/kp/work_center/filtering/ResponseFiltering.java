package by.bsuir.kp.work_center.filtering;

public class ResponseFiltering {

    private Long userId;

    private OfferFiltering offerFiltering;

    public ResponseFiltering(Long userId, OfferFiltering offerFiltering) {
        this.userId = userId;
        this.offerFiltering = offerFiltering;
    }

    public ResponseFiltering() {
    }

    public Long getUserId() {
        return userId;
    }

    public void setUserId(Long userId) {
        this.userId = userId;
    }

    public OfferFiltering getOfferFiltering() {
        return offerFiltering;
    }

    public void setOfferFiltering(OfferFiltering offerFiltering) {
        this.offerFiltering = offerFiltering;
    }
}
