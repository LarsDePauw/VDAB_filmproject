package be.vdab.controller;

import be.vdab.domain.Actor;
import be.vdab.repository.ActorRepository;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

public class ActorController {
    @Autowired
    private ActorRepository actorRepository;

    public List<Actor> getAllActors() {
        return actorRepository.findAll();
    }
}
