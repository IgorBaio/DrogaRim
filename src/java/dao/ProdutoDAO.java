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

    public static Produto obterProduto(int idProduto) throws ClassNotFoundException, SQLException {
        Connection conexao = null;
        Statement comando = null;
        Produto produto = null;
        try {
            conexao = BD.getConexao();
            comando = conexao.createStatement();
            ResultSet rs = comando.executeQuery("select * from produto where idProduto = " + idProduto);
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
        List<Produto> produtos = new ArrayList<>();
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
                rs.getString("tipo"),
                rs.getBoolean("receita"),
                rs.getBoolean("medicamento"),
                rs.getString("lote"),
                rs.getInt("quantidade"),
                null,
                null);
        produto.setIdFabricante(rs.getInt("idFabricante"));
        produto.setIdCategoria(rs.getInt("idCategoria"));

        //produto.setChaveEstoque(rs.getInt("ESTOQUE_ID"));
        return produto;

    }

    public static void gravar(Produto produto) throws SQLException, ClassNotFoundException {
        Connection conexao = null;
        PreparedStatement comando = null;
        try {
            conexao = BD.getConexao();
            comando = conexao.prepareStatement(
                    "insert into produto(idProduto, nome, nome_farmaco, preco, tipo, receita, medicamento, lote, quantidade, idFabricante, idCategoria) values(?,?,?,?,?,?,?,?,?,?,?)");
            comando.setInt(1, produto.getIdProduto());
            comando.setString(2, produto.getNome());
            comando.setString(3, produto.getNomeFarmaco());
            comando.setDouble(4, produto.getPreco());
            comando.setString(5, produto.getTipo());
            comando.setBoolean(6, produto.isReceita());
            comando.setBoolean(7, produto.isMedicamento());
            comando.setString(8, produto.getLote());
            comando.setInt(9, produto.getQuantidade());
            if (produto.getFabricante() == null) {
                comando.setNull(10, Types.INTEGER);
            } else {
                comando.setInt(10, produto.getFabricante().getIdFabricante());
            }
            if (produto.getCategoria() == null) {
                comando.setNull(11, Types.INTEGER);
            } else {
                comando.setInt(11, produto.getCategoria().getIdCategoria());
            }
            comando.executeUpdate();
        } finally {
            fecharConexao(conexao, comando);

        }
    }

    public static void excluir(Produto produto) throws SQLException, ClassNotFoundException {
        Connection conexao = null;
        Statement comando = null;
        String stringSQL;
        try {
            conexao = BD.getConexao();
            comando = conexao.createStatement();
            stringSQL = "delete from produto where idProduto = " + produto.getIdProduto();
            comando.execute(stringSQL);
        } finally {
            fecharConexao(conexao, comando);
        }
    }

    public static void alterar(Produto produto) throws SQLException, ClassNotFoundException {
        Connection conexao = null;
        Statement comando = null;
        String stringSQL;

        try {
            conexao = BD.getConexao();
            comando = conexao.createStatement();
            stringSQL = "update produto set "
                    + "nome = '" + produto.getNome() + "' ,"
                    + "nome_farmaco = '" + produto.getNomeFarmaco() + "' ,"
                    + "preco = " + produto.getPreco() + " ,"
                    + "tipo = '" + produto.getTipo() + "' ,"
                    + "receita = " + produto.isReceita() + " ,"
                    + "medicamento = " + produto.isMedicamento() + " ,"
                    + "lote = '" + produto.getLote() + "' ,"
                    + "quantidade = " + produto.getQuantidade() + " , "
                    + "idCategoria = " + produto.getIdCategoria() + " , "
                    + "idFabricante = " + produto.getIdFabricante() + " ";

            stringSQL = stringSQL + "where idProduto = " + produto.getIdProduto() + " ";
            comando.execute(stringSQL);

        } finally {
            fecharConexao(conexao, comando);
        }

    }

}
