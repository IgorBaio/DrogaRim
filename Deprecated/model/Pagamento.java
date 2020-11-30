package model;

import dao.PagamentoDAO;
import java.sql.SQLException;
import java.util.List;

public class Pagamento {

    private int id;
    private String tipo;

    public Pagamento(int id, String tipo) {
        this.id = id;
        this.tipo = tipo;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public static Pagamento obterPagamento(int id) throws ClassNotFoundException, SQLException {
        return PagamentoDAO.obterPagamento(id);
    }
    
    public static List<Pagamento> obterPagamentos() throws ClassNotFoundException, SQLException {
        return PagamentoDAO.obterPagamentos();
    }

    public String getTipo() {
        return tipo;
    }

    public void setTipo(String tipo) {
        this.tipo = tipo;
    }

    public void excluir() throws SQLException, ClassNotFoundException {
        PagamentoDAO.excluir(this);
    }
}
