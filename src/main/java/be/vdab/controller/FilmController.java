package be.vdab.controller;

import be.vdab.repository.FilmRepository;
import org.springframework.beans.factory.annotation.Autowired;

public class FilmController {
    @Autowired
    private FilmRepository filmRepository;
}
