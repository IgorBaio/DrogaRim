/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import static dao.DAO.fecharConexao;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import model.Produto;

/**
 *
 * @author Igori
 */
public class ProdutoDAO {
    public static Produto obterProduto(int id) throws ClassNotFoundException, SQLException{
        Connection conexao = null;
        Statement comando = null;
        Produto produto = null;
        try{
            conexao = BD.getConexao();
            comando = conexao.createStatement();
            ResultSet rs = comando.executeQuery(
            "select * from produtos where id = "+id
            );
        rs.first();
        produto = instanciarProduto(rs);
        }finally{
            fecharConexao(conexao, comando);
        }
        return produto;
    };
    
    
    public static List<Produto> obterProdutos() throws ClassNotFoundException, SQLException{
        Connection conexao = null;
        Statement comando = null;
        List<Produto> produtos = new ArrayList<Produto>();
        Produto produto = null;
        try{
            conexao = BD.getConexao();
            comando = conexao.createStatement();
            ResultSet rs = comando.executeQuery("select * from produtos");
            while(rs.next()){
                produto = instanciarProduto(rs);
                produtos.add(produto);
            }
        }  finally{
                   DAO.fecharConexao(conexao, comando); 
                    }
        return produtos;
    }
    
    public static Produto instanciarProduto(ResultSet rs)throws SQLException{
        Produto produto = new Produto(
                rs.getInt("ID"),
                rs.getString("NOME"),
                rs.getFloat("PRECO"),
                rs.getString("LOTE"),
                null
        );
        produto.setChaveEstoque(rs.getInt("ESTOQUE_ID"));
        return produto;
    
    
    }
}