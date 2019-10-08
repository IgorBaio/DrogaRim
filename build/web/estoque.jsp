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
                        <a href="PesquisaProdutoController">Produto</a>
                    </td>

                    <td>
                        <a href="estoque.jsp" class="paginaSelecionada">Estoque</a>
                    </td>

                    <td>
                        <a href="cliente.jsp">Cliente</a>
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
                      <a href="estoque.jsp" class="paginaSelecionada">
                          Estoque
                      </a>
                  </td>

                  <td>
                      <a href="cadastrarEstoque.jsp">
                          Incluir Produto
                      </a>
                  </td>
              </tr>
          </table>
        </div>

        <form action="ManterEstoqueController?acao=prepararOperacao&operacao=Incluir" method="post">
            <input type="submit" name="btnIncluir" value="Incluir">
        </form>
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
            <div id="listaEstoque">
              Resultados
              <table>
                <tr>
                  <td>
                  </td>
                </tr>
              </table>
            </div>
          </div>
        </section>
  </body>

</html>
