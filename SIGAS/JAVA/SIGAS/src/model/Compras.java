package model;

import java.sql.Timestamp;
import java.util.ArrayList;

public class Compras {
    
    private int id_compra;
    private Timestamp data_compra;
    private ArrayList<Item_Compra> itens_compra;

    public Compras(){}

    public Compras(int id_compra, Timestamp data_compra, Item_Compra itens_compra){
        this.id_compra = id_compra;
        this.data_compra = data_compra;
        this.itens_compra = new ArrayList<>();
    
    }
    

    public int getId_compra() {
        return id_compra;
    }

    public void setId_compra(int id_compra) {
        this.id_compra = id_compra;
    }

    public Timestamp getData_compra() {
        return data_compra;
    }

    public void setData_compra(Timestamp data_compra) {
        this.data_compra = data_compra;
    }

    public ArrayList<Item_Compra> getItens_compra() {
        return itens_compra;
    }

    public void setItens_compra(ArrayList<Item_Compra> itens_compra) {
        this.itens_compra = itens_compra;
    }



}
