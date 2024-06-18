package model;

import java.sql.Timestamp;

public class Relatorios {
    private int id_relatorio;
    private Timestamp data_relatorio;
    private String descricao_relatorio;

    public Relatorios(){
        
    }
    public Relatorios(int id_relatorio, Timestamp data_relatorio, String descricao_relatorio) {
        this.id_relatorio = id_relatorio;
        this.data_relatorio = data_relatorio;
        this.descricao_relatorio = descricao_relatorio;
    }
    
    public int getId_relatorio() {
        return id_relatorio;
    }
    public void setId_relatorio(int id_relatorio) {
        this.id_relatorio = id_relatorio;
    }
    public Timestamp getData_relatorio() {
        return data_relatorio;
    }
    public void setData_relatorio(Timestamp data_relatorio) {
        this.data_relatorio = data_relatorio;
    }
    public String getDescricao_relatorio() {
        return descricao_relatorio;
    }
    public void setDescricao_relatorio(String descricao_relatorio) {
        this.descricao_relatorio = descricao_relatorio;
    }




    
    
}
