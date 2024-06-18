package model;

import java.sql.Timestamp;
import java.util.ArrayList;

public class Vendas {
    private int id_venda;
    private Timestamp data_venda;
    private ArrayList<Item_Venda> itens_venda;

public Vendas(){

}

public Vendas(int id_venda, Timestamp data_venda, Item_Venda itens_venda) {
        this.id_venda = id_venda;
        this.data_venda = data_venda;
        this.itens_venda = new ArrayList<>();
    }

    
public int getId_venda() {
    return id_venda;
}

public void setId_venda(int id_venda) {
    this.id_venda = id_venda;
}

public Timestamp getData_venda() {
    return data_venda;
}

public void setData_venda(Timestamp data_venda) {
    this.data_venda = data_venda;
}

public ArrayList<Item_Venda> getItens_venda() {
    return itens_venda;
}

public void setItens_venda(ArrayList<Item_Venda> itens_venda) {
    this.itens_venda = itens_venda;
}

    
    
}
