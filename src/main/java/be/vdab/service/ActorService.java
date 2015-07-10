package be.vdab.service;

import be.vdab.repository.ActorRepository;
import org.springframework.beans.factory.annotation.Autowired;

public class ActorService {
    @Autowired
    private ActorRepository actorRepository;
}
