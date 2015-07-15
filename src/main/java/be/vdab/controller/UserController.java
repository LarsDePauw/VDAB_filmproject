//package be.vdab.controller;
//
//import be.vdab.domain.User;
//import be.vdab.repository.UserRepository;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.stereotype.Controller;
//import org.springframework.web.bind.annotation.RequestMapping;
//import org.springframework.web.bind.annotation.RequestMethod;
//
//import java.util.List;
//
//@Controller
//public class UserController {
//
//    @Autowired
//    private UserRepository userRepository;
//
//    public List<User> users () {
//        return userRepository.findAll();
//    }
//
//    @RequestMapping(value = "/login", method = RequestMethod.GET)
//
//}
