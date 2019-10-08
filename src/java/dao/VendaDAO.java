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
    
    public static Venda obterVenda(int id) throws ClassNotFoundException, SQLException{
         Connection conexao = null;
        Statement comando = null;
        Venda venda = null;    
     try {
            conexao = BD.getConexao();
            comando = conexao.createStatement();
            ResultSet rs = comando.executeQuery("select * from vendas where id =" + id);
            rs.first();
            venda = instanciarVenda(rs);
        } finally {
            DAO.fecharConexao(conexao, comando);
        }
        return venda;
    };

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

     public static void gravar(Venda venda) throws SQLException, ClassNotFoundException{
        Connection conexao = null;
        PreparedStatement comando = null;
        try{
            conexao = BD.getConexao();
            comando = conexao.prepareStatement(
                    "insert into vendas(idVenda, preco_total, data_venda, horario, idFuncionario,"
                            +" idPagamento, idCliente)"
                    +" values(?,?,?,?,?)");
            comando.setInt(1, venda.getId());
            comando.setDouble(2 , venda.getPrecoTotal());
            comando.setInt(3 , venda.getDataVenda());
            comando.setInt(4 , venda.getHorario());
            if(venda.getFuncionario()== null){
                comando.setNull(5, Types.INTEGER);
            }else{
                comando.setInt(5, venda.getFuncionario().getIdFuncionario());
            }
            if(venda.getPagamento()== null){
                comando.setNull(6, Types.INTEGER);
            }else{
                comando.setInt(6, venda.getPagamento().getId());
            }
            if(venda.getCliente()== null){
                comando.setNull(7, Types.INTEGER);
            }else{
                comando.setInt(7, venda.getCliente().getIdCliente());
            }
            comando.executeUpdate();
        }finally{
            fecharConexao(conexao, comando);
            
        }
    }
    
}
