package be.vdab.domain;


import javax.persistence.*;
import java.util.Date;


@Entity
public class Actor {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;
    private String name;

    private String bio;

    @Temporal(TemporalType.DATE)
    private Date birthDay;

    @Enumerated(EnumType.ORDINAL)
    private Gender gender;

    @Lob
    private byte[] profileImage;

    public Actor(String name, Date birthDay, Gender gender, byte[] profileImage) {
        this.name = name;
        this.birthDay = birthDay;
        this.gender = gender;
        this.profileImage = profileImage;
    }

    public Actor() {
    }

    public String getName() {
        return name;
    }

    public Integer getId() {
        return id;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getBio() {
        return bio;
    }

    public void setBio(String bio) {
        this.bio = bio;
    }

    public Date getBirthDay() {
        return birthDay;
    }

    public void setBirthDay(Date birthDay) {
        this.birthDay = birthDay;
    }

    public Gender getGender() {
        return gender;
    }

    public void setGender(Gender gender) {
        this.gender = gender;
    }

    public byte[] getProfileImage() {
        return profileImage;
    }

    public void setProfileImage(byte[] profileImage) {
        this.profileImage = profileImage;
    }
}
