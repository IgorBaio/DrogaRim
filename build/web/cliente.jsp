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
    <title>Cadastrar produto</title>
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
                    <a href="PesquisaProdutoController">Produto</a>
                </td>

                <td>
                    <a href="estoque.jsp">Estoque</a>
                </td>

                <td>
                    <a href="cliente.jsp" class="paginaSelecionada">Cliente</a>
                </td>

                <td>
                    <a href="funcionario.jsp">FuncionÃ¡rio</a>
                </td>

                <td>
                    <a href="fabricante.jsp">Fabricante</a>
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
                  <a href="cliente.jsp" class="paginaSelecionada">
                      Clientes
                  </a>
              </td>

              <td>
                  <a href="cadastrarCliente.jsp">
                      Cadastrar Cliente
                  </a>
              </td>
          </tr>
      </table>
    </div>
    
    <form action="ManterClienteController?acao=prepararOperacao&operaca=Incluir"
          method="post">
          <input type="submit" name="btnIncluir" value="Incluir"
    </form>

    <section>
      <div id="secaoCliente">
        <div id="buscaCliente">
          <input type="text" id="textoBusca" placeholder="Pesquisar"/>
          <button id="botaoBusca">Buscar</button>
          <hr>
        </div>
        <div id="filtroCliente">
          Filtros
        </div>
        <div id="listaCliente">
          Resultados
          <table>
             <c:forEach items="${clientes}" var="cliente">
                <tr>
                    <td><c:out value="${cliente.id}" /></td>
                    <td><c:out value="${cliente.nome}" /></td>    
                </tr>
                 </c:forEach>
          </table>
        </div>
      </div>
    </section>
  </body>
</html>
