package model;

public class Item_Venda {
    private Produtos produto;
    private double qtd_item_venda;
    private double preco_item_venda;

    public Item_Venda(){}

    public Item_Venda(Produtos produto, double qtd_item_venda, double preco_item_venda){
        this.produto = produto;
        this.qtd_item_venda = qtd_item_venda;
        this.preco_item_venda = preco_item_venda;
        
    }

    public Produtos getProduto() {
        return produto;
    }

    public void setProduto(Produtos produto) {
        this.produto = produto;
    }

    public double getQtd_item_venda() {
        return qtd_item_venda;
    }

    public void setQtd_item_venda(double qtd_item_venda) {
        this.qtd_item_venda = qtd_item_venda;
    }

    public double getPreco_item_venda() {
        return preco_item_venda;
    }

    public void setPreco_item_venda(double preco_item_venda) {
        this.preco_item_venda = preco_item_venda;
    }
    
}
