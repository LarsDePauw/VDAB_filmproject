package be.vdab.controller;

import be.vdab.domain.Actor;
import be.vdab.domain.Comment;
import be.vdab.domain.Film;
import be.vdab.repository.FilmRepository;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

public class FilmController {
    @Autowired
    private FilmRepository filmRepository;

    public List<Film> getAllFilms() {
        return filmRepository.findAll();
    }

    public String getReviewByFilmId(int id) {
        return filmRepository.findOne(id).getSummary();
    }
    public byte[] getFilmImage(Film film) {
        return film.getImage();
    }
}
