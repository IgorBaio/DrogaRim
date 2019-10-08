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
import java.sql.Types;
import java.util.ArrayList;
import java.util.List;
import model.ProdutoVendido;

/**
 *
 * @author mathe
 */
public class ProdutoVendidoDAO {
    public static ProdutoVendido obterProdutoVendido(int id) throws ClassNotFoundException, SQLException{
        Connection conexao = null;
        Statement comando = null;
        ProdutoVendido produtoVendido = null;
        try{
            conexao = BD.getConexao();
            comando = conexao.createStatement();
            ResultSet rs = comando.executeQuery(
            "select * from produtovendido where id = "+id
            );
        rs.first();
        produtoVendido = instanciarProdutoVendido(rs);
        }finally{
            fecharConexao(conexao, comando);
        }
        return produtoVendido;
    };
    
    
    public static List<ProdutoVendido> obterProdutosVendidos() throws ClassNotFoundException, SQLException{
        Connection conexao = null;
        Statement comando = null;
        List<ProdutoVendido> produtosVendidos = new ArrayList<ProdutoVendido>();
        ProdutoVendido produtoVendido = null;
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
        return produtosVendidos;
    }
    
    public static ProdutoVendido instanciarProdutoVendido(ResultSet rs)throws SQLException{
        ProdutoVendido produtoVendido = new ProdutoVendido(
                rs.getInt("idProdutoVendido"),
                rs.getFloat("preco"),
                null,
                null
        );
        produtoVendido.setChaveProduto(rs.getInt("idProduto"));
        produtoVendido.setChaveVenda(rs.getInt("idVenda"));

        return produtoVendido;
    }
     public static void gravar(ProdutoVendido produtoVendido) throws SQLException, ClassNotFoundException{
        Connection conexao = null;
        PreparedStatement comando = null;
        try{
            conexao = BD.getConexao();
            comando = conexao.prepareStatement(
                    "insert into produtos(idProdutoVendido, produtos_id, vendas_id, preco)"
                    +" values(?,?,?,?,?)");
            comando.setInt(1, produtoVendido.getId());
            if(produtoVendido.getProduto()== null){
                comando.setNull(2, Types.INTEGER);
            }else{
                comando.setInt(2, produtoVendido.getProduto().getId());
            }
            if(produtoVendido.getVenda()== null){
                comando.setNull(3, Types.INTEGER);
            }else{
                comando.setInt(3, produtoVendido.getVenda().getId());
            }            
            comando.setDouble(4 , produtoVendido.getPreco());
            comando.executeUpdate();
        }finally{
            fecharConexao(conexao, comando);
            
        }
    }
    
}

