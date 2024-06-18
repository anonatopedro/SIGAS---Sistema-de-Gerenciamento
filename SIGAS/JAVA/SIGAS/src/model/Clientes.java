package model;

public class Clientes extends Pessoas {
    private String cpf_cnpj;

    public Clientes(){}

    public Clientes(int id_pessoa, String nome_pessoa, String endereco_pessoa, String email_pessoa, String tel1_pessoa, String tel2_pessoa, String cpf_cnpj)
    {
        super(id_pessoa, nome_pessoa, endereco_pessoa, email_pessoa, tel1_pessoa, tel2_pessoa);
        this.cpf_cnpj = cpf_cnpj;
    }

    public String getCpf_cnpj() {
        return cpf_cnpj;
    }

    public void setCpf_cnpj(String cpf_cnpj) {
        this.cpf_cnpj = cpf_cnpj;
    }

    
}
