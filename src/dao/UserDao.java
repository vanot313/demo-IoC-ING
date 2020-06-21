package dao;

import java.util.HashMap;

public class UserDao {
    /**
     * 用户的id
     */
    private String id;
    private String email;
    private HashMap<String,String> card;

    public void setCard(HashMap<String, String> card) {
        this.card = card;
    }

    public HashMap<String, String> getCard() {
        return card;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }
}
