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
import model.Pessoa;

public class PessoaDAO {
    public static Pessoa obterPessoa(int id) throws ClassNotFoundException, SQLException{
        Connection conexao = null;
        Statement comando = null;
        Pessoa pessoa = null;
        try{
            conexao = BD.getConexao();
            comando = conexao.createStatement();
            ResultSet rs = comando.executeQuery("select * from pessoas where id = " + id);
            rs.first();
            pessoa = instanciarPessoa(rs);
        } finally {
            DAO.fecharConexao(conexao, comando);
        }
        return pessoa;
    };
    
    public static List<Pessoa> obterPessoas() throws ClassNotFoundException, SQLException{
        Connection conexao = null;
        Statement comando = null;
        List<Pessoa> pessoas = new ArrayList<Pessoa>();
        Pessoa pessoa = null;
        try{
            conexao = BD.getConexao();
            comando = conexao.createStatement();
            ResultSet rs = comando.executeQuery("select * from pessoas");
            while(rs.next()){
                pessoa = instanciarPessoa(rs);
                pessoas.add(pessoa);
            }
        }  finally{
                   DAO.fecharConexao(conexao, comando); 
                    }
        return pessoas;
    }
    
    public static Pessoa instanciarPessoa(ResultSet rs) throws SQLException {
        Pessoa pessoa = new Pessoa(
                    rs.getInt("id"),
                    rs.getString("nome"),
                    rs.getString("cpf"),
                    rs.getString("telefone"),
                    rs.getString("email"),
                    rs.getString("numero"),
                    rs.getString("complemento"),
                    rs.getString("data_nasc"),
                    rs.getString("sexo"),
                    null
        );
                    pessoa.setChaveEndereco(rs.getInt("id"));
                    return pessoa;
        }
    
    
    public void  gravar(Pessoa pessoa) throws SQLException, ClassNotFoundException {
        Connection conexao = null;
        PreparedStatement comando = null;
        try{
            conexao = BD.getConexao();
            comando = conexao.prepareStatement ("insert into pessoas (id, nome, cpf, telefone, email, numero, complemento, data_nasc, sexo, enderecos_id) values (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)");
            comando.setInt(1, pessoa.getId());
            comando.setString(2, pessoa.getNome());
            comando.setString(3, pessoa.getCpf());
            comando.setString(4, pessoa.getTelefone());
            comando.setString(5, pessoa.getEmail());
            comando.setString(6, pessoa.getNumeroCasa());
            comando.setString(7, pessoa.getComplemento());
            comando.setString(8, pessoa.getDataNascimento());
            comando.setString(9, pessoa.isSexo());
        if (pessoa.getEndereco() == null){
            comando.setNull(7, Types.INTEGER);
        }
        else{
            comando.setInt(7, pessoa.getEndereco().getId());
        }
        comando.executeUpdate();
        }
        finally {
            fecharConexao(conexao, comando);
        }
    }
    }
