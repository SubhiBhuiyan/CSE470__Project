package Model;

public class User {
    int user_id;
    String name;
    String email;
    String password;
    String user_type;
    public User() {
    }

    public User(int user_id, String name, String email, String password, String user_type) {
        this.user_id = user_id;
        this.name = name;
        this.email = email;
        this.password = password;
        this.user_type = user_type;
    }

    public User(String name, String email, String password, String user_type) {
        this.name = name;
        this.email = email;
        this.password = password;
        this.user_type = user_type;
    }

    public User(String email, String password) {
        this.email = email;
        this.password = password;
    }

    public int getId() {
        return user_id;
    }

    public void setId(int user_id) {
        this.user_id = user_id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public void setUserType(String user_type){
         this.user_type = user_type;
     }
     public String getUser_type(){
        return user_type;
    }
}
    

