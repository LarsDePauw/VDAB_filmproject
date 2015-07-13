package be.vdab.controller;

import be.vdab.domain.Actor;
import be.vdab.domain.Comment;
import be.vdab.domain.Film;
import be.vdab.repository.FilmRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;
import java.util.Map;

@Controller
public class FilmController {
    @Autowired
    private FilmRepository filmRepository;

    @RequestMapping("/films")
    public String home(Map<String, Object> model) {
        List<Film> films = filmRepository.findAll();
        model.put("filmList", films);
        return "films";
    }

    public List<Film> getAllFilms() {
        return filmRepository.findAll();
    }

    public String getReviewByFilmId(int id) {
        return filmRepository.findOne(id).getSummary();
    }
}
