package be.vdab.domain;

import javax.persistence.*;

@Entity
@Table(name = "film_character") // Character is a reserved keyword for mysql
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
}
