/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import dao.AdministradorDAO;
import java.sql.SQLException;
import java.util.List;

/**
 *
 * @author Igori
 */
public class Administrador extends Pessoa {
        private int id;
    private String login;
    private String senha;
    
    //crud func

     public Administrador(int id, String nome, String cpf, String telefone, 
            String email,String numeroCasa, String complemento
            ,  String dataNascimento, String sexo, Endereco endereco, String login, String senha) {
        super(id, nome,cpf, telefone, email, numeroCasa, complemento, dataNascimento, sexo, endereco);
        
     }

    public Administrador(int id, String login, String senha) {
        super(0, null, null, null, null, null, null, null, null, null);
        this.id = id;
        this.login = login;
        this.senha = senha;
    }
     
    public static Administrador obterAdministrador(int idAdministrador) throws ClassNotFoundException, SQLException{
        return AdministradorDAO.obterAdministrador(idAdministrador);
    }
    
    public static List<Administrador> obterAdministradores() throws ClassNotFoundException, SQLException{
        return AdministradorDAO.obterAdministradores();
    }
     

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
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
    
    

    
}
