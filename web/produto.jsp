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

    <title>Produto</title>
    </head>
    <body>
      <header>
        <div class="barralogo">
            <h1>DROGARIM</h1>
            <span id="usuario">Vendedor</span>
        </div>
        <hr>
        <nav>
            <table>
                <tr>
                    <td>
                        <a href="index.jsp">Venda</a>
                    </td>

                    <td>
                        <a href="PesquisaProdutoController" class="paginaSelecionada">Produto</a>
                    </td>

                    <td>
                        <a href="estoque.jsp">Estoque</a>
                    </td>

                    <td>
                        <a href="PesquisaClienteController">Cliente</a>
                    </td>

                    <td>
                        <a href="funcionario.jsp">Funcionário</a>
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
                      <a href="cadastrarProduto.jsp">
                          Cadastrar Produto
                      </a>
                  </td>
              </tr>
          </table>
        </div>

        <form action="ManterProdutoController?acao=prepararOperacao&operacao=Incluir" method="post">
            <input type="submit" name="btnIncluir" value="Incluir">
        </form>
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
            <div id="listaProduto">
              Resultados
              <table>
                <tr>
                  <th>
                  </th>
                </tr>
                 <c:forEach items="${produtos}" var="produto">
                <tr>
                    <td><c:out value="${produto.id}" /></td>
                    <td><c:out value="${produto.nome}" /></td>    
                </tr>
                 </c:forEach>
              </table>
            </div>
          </div>
        </section>
  </body>

</html>
