package be.vdab.controller;

import be.vdab.domain.Actor;
import be.vdab.domain.Comment;
import be.vdab.domain.Film;
import be.vdab.repository.FilmRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;
import java.util.Map;

@Controller
public class FilmController {
    @Autowired
    private FilmRepository filmRepository;

    @RequestMapping(value = "/films", method = RequestMethod.GET)
    public String home(Map<String, Object> model) {
        List<Film> films = filmRepository.findAll();
        model.put("filmList", films);
        return "films";
    }

    @RequestMapping(value = "films/details", method = RequestMethod.GET)
    public String details(@RequestParam ("id") int id, Map<String, Object> model) {
        Film film = filmRepository.findOne(id);
        model.put("film", film);
        return "details";
    }


    public List<Film> getAllFilms() {
        return filmRepository.findAll();
    }

    public String getReviewByFilmId(int id) {
        return filmRepository.findOne(id).getSummary();
    }

    public Film getFilmById(int id) {
        return filmRepository.findOne(id);
    }
}
