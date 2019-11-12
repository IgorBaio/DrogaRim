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
    <title>Estoque</title>
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
                      <a href="PesquisaProdutoController">Produto</a>
                  </td>

                  <td>
                      <a href="PesquisaEstoqueController"  class="paginaSelecionada">Estoque</a>
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
                      <a href="PesquisaEstoqueController" class="paginaSelecionada">
                          Estoque
                      </a>
                  </td>

                  <td>
                      <a href="ManterEstoqueController?acao=prepararOperacao&operacao=Incluir">
                          Incluir Produto
                      </a>
                  </td>
              </tr>
          </table>
        </div>

        <!--<form action="ManterEstoqueController?acao=prepararOperacao&operacao=Incluir" method="post">
           <input type="submit" name="btnIncluir" value="Incluir">
        </form>-->
        <section>
          <div id="secaoEstoque">
            <div id="buscaEstoque">
              <input type="text" id="textoBusca" placeholder="Pesquisar"/>
              <button id="botaoBusca">Buscar</button>
              <hr>
            </div>
            <div id="filtroEstoque">
              Filtros
            </div>
            <div class="listaEstoque">
              Resultados
              <table>
                 <tr>
                            <td>Código</td>
                            <td>Nome</td>
                            <td>Nome Fármaco</td>
                            <td>Categoria</td>
                            <td colspan="2">Ação</td>

                        </tr>
                        <c:forEach items="${produtos}" var="produto">
                            <tr>
                                <td><c:out value="${produto.idProduto}" /></td>
                                <td><c:out value="${produto.nome}" /></td>  
                                <td><c:out value="${produto.nomeFarmaco}" /></td>
                                <td><c:out value="${produto.categoria}" /></td>  
                                
                                <td><a href="ManterProdutoController?acao=prepararOperacao&operacao=Excluir&idProduto=<c:out value="${produto.idProduto}" />">Excluir</a></td>

                            </tr>
                        </c:forEach>
              </table>
            </div>
          </div>
        </section>
  </body>

</html>
