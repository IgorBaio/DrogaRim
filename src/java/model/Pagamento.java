/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import dao.PagamentoDAO;
import java.sql.SQLException;
import java.util.List;

/**
 *
 * @author Igori
 */
public class Pagamento {
    private int id;
    private String tipo;

    public Pagamento(int id,String tipo) {
        this.id = id;
        this.tipo = tipo;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }
    
    

    public static Pagamento obterPagamento(int id) throws ClassNotFoundException, SQLException{
        return PagamentoDAO.obterPagamento(id);
    };
    
    
    public static List<Pagamento> obterPagamentos() throws ClassNotFoundException, SQLException{
        return PagamentoDAO.obterPagamentos();
    };

    public String getTipo() {
        return tipo;
    }

    public void setTipo(String tipo) {
        this.tipo = tipo;
    }
    //public void gravar() throws SQLException, ClassNotFoundException{
    //    PagamentoDAO.gravar(this);
    //}

}
