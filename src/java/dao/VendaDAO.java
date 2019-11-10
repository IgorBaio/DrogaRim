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
    public static List<Venda> obterVendas() throws ClassNotFoundException, SQLException{
        Connection conexao = null;
        Statement comando = null;
        List<Venda> vendas = new java.util.ArrayList<>();
        Venda venda = null;
        
        try{
            conexao = BD.getConexao();
            comando = conexao.createStatement();
            ResultSet rs = comando.executeQuery("select * from venda");
            
            while(rs.next()){
                venda = instanciarVenda(rs);
                vendas.add(venda);
            }
        }finally{
            fecharConexao(conexao, comando);
        }
        return vendas;
    }
    
    public static Venda obterVenda(int idVenda) throws SQLException, ClassNotFoundException{
     
            Connection conexao = null;
            Statement comando = null;
            Venda venda = null;
            try{
                conexao = BD.getConexao();
                comando = conexao.createStatement();
                ResultSet rs = comando.executeQuery("select * from venda where idVenda=" + idVenda);
                rs.first();
                venda = instanciarVenda(rs);
            } finally{
                fecharConexao(conexao, comando);
            }
            return venda;
    }

    private static Venda instanciarVenda(ResultSet rs) throws SQLException {
        Venda venda = new Venda(
        rs.getInt("idVenda"),
        rs.getString("data_venda"),
        rs.getDouble("preco_total"),
        null);
        venda.setIdProduto(rs.getInt("idProduto"));
        return venda;
    }
    
    public static void gravar(Venda venda) throws ClassNotFoundException, SQLException{
        Connection conexao = null;
        PreparedStatement comando = null;
        try{
            conexao = BD.getConexao();
            comando = conexao.prepareStatement(
//"insert into venda (idVenda, data_venda, preco_total, idProduto, valor_recebido,troco )"

                   "insert into venda (idVenda, data_venda, preco_total, idProduto)"
                    + "values (?,?,?,?)");
            comando.setInt(1, venda.getIdVenda());
            comando.setString(2, venda.getDataVenda());
            comando.setDouble(3, venda.getPrecoTotal());
            if(venda.getProduto() == null){
                comando.setNull(4, Types.INTEGER);
            } else {
                comando.setInt(4, venda.getProduto().getIdProduto());
                
            }
//            comando.setDouble(5, venda.getValorRecebido());
           // comando.setDouble(6, getTroco());
            /*
            if (venda.getCliente() == null){
                comando.setNull(7, Types.INTEGER);
            } else {
                comando.setInt(7, venda.getCliente().getIdCliente());
            }
            if (venda.getUsuario() == null){
                comando.setNull(8, Types.INTEGER);
            } else {
                comando.setInt(8, venda.getUsuario().getIdUsuario());
            }
            if (venda.getFormaPagamento() == null){
                comando.setNull(9, Types.INTEGER);
            } else {
                comando.setInt(9, venda.getFormaPagamento().getIdFormaPgto());
            }*/
            comando.executeUpdate();
        }finally{
            fecharConexao(conexao, comando);
        }
    }
    
    public static void excluir(Venda venda) throws ClassNotFoundException, SQLException {
        Connection conexao = null;
        Statement comando= null;
        String stringSQL;
        
        try{
            conexao = BD.getConexao();
            comando = conexao.createStatement();
            stringSQL = "delete from venda where idVenda = "+venda.getIdVenda();
//            stringSQL =  "delete from venda where idVenda = "+ venda.getIdVenda();
            comando.execute(stringSQL);
        }finally{
            fecharConexao(conexao, comando);
        }
    }
    
    public static void alterar(Venda venda) throws ClassNotFoundException, SQLException{
        Connection conexao = null;
        Statement comando = null;
        String stringSQL;
        
        try{
            conexao = BD.getConexao();
            comando = conexao.createStatement();
            stringSQL = "update venda set "
                    + "data_venda = '" + venda.getDataVenda() + "',"
                    + "preco_total = " + venda.getPrecoTotal() + ","
                    + "idProduto = ";
           if(venda.getProduto() == null){
               stringSQL = stringSQL + null;
           } else {
               stringSQL = stringSQL + venda.getProduto().getIdProduto();
           }
           stringSQL = stringSQL + " where idVenda = " + venda.getIdVenda() + " ;";
                    /*+ "idCliente = ";
            if(venda.getCliente() == null){
                stringSQL = stringSQL + null;
            }else{
                stringSQL = stringSQL + venda.getCliente().getIdCliente();
            }
            
            stringSQL = stringSQL + ", idUsuario = ";
            if (venda.getUsuario() == null){
                stringSQL = stringSQL + null;
            }else{
                stringSQL = stringSQL + venda.getUsuario().getIdUsuario();
            }
            
            stringSQL = stringSQL + ", idFormaPgto = ";
            if(venda.getFormaPagamento() == null){
                stringSQL = stringSQL + null;
            }else{
                stringSQL = stringSQL + venda.getFormaPagamento().getIdFormaPgto();
            }*/
        comando.execute(stringSQL);
        }finally{
            fecharConexao(conexao, comando);
        }
    }
}
