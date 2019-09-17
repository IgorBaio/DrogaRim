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
import model.Funcionario;
import model.Pessoa;

/**
 *
 * @author Igori
 */
public class FuncionarioDAO {
    public static List<Funcionario> obterFuncionarios() throws ClassNotFoundException, SQLException{
        Connection conexao = null;
        Statement comando = null;
        List<Funcionario> funcionarios = new ArrayList<Funcionario>();
        Funcionario funcionario = null;
        try{
            conexao = BD.getConexao();
            comando = conexao.createStatement();
            ResultSet rs = comando.executeQuery("select * from funcionario");
            while(rs.next()){
                funcionario = instanciarFuncionario(rs);
                funcionarios.add(funcionario);
            }
        }  finally{
                   DAO.fecharConexao(conexao, comando); 
                    }
        return funcionarios;
    }
    
     
    public static Funcionario instanciarFuncionario(ResultSet rs) throws SQLException {
        Funcionario funcionario = new Pessoa(
                PessoaDAO.instanciarPessoa(rs)
        )
        /*Funcionario funcionario = new Funcionario(
                    rs.getInt("ID"),
                    rs.getString("FUNCAO"),
                    rs.getString("LOGIN"),
                    rs.getString("SENHA"),
                    null // erro no pessoas_id
        );
                    
                    return funcionario;*/
       }
    
}
