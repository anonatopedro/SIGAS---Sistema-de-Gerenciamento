package model;

public class Fornecedores extends Pessoas {
    private String cnpj;

    public Fornecedores(int id_pessoa, String nome_pessoa, String endereco_pessoa, String email_pessoa, String tel1_pessoa, String tel2_pessoa, String cnpj) {
        super(id_pessoa, nome_pessoa, endereco_pessoa, email_pessoa, tel1_pessoa, tel2_pessoa);
        this.cnpj = cnpj;
    }

    public Fornecedores(){}

    public String getCnpj() {
        return cnpj;
    }

    public void setCnpj(String cnpj) {
        this.cnpj = cnpj;
    }

    
    
}
