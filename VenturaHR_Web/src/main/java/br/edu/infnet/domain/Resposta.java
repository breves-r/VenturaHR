package br.edu.infnet.domain;

import java.math.BigDecimal;
import java.util.Date;
import java.util.List;

public class Resposta {
    
    private Integer id;
    private Date data;
    private BigDecimal indice;
    private int idUsuario;
    private int idVaga;
    private List<RespostaCriterio> respostaCriterioList;
    
    public Resposta(){
    }

    @Override
    public String toString() {
        return "Resposta{" + "id=" + id + ", data=" + data + ", indice=" + indice + ", idUsuario=" + idUsuario + ", idVaga=" + idVaga + ", respostaCriterioList=" + respostaCriterioList + '}';
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Date getData() {
        return data;
    }

    public void setData(Date data) {
        this.data = data;
    }

    public BigDecimal getIndice() {
        return indice;
    }

    public void setIndice(BigDecimal indice) {
        this.indice = indice;
    }

    public int getIdUsuario() {
        return idUsuario;
    }

    public void setIdUsuario(int idUsuario) {
        this.idUsuario = idUsuario;
    }

    public int getIdVaga() {
        return idVaga;
    }

    public void setIdVaga(int idVaga) {
        this.idVaga = idVaga;
    }

    public List<RespostaCriterio> getRespostaCriterioList() {
        return respostaCriterioList;
    }

    public void setRespostaCriterioList(List<RespostaCriterio> respostaCriterioList) {
        this.respostaCriterioList = respostaCriterioList;
    }
    
    
    
    
}
