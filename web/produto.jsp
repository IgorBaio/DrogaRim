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
            <div class="barralogo">
                <div class="logo"></div>
                <span class="usuario">Vendedor</span>
            </div>
            <nav>
                <hr id="hr1">
                <table>
                    <tr>
                        <td>
                            <a href="PesquisaVendaController">Venda</a>
                        </td>

                        <td>
                            <a href="PesquisaProdutoController"  class="paginaSelecionada">Produto</a>
                        </td>

                        <td>
                            <a href="PesquisaEstoqueController">Estoque</a>
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
                        <a href="PesquisaProdutoController" class="paginaSelecionada">
                            Produtos
                        </a>
                    </td>

                    <td>
                        <a href="ManterProdutoController?acao=prepararOperacao&operacao=Incluir">
                            Cadastrar Produto
                        </a>
                    </td>
                </tr>
            </table>
        </div>

        <!--<form action="ManterProdutoController?acao=prepararOperacao&operacao=Incluir" method="post">
            <input type="submit" name="btnIncluir" value="Incluir">
        </form>-->
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
                            <td>Código</td>
                            <td>Nome</td>
                            <td>Nome Fármaco</td>
                            <td>Preço</td>
                            <td>Categoria</td>
                            <td>Tipo</td>
                            <td>Receita</td>
                            <td>Medicamento</td>
                            <td>Lote</td>
                            <td colspan="2">Ação</td>

                        </tr>
                        <c:forEach items="${produtos}" var="produto">
                            <tr>
                                <td><c:out value="${produto.idProduto}" /></td>
                                <td><c:out value="${produto.nome}" /></td>  
                                <td><c:out value="${produto.nomeFarmaco}" /></td>
                                <td><c:out value="${produto.preco}" /></td>  
                                <td><c:out value="${produto.categoria}" /></td>  
                                <td><c:out value="${produto.tipo}" /></td>  
                                <td><c:out value="${produto.receita}" /></td>                                  
                                <td><c:out value="${produto.medicamento}" /></td>  
                                <td><c:out value="${produto.lote}" /></td> 
                                <td><a href="ManterProdutoController?acao=prepararOperacao&operacao=Excluir&idProduto=<c:out value="${produto.idProduto}" />">Excluir</a></td>

                            </tr>
                        </c:forEach>
                    </table>
                </div>
            </div>
        </section>



        <!--        <section>
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
                            <td>Código</td>
                            <td>Nome</td>
                            <td>Nome Fármaco</td>
                            <td>Preço</td>
                            <td>Categoria</td>
                            <td>Tipo</td>
                            <td>Receita</td>
                            <td>Quantidade</td>
        
                        </tr>
        <c:forEach items="${produto}" var="produto">
          <tr>
              <td><c:out value="${produto.idProduto}" /></td>
              <td><c:out value="${produto.nome}" /></td>
              <td><c:out value="${produto.nomeFarmaco}" /></td>
              <td><c:out value="${produto.preco}" /></td>
              <td><c:out value="${produto.categoria}" /></td>
              <td><c:out value="${produto.tipo}" /></td>
              <td><c:out value="${produto.receita}" /></td>
              <td><c:out value="${produto.quantidade}" /></td>
          </tr>
        </c:forEach>
   </table>
 </div>
</div>
</section>

tem q mexer nos atributos de produto pra poder funcionar


        -->
    </body>

</html>
