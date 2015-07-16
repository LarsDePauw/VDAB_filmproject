package be.vdab.domain;

import javax.persistence.*;

@Entity
@Table(name = "film_character")
public class Character {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    private String characterName;

    @ManyToOne
    private Actor actor;


    public Character(String characterName) {
        this.characterName = characterName;
    }

    public Character() {
    }

    public String getCharacterName() {
        return characterName;
    }

    public void setCharacterName(String characterName) {
        this.characterName = characterName;
    }

    public Actor getActor() {
        return actor;
    }

    public void setActor(Actor actor) {
        this.actor = actor;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }
}
