package model;

public class Usuario {
    private int id_user;
    private String email_user;
    private String senha;


    public Usuario(){

    }

    public Usuario(int id_user, String email_user, String senha) {
        this.id_user = id_user;
        this.email_user = email_user;
        this.senha = senha;
    }

    public int getId_user() {
        return id_user;
    }
    public void setId_user(int id_user) {
        this.id_user = id_user;
    }
    public String getEmail_user() {
        return email_user;
    }
    public void setEmail_user(String email_user) {
        this.email_user = email_user;
    }
    public String getSenha() {
        return senha;
    }
    public void setSenha(String senha) {
        this.senha = senha;
    }
    
}
