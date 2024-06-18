package model;

public class Pessoas {

    private int id_pessoa;
    private String nome_pessoa;
    private String endereco_pessoa;
    private String email_pessoa;
    private String tel1_pessoa;
    private String tel2_pessoa;

    public Pessoas(int id_pessoa, String nome_pessoa, String endereco_pessoa, String email_pessoa, String tel1_pessoa, String tel2_pessoa){
        this.id_pessoa = id_pessoa;
        this.nome_pessoa = nome_pessoa;
        this.endereco_pessoa = endereco_pessoa;
        this.email_pessoa = email_pessoa;
        this.tel1_pessoa = tel1_pessoa;
        this.tel2_pessoa = tel2_pessoa;
    }

    public Pessoas(){}

    public int getId_pessoa() {
        return id_pessoa;
    }

    public void setId_pessoa(int id_pessoa) {
        this.id_pessoa = id_pessoa;
    }

    public String getNome_pessoa() {
        return nome_pessoa;
    }

    public void setNome_pessoa(String nome_pessoa) {
        this.nome_pessoa = nome_pessoa;
    }

    public String getEndereco_pessoa() {
        return endereco_pessoa;
    }

    public void setEndereco_pessoa(String endereco_pessoa) {
        this.endereco_pessoa = endereco_pessoa;
    }

    public String getEmail_pessoa() {
        return email_pessoa;
    }

    public void setEmail_pessoa(String email_pessoa) {
        this.email_pessoa = email_pessoa;
    }

    public String getTel1_pessoa() {
        return tel1_pessoa;
    }

    public void setTel1_pessoa(String tel1_pessoa) {
        this.tel1_pessoa = tel1_pessoa;
    }

    public String getTel2_pessoa() {
        return tel2_pessoa;
    }

    public void setTel2_pessoa(String tel2_pessoa) {
        this.tel2_pessoa = tel2_pessoa;
    }
    
    
}
