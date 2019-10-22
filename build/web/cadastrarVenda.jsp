<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta content="text/html">
    <link rel="stylesheet" href="style.css">

    <title>Cadastrar venda - ${operacao}</title>
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
                      <a href="PesquisaVendaController"  class="paginaSelecionada">Venda</a>
                  </td>

                  <td>
                      <a href="PesquisaProdutoController">Produto</a>
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
                      <a href="index.jsp">
                          Vendas
                      </a>
                  </td>

                  <td>
                      <a href="ManterVendaController?acao=prepararOperacao&operacao=Incluir"  class="paginaSelecionada">
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
