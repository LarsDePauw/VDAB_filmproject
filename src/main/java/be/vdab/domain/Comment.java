package be.vdab.domain;

        import org.springframework.data.annotation.Id;

        import javax.persistence.Entity;
        import javax.persistence.GeneratedValue;
        import javax.persistence.GenerationType;

@Entity
public class Comment {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private User user;
    private int rating;
    private String commentDescription;
    private Film film;
}
