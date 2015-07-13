package be.vdab.domain;


import javax.persistence.*;
import java.util.ArrayList;
import java.util.List;

@Entity
public class Film {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    private String title;

    @OneToMany
    private List<Character> cast = new ArrayList<>();

    @OneToMany
    private List<Comment> comments = new ArrayList<>();

    private int duration;
    private String director;
    private String summary;
   // private Genre genre;
   // private double rating;
  //  private byte[] image;
  //  private String trailerUrl;

//    public Film(List<Character> cast, int length, String director, String summary,
//                Genre genre, double rating, byte[] image, String trailerUrl) {
//        this.cast = cast;
//        this.length = length;
//        this.director = director;
//        this.summary = summary;
//        this.genre = genre;
//        this.rating = rating;
//        this.image = image;
//        this.trailerUrl = trailerUrl;
//    }

    public Film() {
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

//    public List<Character> getCast() {
//        return cast;
//    }
//
//    public void setCast(List<Character> cast) {
//        this.cast = cast;
//    }


    public int getDuration() {
        return duration;
    }

    public void setDuration(int duration) {
        this.duration = duration;
    }

    public String getDirector() {
        return director;
    }

    public void setDirector(String director) {
        this.director = director;
    }

    public String getSummary() {
        return summary;
    }

    public void setSummary(String summary) {
        this.summary = summary;
    }
//
//    public Genre getGenre() {
//        return genre;
//    }
//
//    public void setGenre(Genre genre) {
//        this.genre = genre;
//    }
//
//    public double getRating() {
//        return rating;
//    }
//
//    public void setRating(double rating) {
//        this.rating = rating;
//    }
//
//    public byte[] getImage() {
//        return image;
//    }
//
//    public void setImage(byte[] image) {
//        this.image = image;
//    }
//
//    public String getTrailerUrl() {
//        return trailerUrl;
//    }
//
//    public void setTrailerUrl(String trailerUrl) {
//        this.trailerUrl = trailerUrl;
//    }
}
