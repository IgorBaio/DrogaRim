/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import static dao.DAO.fecharConexao;
import java.sql.Connection;
import java.sql.PreparedStatement;
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
    public static Estoque obterEstoque(int id) throws ClassNotFoundException, SQLException{
        Connection conexao = null;
        Statement comando = null;
        Estoque estoque = null;
        try{
            conexao = BD.getConexao();
            comando = conexao.createStatement();
            ResultSet rs = comando.executeQuery(
            "select * from estoque where id = "+id
            );
        rs.first();
        estoque = instanciarEstoque(rs);
        }finally{
            fecharConexao(conexao, comando);
        }
        return estoque;
    };
    
    
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
                rs.getInt("idEstoque"),
                rs.getInt("quant_min"),
                rs.getInt("quant_max")
        );
        return estoque;
    }
    
    public static void gravar(Estoque estoque)throws SQLException, ClassNotFoundException{
        Connection conexao = null;
        PreparedStatement comando = null;
        try{
            conexao =BD.getConexao();
            comando = conexao.prepareStatement("insert into estoque (idEstoque, quant_min, quant_max)" 
                    + "values(?, ?, ?)");
            comando.setInt(1, estoque.getId());
            comando.setInt(2, estoque.getQuantidade());
            comando.setInt(3, estoque.getQuantidadeMinima());
            comando.executeUpdate();
        }finally{
            fecharConxecao(conexao, comando);
        }
        
    }

    private static void fecharConxecao(Connection conexao, PreparedStatement comando) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
}
