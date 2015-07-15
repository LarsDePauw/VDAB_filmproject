package be.vdab.controller;

import be.vdab.domain.Actor;
import be.vdab.domain.Gender;
import be.vdab.repository.ActorRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;
import java.util.ArrayList;
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

    @RequestMapping(value = "/createActor", method = RequestMethod.POST)
    public String create(@Valid Actor actor, BindingResult bindingResult) {
        if(bindingResult.hasErrors()) {
            return "actorForm";
        } else {
            actorRepository.save(actor);
            return "redirect:/actors";
        }
    }

    @RequestMapping(value = "actor/delete/{actorId}", method = RequestMethod.GET)
    public String delete(@PathVariable("actorId") int id) {
        actorRepository.delete(id);
        return "redirect:/actors";
    }

    @RequestMapping("actors/form")
    public String form(Map<String, Object> model, @RequestParam(value = "id", required = false) Integer id) {
        if (id == null) {
            model.put("actor", new Actor());
        } else {
            model.put("actor", actorRepository.findOne(id));
        }
        return "actorForm";
    }
    @ModelAttribute(value = "genders")
    public List<Gender> genders() {
        List<Gender> genres = new ArrayList<>();
        for (Gender gender : Gender.values()) {
            genres.add(gender);
        }
        return genres;
    }
}











