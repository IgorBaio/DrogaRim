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
                        <a href="PesquisaVendaController" class="paginaSelecionada">Venda</a>
                    </td>

                    <td>
                        <a href="PesquisaProdutoController">Produto</a>
                    </td>

                    <td>
                        <a href="estoque.jsp">Estoque</a>
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
                      <a href="index.jsp" class="paginaSelecionada">
                          Vendas
                      </a>
                  </td>

                  <td>
                      <a href="cadastrarVenda.jsp">
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
            <div id="listaVenda">
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
