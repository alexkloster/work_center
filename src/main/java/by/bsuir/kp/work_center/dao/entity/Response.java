package by.bsuir.kp.work_center.dao.entity;//package by.bsuir.kp.work_center.dao.entity;
//
//
//import javax.persistence.*;
//
//@Entity
//@Table(name = "response")
//public class Response {
//
//    @Id
//    @GeneratedValue(strategy = GenerationType.IDENTITY)
//    private Long id;
//
//
//    @ManyToOne
//    @JoinColumn(name = "user_id")
//    private User user;
//
//    @ManyToOne
//    @JoinColumn(name = "offer_id")
//    private Offer offer;
//
//    private Boolean approved;
//
//    public Response(User user, Offer offer, Boolean approved) {
//        this.user = user;
//        this.offer = offer;
//        this.approved = approved;
//    }
//
//    public Response() {
//    }
//
//    public Long getId() {
//        return id;
//    }
//
//    public void setId(Long id) {
//        this.id = id;
//    }
//
//    public User getUser() {
//        return user;
//    }
//
//    public void setUser(User user) {
//        this.user = user;
//    }
//
//    public Offer getOffer() {
//        return offer;
//    }
//
//    public void setOffer(Offer offer) {
//        this.offer = offer;
//    }
//
//    public Boolean getApproved() {
//        return approved;
//    }
//
//    public void setApproved(Boolean approved) {
//        this.approved = approved;
//    }
//}
