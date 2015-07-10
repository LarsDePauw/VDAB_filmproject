package be.vdab.service;

import be.vdab.repository.CommentRepository;
import org.springframework.beans.factory.annotation.Autowired;

public class CommentService {
    @Autowired
    private CommentRepository commentRepository;
}
