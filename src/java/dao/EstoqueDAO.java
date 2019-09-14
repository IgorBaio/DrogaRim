/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import model.Estoque;

/**
 *
 * @author mathe
 */
public class EstoqueDAO {
    public static List<Estoque> obterEstoques() throws ClassNotFoundException, SQLException{
        Connection conexao = null;
        Statement comando = null;
        List<Estoque> estoques = new ArrayList<Estoque>();
        Estoque estoque = null;
        try{
            conexao = BD.getConexao();
            comando = conexao.createStatement();
            ResultSet rs = comando.executeQuery("select * from estoque");
            while(rs.next()){
                estoque = instanciarEstoque(rs);
                estoques.add(estoque);
            }
        }  finally{
                   DAO.fecharConexao(conexao, comando); 
                    }
        return estoques;
    }
    
    public static Estoque instanciarEstoque(ResultSet rs)throws SQLException{
        Estoque estoque = new Estoque(
                rs.getInt("ID"),
                rs.getInt("QUANT_MIN"),
                rs.getInt("QUANTIDADE")
        );
        return estoque;
    }
}
