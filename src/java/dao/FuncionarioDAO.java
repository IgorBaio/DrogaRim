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
    public static Funcionario obterFuncionario(int id) throws ClassNotFoundException, SQLException{
        Connection conexao = null;
        Statement comando = null;
        Funcionario funcionario = null;
        try{
            conexao = BD.getConexao();
            comando = conexao.createStatement();
            ResultSet rs = comando.executeQuery(
            "select * from funcionarios where id = "+id
            );
        rs.first();
        funcionario = instanciarFuncionario(rs);
        }finally{
            DAO.fecharConexao(conexao, comando);
        }
        return funcionario;
    };
    
    
    public static List<Funcionario> obterFuncionarios() throws ClassNotFoundException, SQLException{
        Connection conexao = null;
        Statement comando = null;
        List<Funcionario> funcionarios = new ArrayList<Funcionario>();
        Funcionario funcionario = null;
        try{
            conexao = BD.getConexao();
            comando = conexao.createStatement();
            ResultSet rs = comando.executeQuery("select * from funcionarios");
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
        
        Funcionario funcionario = new Funcionario(
                    rs.getInt("idFuncionario"),
                    rs.getString("funcao"),
                    rs.getString("login"),
                    rs.getString("senha"),
                    PessoaDAO.instanciarPessoa(rs)
        );
                    
                    return funcionario;
    }
    
}
