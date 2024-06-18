package model;

public class Produtos {
    private int id_produto;
    private Categoria categoria;
    private String nome_produto;
    private String descricao;
    private float qtd_estoque;
    private float valor_unitario;
    private String unidade;

    public Produtos() {

    }

    public Produtos(int id_produto, Categoria categoria, String nome_produto, String descricao, float qtd_estoque,
            float valor_unitario, String unidade) {
        this.id_produto = id_produto;
        this.categoria = categoria;
        this.nome_produto = nome_produto;
        this.descricao = descricao;
        this.qtd_estoque = qtd_estoque;
        this.valor_unitario = valor_unitario;
        this.unidade = unidade;
    }

    public int getId_produto() {
        return id_produto;
    }

    public void setId_produto(int id_produto) {
        this.id_produto = id_produto;
    }

    public Categoria getCategoria() {
        return categoria;
    }

    public void setCategoria(Categoria categoria) {
        this.categoria = categoria;
    }

    public String getNome_produto() {
        return nome_produto;
    }

    public void setNome_produto(String nome_produto) {
        this.nome_produto = nome_produto;
    }

    public String getDescricao() {
        return descricao;
    }

    public void setDescricao(String descricao) {
        this.descricao = descricao;
    }

    public float getQtd_estoque() {
        return qtd_estoque;
    }

    public void setQtd_estoque(float qtd_estoque) {
        this.qtd_estoque = qtd_estoque;
    }

    public float getValor_unitario() {
        return valor_unitario;
    }

    public void setValor_unitario(float valor_unitario) {
        this.valor_unitario = valor_unitario;
    }

    public String getUnidade() {
        return unidade;
    }

    public void setUnidade(String unidade) {
        this.unidade = unidade;
    }


}