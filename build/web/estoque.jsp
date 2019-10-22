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
          <hr>
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
                  <td>
                  </td>
                </tr>
              </table>
            </div>
          </div>
        </section>
  </body>

</html>
