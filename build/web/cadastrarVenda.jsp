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
                        <a href="index.jsp" class="paginaSelecionada">Venda</a>
                    </td>

                    <td>
                        <a href="produto.jsp">Produto</a>
                    </td>

                    <td>
                        <a href="estoque.jsp">Estoque</a>
                    </td>

                    <td>
                        <a href="cliente.jsp">Cliente</a>
                    </td>

                    <td>
                        <a href="funcionario.jsp">Funcionário</a>
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
                      <a href="index.jsp">
                          Vendas
                      </a>
                  </td>

                  <td>
                      <a href="cadastrarVenda.jsp"  class="paginaSelecionada">
                          Nova venda
                      </a>
                  </td>
              </tr>
          </table>
        </div>

        <section>
          <div id="secaoVenda">
            <div id="buscaProduto">
              <input type="text" id="textoBusca" placeholder="Pesquisar"/>
              <button id="botaoBusca">Buscar</button>
              <hr>
            </div>
            <div id="filtroEstoque">
              Filtros
            </div>
            <div id="listaProdutoVenda">
              Resultados
              <table>
                <tr>
                  <td>
                  </td>
                </tr>
              </table>
            </div>
            <div id="abaCarrinho">
              Carrinho
            </div>
          </div>
        </section>
  </body>
