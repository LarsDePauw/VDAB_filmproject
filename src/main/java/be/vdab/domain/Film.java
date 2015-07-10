package be.vdab.domain;

import org.springframework.data.annotation.Id;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import java.lang.*;
import java.util.List;

@Entity
public class Film {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private String title;
    private List<Character> cast;
    private int length;
    private String director;
    private String summary;
    private Genre genre;
    private double rating;
    private byte[] image;
    private String trailerUrl;

}
