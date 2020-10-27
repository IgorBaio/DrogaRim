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
import model.Venda;

/**
 *
 * @author mathe
 */
public class VendaDAO {

    public static List<Venda> obterVendas() throws ClassNotFoundException, SQLException {
        Connection conexao = null;
        Statement comando = null;
        List<Venda> vendas = new java.util.ArrayList<>();
        Venda venda = null;

        try {
            conexao = BD.getConexao();
            comando = conexao.createStatement();
            ResultSet rs = comando.executeQuery("select * from venda");

            while (rs.next()) {
                venda = instanciarVenda(rs);
                vendas.add(venda);
            }
           
            
        } finally {
            fecharConexao(conexao, comando);
        }
        return vendas;
    }

    public static Venda obterVenda(int idVenda) throws SQLException, ClassNotFoundException {
        Connection conexao = null;
        Statement comando = null;
        Venda venda = null;
        try {
            conexao = BD.getConexao();
            comando = conexao.createStatement();
            ResultSet rs = comando.executeQuery("select * from venda where idVenda =" + idVenda);
            rs.first();
            venda = instanciarVenda(rs);
        } finally {
            fecharConexao(conexao, comando);
        }
        return venda;
    }
    
    private static Venda instanciarVenda(ResultSet rs) throws SQLException {
        Venda venda = new Venda(
                rs.getInt("idVenda"),
                rs.getString("data_venda"),
                rs.getDouble("preco_total"),
                null, null);
        venda.setIdCliente(rs.getInt("idCliente"));
        venda.setIdFuncionario(rs.getInt("idFuncionario"));

        return venda;
    }
    
      public static void gravar(Venda venda) throws ClassNotFoundException, SQLException {
        Connection conexao = null;
        PreparedStatement comando = null;
        try {
            conexao = BD.getConexao();
            comando = conexao.prepareStatement(
                    "insert into venda (idVenda, data_venda, idCliente, idFuncionario, preco_total)"
                    + "values (?,?,?,?,0)");
            comando.setInt(1, venda.getIdVenda());
            comando.setString(2, venda.getDataVenda());

            if (venda.getCliente() == null) {
                comando.setNull(3, Types.INTEGER);
            } else {
                comando.setInt(3, venda.getCliente().getIdCliente());
            }
            
            if (venda.getFuncionario() == null) {
                comando.setNull(4, Types.INTEGER);
            } else {
                comando.setInt(4, venda.getFuncionario().getIdFuncionario());
            }
            comando.executeUpdate();
        } finally {
            fecharConexao(conexao, comando);
        }
    }
    
   

    public static void excluir(Venda venda) throws ClassNotFoundException, SQLException {
        Connection conexao = null;
        Statement comando = null;
        String stringSQL;

        try {
            conexao = BD.getConexao();
            comando = conexao.createStatement();
            stringSQL = "delete from venda where idVenda = " + venda.getIdVenda() + ";";
            comando.execute(stringSQL);
        } finally {
            fecharConexao(conexao, comando);
        }
    }
    
    
    public static void alterar(Venda venda) throws ClassNotFoundException, SQLException {
        Connection conexao = null;
        Statement comando = null;
        String stringSQL;

        try {
            conexao = BD.getConexao();
            comando = conexao.createStatement();
            stringSQL = "update venda set "
                    + "data_venda = '" + venda.getDataVenda() + "', "
                    + "idCliente = " + venda.getCliente().getIdCliente() + ", "
                    + "idFuncionario = " + venda.getFuncionario().getIdFuncionario() + ", "
                    + "preco_total = " + venda.getPrecoTotal() + " ";

            stringSQL = stringSQL + " where idVenda = " + venda.getIdVenda() + " ;";

            comando.execute(stringSQL);
        } finally {
            fecharConexao(conexao, comando);
        }
    }
}
