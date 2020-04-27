package Entity;
import java.io.Serializable;
public class userinfor implements Serializable {
    private static final long serialVersionUID = 1L;
    private int id;
    private String username;
    private String password;
    private String actor;
    private String email;
    private String name;
    private String telephone;

    public int getId(){
        return id;
    }

    public void setId(int id){
        this.id = id;
    }

    public String getUsername(){
        return username;
    }

    public void setUsername(String username){
        this.username=username;
    }

    public String getPassword(){
        return password;
    }

    public void setPassword(String password){
        this.password=password;
    }

    public String getActor(){
        return actor;
    }

    public void setActor(String actor){
        this.actor=actor;
    }

    public String getEmail(){
        return email;
    }

    public void setEmail(String email){
        this.email=email;
    }

    public String getName(){
        return name;
    }

    public void setName(String name){
        this.name=name;
    }

    public String getTelephone(){
        return telephone;
    }

    public void setTelephone(String telephone){
        this.telephone=telephone;
    }

}
