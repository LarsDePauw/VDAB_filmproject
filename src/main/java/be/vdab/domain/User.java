package be.vdab.domain;

import java.util.List;

public class User {
    private List<Comment> comments;
    private String userName;

    public User(List<Comment> comments, String userName) {
        this.comments = comments;
        this.userName = userName;
    }

    public User() {
    }

    public List<Comment> getComments() {
        return comments;
    }

    public void setComments(List<Comment> comments) {
        this.comments = comments;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }
}
