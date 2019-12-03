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
import java.util.ArrayList;
import java.util.List;
import model.Pagamento;

/**
 *
 * @author Igori
 */
public class PagamentoDAO {
    public static Pagamento obterPagamento(int id) throws ClassNotFoundException, SQLException{
        Connection conexao = null;
        Statement comando = null;
        Pagamento pagamento = null;
        try{
            conexao = BD.getConexao();
            comando = conexao.createStatement();
            ResultSet rs = comando.executeQuery(
            "select * from pagamento where id = "+id
            );
        rs.first();
        pagamento = instanciarPagamento(rs);
        }finally{
            fecharConexao(conexao, comando);
        }
        return pagamento;
    };
    
    
    public static List<Pagamento> obterPagamentos() throws ClassNotFoundException, SQLException{
        Connection conexao = null;
        Statement comando = null;
        List<Pagamento> pagamentos = new ArrayList<Pagamento>();
        Pagamento pagamento = null;
        try{
            conexao = BD.getConexao();
            comando = conexao.createStatement();
            ResultSet rs = comando.executeQuery("select * from pagamento");
            while(rs.next()){
                pagamento = instanciarPagamento(rs);
                pagamentos.add(pagamento);
            }
        }  finally{
                   DAO.fecharConexao(conexao, comando); 
                    }
        return pagamentos;
    }
    
    public static Pagamento instanciarPagamento(ResultSet rs)throws SQLException{
        Pagamento pagamento = new Pagamento(
                rs.getInt("idPagamento"),
                rs.getString("tipo")
        );
        return pagamento;
    }
    
    public void  gravar(Pagamento pagamento) throws SQLException, ClassNotFoundException {
        Connection conexao = null;
        PreparedStatement comando = null;
        try{
            conexao = BD.getConexao();
            comando = conexao.prepareStatement ("insert into pagamentos (idPagamento, tipo) values (?, ?)");
            comando.setInt(1, pagamento.getId());
            comando.setString(2,pagamento.getTipo());
           // comando.setDouble(5, pagamento.getPreco()); >>>>>>>>>>> necessário criar preço no banco de dados? <<<<<<<<<<<<
            comando.executeUpdate();
        }
        finally {
            fecharConexao(conexao, comando);
        }
    }
    public static void excluir(Pagamento pagamento) throws SQLException, ClassNotFoundException {
        Connection conexao = null;
        Statement comando = null;
        String stringSQL;
        
        try {
            conexao = BD.getConexao();
            comando = conexao.createStatement();
            stringSQL = "delete from pagamento where idPagamento = " + pagamento.getId();
            comando.execute(stringSQL);
        }
        finally {
            fecharConexao(conexao, comando);
        }
    }
}
