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

        <title>Venda</title>
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
                            <a href="PesquisaVendaController" class="paginaSelecionada">Venda</a>
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
                        <a href="PesquisaVendaController" class="paginaSelecionada">
                            Vendas
                        </a>
                    </td>

                    <td>
                        <a href="ManterVendaController?acao=prepararOperacao&operacao=Incluir">
                            Nova venda
                        </a>
                    </td>
                </tr>
            </table>
        </div>

        <section>
            <div id="secaoVenda">
                <div id="buscaVenda">
                    <input type="text" id="textoBusca" placeholder="Pesquisar"/>
                    <button id="botaoBusca">Buscar</button>
                    <hr>
                </div>
                <div id="filtroVenda">
                    Filtros
                </div>
                <div class="listaVenda">
                    Resultados
                    <table>
                        <tr>
                            <td>Código</td>
                            <td>Data</td>
                            <td>Preço</td>
                            <td>Produto</td>
                            <td>Nome</td>
                            <td colspan=2>Ação</td>
                        </tr>
                        <c:forEach items="${vendas}" var="venda">
                            <tr>
                                <td><c:out value="${venda.idVenda}" /></td>
                                <td><c:out value="${venda.dataVenda}" /></td>
                                <td><c:out value="${venda.precoTotal}" /></td>
                                <td><c:out value="${venda.idProduto}" /></td>
                                <td><c:out value="${venda.getProduto().getNome()}" /></td>
                                <td><a href="ManterVendaController?acao=prepararOperacao&operacao=Alterar&idVenda=<c:out value="${venda.idVenda}"/>">Alterar</a></td>
                                <!--<td><a href="ManterVendaController?acao=prepararOperacao&operacao=Excluir&idVenda=<c:out value="${venda.idVenda}"/>">Excluir</a></td>-->
                                <td><a href="ManterVendaController?acao=prepararOperacao&operacao=Excluir&idVenda=<c:out value="${venda.idVenda}" />">Excluir</a></td>
                            </tr>
                        </c:forEach>
                    </table>
                </div>
            </div>
        </section>
    </body>