/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;


public class Cliente extends Pessoa{
    
    
    
    public Cliente(int id, String nome, String cpf, String telefone, String email, Endereco endereco, String dataNascimento, String sexo) {
        super(id, nome, cpf, telefone, email, nome, telefone, dataNascimento, sexo, endereco);
    }
    
}
