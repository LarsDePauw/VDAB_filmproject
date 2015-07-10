package be.vdab.domain;

import javax.persistence.OneToOne;

public class Character {
    private String characterName;
    @OneToOne
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
