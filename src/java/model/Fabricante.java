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
    private int id;
    private String nome;

    public Fabricante(int id, String nome) {
        this.id = id;
        this.nome = nome;
    }
    
    public static Fabricante obterFabricante(int idFabricante) throws ClassNotFoundException, SQLException{
        return FabricanteDAO.obterFabricante(idFabricante);
    }
    
    public static List<Fabricante> obterFabricantes() throws ClassNotFoundException, SQLException{
        return FabricanteDAO.obterFabricantes();
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

}