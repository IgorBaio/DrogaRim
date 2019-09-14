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
import model.Pagamento;

/**
 *
 * @author Igori
 */
public class PagamentoDAO {
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
                rs.getInt("ID"),
                rs.getString("TIPO"),
                rs.getDouble("VALOR_RECEBIDO"),
                rs.getDouble("TROCO"),
                rs.getDouble("preco")
        );
        return pagamento;
    }
}
