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
import model.Venda;

/**
 *
 * @author mathe
 */
public class VendaDAO {

    public static List<Venda> obterVendas() throws ClassNotFoundException, SQLException {
        Connection conexao = null;
        Statement comando = null;
        List<Venda> vendas = new ArrayList<Venda>();
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
            DAO.fecharConexao(conexao, comando);
        }
        return vendas;
    }

    public static Venda instanciarVenda(ResultSet rs) throws SQLException {
        Venda venda = new Venda(
                rs.getInt("ID"),
                rs.getFloat("PRECO_TOTAL"),
                rs.getInt("DATA_VENDA"),
                rs.getInt("HORARIO"),
                null, // funcionario
                null, //pagamento
                null); //cliente
        venda.setChaveFuncionario(rs.getInt("ID"));
        venda.setChavePagamento(rs.getInt("ID"));
        venda.setChaveCliente(rs.getInt("ID"));
        return venda;
    }
//public static Adm instanciarAdm(ResultSet rs)throws 

}
