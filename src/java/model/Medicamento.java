/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author Igori
 */
public class Medicamento extends Produto {
    private String categoria;
    private String tipo;
    private boolean receita;
    private String contraIndicacao;
    private String nomeFarmaco;

   /* public Medicamento(int id,String nome, float preco, String lote, Estoque estoque, String categoria,
            String tipo, boolean receita, String contraIndicacao, String nomeFarmaco) {
        //super(id,nome, preco, lote, estoque);
        this.categoria = categoria;
        this.contraIndicacao= contraIndicacao;
        this.nomeFarmaco = nomeFarmaco;
        this.receita = receita;
        this.tipo = tipo;
    }
*/
    //public Medicamento(int id, String nome, float preco, String lote, String categoria, String contraINd, boolean receita, String nomeFarma, Object endereco) {
    //    throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    //}

    public Medicamento(int id, String nome, float preco, Estoque estoque) {
        super(id, nome, preco, estoque);
    }


    
    public String getNomeFarmaco() {
        return nomeFarmaco;
    }

    public void setNomeFarmaco(String nomeFarmaco) {
        this.nomeFarmaco = nomeFarmaco;
    }

    public String getCategoria() {
        return categoria;
    }

    public void setCategoria(String categoria) {
        this.categoria = categoria;
    }

    public String getTipo() {
        return tipo;
    }

    public void setTipo(String tipo) {
        this.tipo = tipo;
    }

    public boolean isReceita() {
        return receita;
    }

    public void setReceita(boolean receita) {
        this.receita = receita;
    }

    public String getContraIndicacao() {
        return contraIndicacao;
    }

    public void setContraIndicacao(String contraIndicacao) {
        this.contraIndicacao = contraIndicacao;
    }
    
}
