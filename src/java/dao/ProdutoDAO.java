/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import static dao.DAO.fecharConexao;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.Types;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Produto;

/**
 *
 * @author Igori
 */
public class ProdutoDAO {

    public static Produto obterProduto(int id) throws ClassNotFoundException, SQLException {
        Connection conexao = null;
        Statement comando = null;
        Produto produto = null;
        try {
            conexao = BD.getConexao();
            comando = conexao.createStatement();
            ResultSet rs = comando.executeQuery(
                    "select * from produto where idProduto = " + id
            );
            rs.first();
            produto = instanciarProduto(rs);
        } finally {
            fecharConexao(conexao, comando);
        }
        return produto;
    }
     
    public static List<Produto> obterProdutos() throws ClassNotFoundException, SQLException {
        Connection conexao = null;
        Statement comando = null;
        List<Produto> produtos = new ArrayList<Produto>();
        Produto produto = null;
        try {
            conexao = BD.getConexao();
            comando = conexao.createStatement();
            ResultSet rs = comando.executeQuery("select * from produto");
            while (rs.next()) {
                produto = instanciarProduto(rs);
                produtos.add(produto);
            }
        } finally {
            DAO.fecharConexao(conexao, comando);
        }
        return produtos;
    }

    public static Produto instanciarProduto(ResultSet rs) throws SQLException {
        Produto produto = new Produto(
                rs.getInt("idProduto"),
                rs.getString("nome"),
                rs.getString("nome_farmaco"),
                rs.getFloat("preco"),
                rs.getString("categoria"),
                rs.getString("tipo"),
                rs.getBoolean("receita"),
                rs.getBoolean("medicamento"),
                rs.getString("lote")
                // null
        );
        //produto.setChaveEstoque(rs.getInt("ESTOQUE_ID"));
        return produto;

    }

    public static void gravar(Produto produto) throws SQLException, ClassNotFoundException {
        Connection conexao = null;
        PreparedStatement comando = null;
        try {
            conexao = BD.getConexao();
            /*comando = conexao.prepareStatement(
                    "insert into produtos(idProduto, nome, preco, lote, estoque_id)"
                    +" values(?,?,?,?,?)");
            comando.setInt(1, produto.getId());
            comando.setString(2 , produto.getNome());
            comando.setDouble(3 , produto.getPreco());
            comando.setString(4 , produto.getLote());
            if(produto.getEstoque() == null){
                comando.setNull(5, Types.INTEGER);
            }else{
                comando.setInt(5, produto.getEstoque().getId());
            }*/
            comando = conexao.prepareStatement(
                    "insert into produto(idProduto, nome, nome_farmaco, preco, categoria, tipo, receita, medicamento, lote) values(?,?,?,?,?,?,?,?,?)");
            comando.setInt(1, produto.getIdProduto());
            comando.setString(2, produto.getNome());
            comando.setString(3, produto.getNomeFarmaco());
            comando.setDouble(4, produto.getPreco());
            comando.setString(5, produto.getCategoria());
            comando.setString(6, produto.getTipo());
            comando.setBoolean(7, produto.isReceita());
            comando.setBoolean(8, produto.isMedicamento());
            comando.setString(9, produto.getLote());
            comando.executeUpdate();
        } finally {
            fecharConexao(conexao, comando);

        }
    }

}
