package model;

import dao.FuncionarioDAO;
import java.sql.SQLException;
import java.util.List;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Funcionario {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer idFuncionario;
    private String funcao;
    private String login;
    private String senha;

    
    public Funcionario(){};
    
    public Funcionario(Integer idFuncionario, String funcao, String login, String senha) {
        this.idFuncionario = idFuncionario;
        this.funcao = funcao;
        this.login = login;
        this.senha = senha;
    }

    public static Funcionario obterFuncionario(int idFuncionario) throws ClassNotFoundException, SQLException {
        return FuncionarioDAO.obterFuncionario(idFuncionario);
    }

    public static List<Funcionario> obterFuncionarios() throws ClassNotFoundException, SQLException {
        return FuncionarioDAO.obterFuncionarios();
    }

    public Integer getIdFuncionario() {
        return idFuncionario;
    }

    public void setIdFuncionario(int idFuncionario) {
        this.idFuncionario = idFuncionario;
    }

    public String getFuncao() {
        return funcao;
    }

    public void setFuncao(String funcao) {
        this.funcao = funcao;
    }

    public String getLogin() {
        return login;
    }

    public void setLogin(String login) {
        this.login = login;
    }

    public String getSenha() {
        return senha;
    }

    public void setSenha(String senha) {
        this.senha = senha;
    }

    public void gravar() throws SQLException, ClassNotFoundException {
        FuncionarioDAO.gravar(this);
    }

    public void excluir() throws SQLException, ClassNotFoundException {
        FuncionarioDAO.excluir(this);
    }

    public void alterar() throws SQLException, ClassNotFoundException {
        FuncionarioDAO.gravar(this);
    }
}
