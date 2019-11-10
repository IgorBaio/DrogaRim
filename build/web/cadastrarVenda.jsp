<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta content="text/html">
        <link rel="stylesheet" href="style.css">

        <title>Cadastrar venda - ${operacao}</title>
    </head>
    <body>
        <header>
            <div class="barralogo">
                <div class="logo"></div>
                <span class="usuario">Vendedor</span>
            </div>
            <nav>
                <hr id="hr1">
                <table>
                    <tr>
                        <td>
                            <a href="PesquisaVendaController"  class="paginaSelecionada">Venda</a>
                        </td>

                        <td>
                            <a href="PesquisaProdutoController">Produto</a>
                        </td>

                        <td>
                            <a href="PesquisaClienteController">Cliente</a>
                        </td>

                        <td>
                            <a href="PesquisaFuncionarioController">Funcionário</a>
                        </td>

                        <td>
                            <a href="PesquisaFabricanteController">Fabricante</a>
                        </td>
                    </tr>
                </table>
            </nav>
            <hr>
        </header>

        <div class="subnav">
            <table>
                <tr>
                    <td>
                        <a href="PesquisaVendaController">
                            Vendas
                        </a>
                    </td>

                    <td>
                        <a href="ManterVendaController?acao=prepararOperacao&operacao=Incluir"  class="paginaSelecionada">
                            Nova venda
                        </a>
                    </td>
                </tr>
            </table>
        </div>

        <section>
            <form action="ManterVendaController?acao=confirmarOperacao&operacao=${operacao}" method="post" name="frmManterVenda">
                <table>
                    <tr>
                        <td><label> Id:</label></td>
                        <td><input type="text" name="txtIdVenda" value="${venda.idVenda}" <c:if test="${operacao != 'Incluir'}"> readonly</c:if>></td>
                        </tr>
                        <tr>    
                            <td><label> Data da venda: </label></td>
                            <td><input type="text" name="txtDataVenda" value="${venda.dataVenda}" <c:if test="${operacao == 'Excluir'}"> readonly</c:if>></td>
                        </tr>
                        <tr>
                            <td><label> Preço: </label></td>
                            <td><input type="text" name="txtPrecoTotal" value="${venda.precoTotal}" <c:if test="${operacao == 'Excluir'}"> readonly</c:if>></td>
                        </tr>
                        <tr>
                            <td><label>Produto:</label>
                                <select name="txtIdProduto" <c:if test="${operacao == 'Excluir'}"> disabled</c:if>>
                                <option value="0" <c:if test="${venda.produto.idProduto == null}">selected</c:if>></option>
                                <c:forEach items="${produtos}" var="produto">
                                    <option value="${produto.idProduto}" <c:if test="${venda.produto.idProduto == produto.idProduto}">selected</c:if>>${produto.nome}</option>
                                </c:forEach>
                            </select>
                        </td>
                    </tr>
                 </table>
                    <p><input type="submit" value="Incluir" name="btnIncluir">
                        <input type="submit" value="Limpar">
                        <input type="submit" value="Excluir" name="btnExcluir">
                        <input type="submit" value="Alterar" name="btnAlterar">
                    </p>
                </form>
            </div>
        </section>
    </body>
</html>
