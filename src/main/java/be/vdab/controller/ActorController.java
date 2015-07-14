package be.vdab.controller;

import be.vdab.domain.Actor;
import be.vdab.domain.Film;
import be.vdab.repository.ActorRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;
import java.util.Map;

@Controller
public class ActorController {
    @Autowired
    private ActorRepository actorRepository;

    public List<Actor> getAllActors() {
        return actorRepository.findAll();
    }

    @RequestMapping(value = "/actors", method = RequestMethod.GET)
    public String home(Map<String, Object> model) {
        List<Actor> actors = actorRepository.findAll();
        model.put("actorList", actors);
        return "actors";
    }

    public Actor getActorById(int id) {
        return actorRepository.findOne(id);
    }

    @RequestMapping(value = "actors/details", method = RequestMethod.GET)
    public String details(@RequestParam("id") int id, Map<String, Object> model) {
        Actor actor = actorRepository.findOne(id);
        model.put("actor", actor);
        return "actorDetails";
    }

}
