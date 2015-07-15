package be.vdab.controller;

import be.vdab.domain.Actor;
import be.vdab.domain.Comment;
import be.vdab.domain.Film;
import be.vdab.repository.FilmRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import javax.validation.Valid;
import java.util.List;
import java.util.Map;

@Controller
public class FilmController {
    @Autowired
    private FilmRepository filmRepository;

    public List<Film> getAllFilms() {
        return filmRepository.findAll();
    }

    public String getReviewByFilmId(int id) {
        return filmRepository.findOne(id).getSummary();
    }

    public Film getFilmById(int id) {
        return filmRepository.findOne(id);
    }

    @RequestMapping(value = "/home", method = RequestMethod.GET)
    public String home() {
        return "home";
    }

    @RequestMapping(value = "/films", method = RequestMethod.GET)
    public String home(Map<String, Object> model) {
        List<Film> films = filmRepository.findAll();
        model.put("filmList", films);
        return "films";
    }

    @RequestMapping(value = "films/details", method = RequestMethod.GET)
    public String details(@RequestParam("id") int id, Map<String, Object> model) {
        Film film = filmRepository.findOne(id);
        model.put("film", film);
        return "filmDetails";
    }

    @RequestMapping(value = "films/delete/{filmId}", method = RequestMethod.GET)
    public String delete(@PathVariable("filmId") int id) {
        filmRepository.delete(id);
        return "redirect:/films";
    }

    @RequestMapping("films/form")
    public String form(Map<String, Object> model, @RequestParam(value = "id", required = false) Integer id) {
        if (id == null) {
            model.put("film", new Film());
        } else {
            model.put("film", filmRepository.findOne(id));
        }
        return "filmForm";
    }

    @RequestMapping(value = "/create", method = RequestMethod.POST)
    public String create(@Valid Film film) {
        filmRepository.save(film);
        return "redirect:/films";
    }


}


