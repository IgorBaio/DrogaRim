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
public class Venda {
    private double precoTotal;
    private int dataVenda;
    private int horario;
    private Funcionario funcionario;
    private Pagamento pagamento;
    private Cliente cliente;
    private int chaveFuncionario;
    private int ChvePagamento;
    private int chaveCliente;
    
    public Venda(double precoTotal, int dataVenda, int horario ) {
        this.precoTotal = precoTotal;
        this.dataVenda = dataVenda;
        this.horario = horario;
    }

    public double getPrecoTotal() {
        return precoTotal;
    }

    public void setPrecoTotal(double precoTotal) {
        this.precoTotal = precoTotal;
    }

    public int getDataVenda() {
        return dataVenda;
    }

    public void setDataVenda(int dataVenda) {
        this.dataVenda = dataVenda;
    }

    public int getHorario() {
        return horario;
    }

    public void setHorario(int horario) {
        this.horario = horario;
    }

    public Funcionario getFuncionario() {
        return funcionario;
    }

    public void setFuncionario(Funcionario funcionario) {
        this.funcionario = funcionario;
    }

    public Pagamento getPagamento() {
        return pagamento;
    }

    public void setPagamento(Pagamento pagamento) {
        this.pagamento = pagamento;
    }

    public Cliente getCliente() {
        return cliente;
    }

    public void setCliente(Cliente cliente) {
        this.cliente = cliente;
    }

    public int getChaveFuncionario() {
        return chaveFuncionario;
    }

    public void setChaveFuncionario(int chaveFuncionario) {
        this.chaveFuncionario = chaveFuncionario;
    }

    public int getChvePagamento() {
        return ChvePagamento;
    }

    public void setChvePagamento(int ChvePagamento) {
        this.ChvePagamento = ChvePagamento;
    }

    public int getChaveCliente() {
        return chaveCliente;
    }

    public void setChaveCliente(int chaveCliente) {
        this.chaveCliente = chaveCliente;
    }
    
    
    
}
