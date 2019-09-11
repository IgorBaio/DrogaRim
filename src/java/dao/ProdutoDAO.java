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

/**
 *
 * @author Igori
 */
public class ProdutoDAO {
    public static List<Produto> obterProdutos() throws ClassNotFoundException, SQLException{
        Connection conexao = null;
        Statement comando = null;
        List<Produto> produtos = new ArrayList<Produto>();
        Produto produto = null;
        try{
            conexao = BD.getConexao();
            comando = conexao.createStatement();
            ResultSet rs = comando.executeQuery("select * from produto");
            while(rs.next()){
                produto = instanciarProduto(rs);
                produtos.add(produto);
            }
        }  finally{
                   DAO.fecharConexao(conexao, comando); 
                    }
        return Produtos;
    }
    
    //public static Adm instanciarAdm(ResultSet rs)throws 
    
    
}