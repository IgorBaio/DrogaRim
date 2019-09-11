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
public class VendaDAO {
    public static List<Venda> obterVendas() throws ClassNoteFoundException, SQLException{
        Connection conexao = null;
        Statement comando = null;
        List<Venda> vendas = new ArrayList<Venda>();
        Venda venda = null;
        try{
            conexao = BD.getConexao();
            comando = conexao.createStatement();
            ResultSet rs = comando.executeQuery("select * from venda");
            while(rs.next()){
                venda = instanciarVenda(rs);
                vendas.add(venda);
            }
        }  finally{
                   DAO.fecharConexao(conexao, comando); 
                    }
        return vendas;
    }
    
    //public static Adm instanciarAdm(ResultSet rs)throws 
    
    
}


