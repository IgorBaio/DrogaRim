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
        <title>Lista de produtos</title>
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
                            <a href="PesquisaVendaController">Venda</a>
                        </td>

                        <td>
                            <a href="PesquisaProdutoController"  class="paginaSelecionada">Produto</a>
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
                        <a href="PesquisaProdutoController">
                            Produtos
                        </a>
                    </td>

                    <td>
                        <a href="ManterProdutoController?acao=prepararOperacao&operacao=Incluir">
                            Cadastrar Produto
                        </a>
                    </td>
                    
                    <td>
                        <a href="PesquisaCategoriaController" class="paginaSelecionada">
                            Categorias
                        </a>
                    </td>
                    
                    <td>
                        <a href="ManterCategoriaController?acao=prepararOperacao&operacao=Incluir">
                            Cadastrar Categoria
                        </a>
                    </td>
                </tr>
            </table>
        </div>

        <section>
            <div id="secaoCategoria">
                <div id="buscaCategoria">
                    <input type="text" id="textoBusca" placeholder="Pesquisar"/>
                    <button id="botaoBusca">Buscar</button>
                    <hr>
                </div>
                <div id="filtroCategoria">
                    Filtros
                </div>
                <div class="listaCategoria">
                    Resultados
                    <table>
                        <tr>
                            <td>Código</td>
                            <td>Nome</td>
                            <td>Ação</td>
                        </tr>

                        <c:forEach items="${categorias}" var="categoria">
                            <tr>
                                <td><c:out value="${categoria.idCategoria}" /></td>
                                <td><c:out value="${categoria.nome}" /></td>
                                <td><a href="ManterCategoriaController?acao=prepararOperacao&operacao=Excluir&idCategoria=<c:out value="${categoria.idCategoria}" />">Excluir</a></td>
                                <td><a href="ManterCategoriaController?acao=prepararOperacao&operacao=Alterar&idCategoria=<c:out value="${categoria.idCategoria}" />">Alterar</a></td>
                            </tr>
                        </c:forEach>
                    </table>
                </div>
            </div>
        </section>
    </body>
</html>