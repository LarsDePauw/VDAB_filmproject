package be.vdab.service;

import be.vdab.domain.Film;
import be.vdab.repository.ActorRepository;
import be.vdab.repository.FilmRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
public class FilmService {
    @Autowired
    FilmRepository filmRepository;

    @Autowired
    ActorRepository actorRepository;

    @RequestMapping("/films")
    public List<Film> findAll() {
        return filmRepository.findAll();
    }

}
