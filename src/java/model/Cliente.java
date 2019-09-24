/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import dao.ClienteDAO;
import java.sql.SQLException;
import java.util.List;


public class Cliente extends Pessoa{
    
    
    
    public Cliente(int id, String nome, String cpf, String telefone, String email, Endereco endereco, String dataNascimento, String sexo) {
        super(id, nome, cpf, telefone, email, nome, telefone, dataNascimento, sexo, endereco);
    }
    
    public static List<Cliente> obterClientes() throws ClassNotFoundException, SQLException{
        return ClienteDAO.obterClientes();
    };
    
}
