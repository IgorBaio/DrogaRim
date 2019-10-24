/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import dao.FabricanteDAO;
import java.sql.SQLException;
import java.util.List;

/**
 *
 * @author mathe
 */
public class Fabricante {
    private int idFabricante;
    private String nome;

    public Fabricante(int idFabricante, String nome) {
        this.idFabricante = idFabricante;
        this.nome = nome;
    }
    
    public static Fabricante obterFabricante(int idFabricante) throws ClassNotFoundException, SQLException{
        return FabricanteDAO.obterFabricante(idFabricante);
    }
    
    public static List<Fabricante> obterFabricantes() throws ClassNotFoundException, SQLException{
        return FabricanteDAO.obterFabricantes();
    }

    public int getIdFabricante() {
        return idFabricante;
    }

    public void setIdFabricante(int idFabricante) {
        this.idFabricante = idFabricante;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }
    
    public void gravar() throws SQLException, ClassNotFoundException{
        FabricanteDAO.gravar(this);
    }
        public void excluir() throws SQLException, ClassNotFoundException{
        FabricanteDAO.excluir(this);
    }

}