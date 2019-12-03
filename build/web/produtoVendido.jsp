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
        <title>Produtos da venda ${venda.idVenda}</title>
    </head>

    <body>
        <header>
            <a class="barralogo"  href=index.jsp><img src=logoDrogarim.png alt=Drogarim width="25%"/></a>
            <span class="usuario">Vendedor</span>
            <nav>
                <hr>
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
            <hr id="hr2">
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
            <div id="secaoProduto">
                <div id="buscaProduto">
                    <input type="text" id="textoBusca" placeholder="Pesquisar"/>
                    <button id="botaoBusca">Buscar</button>
                    <hr>
                </div>
                <div id="filtroProduto">
                    Filtros
                </div>
                <div class="listaProduto">
                    Resultados
                    <table>
                        <tr>
                            <td>Id Prod Venda</td>
                            <td>id Produto</td>
                            <td>Preço</td>
                            <td>Id Venda</td>
                            <td colspan="2">Ação</td>

                        </tr>
                        <c:forEach items="${produtosVendidos}" var="produtoVendido">
                            <tr>
                                <td><c:out value="${produtoVendido.idProdutoVendido}" /></td>
                                <td><c:out value="${produtoVendido.idProduto}" /></td>  
                                <td><c:out value="${produtoVendido.preco}" /></td>
                                <td><c:out value="${produtoVendido.idVenda}" /></td>


                                <td><a href="ManterProdutoVendidoController?acao=prepararOperacao&operacao=Excluir&idProdutoVendido=<c:out value="${produtoVendido.idProdutoVendido}" />">Excluir</a></td>
                                <!--<td><a href="ManterProdutoVendidoController?acao=prepararOperacao&operacao=Alterar&idProdutoVendido=<c:out value="${produtoVendido.idProdutoVendido}"/>">Alterar</a></td>-->
                            </tr>
                        </c:forEach>
                        <tr>
                            <td><a href="ManterProdutoVendidoController?acao=prepararOperacao&operacao=Incluir">Add item</a></td>
                        </tr>
                    </table>
                </div>
        </section>
    </body>
</html>
