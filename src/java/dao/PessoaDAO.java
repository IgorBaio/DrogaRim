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
 * @author Igori
 */
public class PessoaDAO {
    public static List<Pessoa> obterPessoas() throws ClassNotFoundException, SQLException{
        Connection conexao = null;
        Statement comando = null;
        List<Pessoa> pessoas = new ArrayList<Pessoa>();
        Pessoa pessoa = null;
        try{
            conexao = BD.getConexao();
            comando = conexao.createStatement();
            ResultSet rs = comando.executeQuery("select * from pessoa");
            while(rs.next()){
                pessoa = instanciarPessoa(rs);
                pessoas.add(pessoa);
            }
        }  finally{
                   DAO.fecharConexao(conexao, comando); 
                    }
        return pessoas;
    }
}
