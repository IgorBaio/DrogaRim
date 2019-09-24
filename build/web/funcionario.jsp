<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta content="text/html">
    <link rel="stylesheet" href="style.css">
    <title>Cadastrar funcionário</title>
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
                      <a href="cliente.jsp">Cliente</a>
                  </td>

                  <td>
                      <a href="funcionario.jsp" class="paginaSelecionada">Funcionário</a>
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
                    <a href="funcionario.jsp" class="paginaSelecionada">
                        Funcionários
                    </a>
                </td>

                <td>
                    <a href="cadastrarFuncionario.jsp">
                        Cadastrar Funcionário
                    </a>
                </td>
            </tr>
        </table>

      </div>

      <section>
        <div id="secaoFuncionario">
          <div id="buscaFuncionario">
            <input type="text" id="textoBusca" placeholder="Pesquisar"/>
            <button id="botaoBusca">Buscar</button>
            <hr>
          </div>
          <div id="filtroFuncionario">
            Filtros
          </div>
          <div id="listaFuncionario">
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
