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
 * @author mathe
 */
public class ProdutoVendidoDAO {
    public static List<ProdutoVendido> obterProdutosVendidos() throws ClassNoteFoundException, SQLException{
        Connection conexao = null;
        Statement comando = null;
        List<ProdutoVendido> produtosVendidos = new ArrayList<ProdutoVendido>();
        Produto produto = null;
        try{
            conexao = BD.getConexao();
            comando = conexao.createStatement();
            ResultSet rs = comando.executeQuery("select * from produto vendido");
            while(rs.next()){
                produtoVendido = instanciarProdutoVendido(rs);
                produtosVendidos.add(produtoVendido);
            }
        }  finally{
                   DAO.fecharConexao(conexao, comando); 
                    }
        return ProdutosVendidos;
    }
    
    //public static Adm instanciarAdm(ResultSet rs)throws 
    
    
}

