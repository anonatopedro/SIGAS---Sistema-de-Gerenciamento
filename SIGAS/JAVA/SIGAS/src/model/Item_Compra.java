package model;

public class Item_Compra {
    private Produtos produto;
    private double qtd_item_compra;
    private double preco_item_compra;

    public Item_Compra(){}

    public Item_Compra(Produtos produto, double qtd_item_compra, double preco_item_compra){
        this.produto = produto;
        this.qtd_item_compra = qtd_item_compra;
        this.preco_item_compra = preco_item_compra;
    }

    public Produtos getProduto() {
        return produto;
    }

    public void setProduto(Produtos produto) {
        this.produto = produto;
    }

    public double getQtd_item_compra() {
        return qtd_item_compra;
    }

    public void setQtd_item_compra(double qtd_item_compra) {
        this.qtd_item_compra = qtd_item_compra;
    }

    public double getPreco_item_compra() {
        return preco_item_compra;
    }

    public void setPreco_item_compra(double preco_item_compra) {
        this.preco_item_compra = preco_item_compra;
    }

    

}
