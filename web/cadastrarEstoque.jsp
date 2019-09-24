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
                        <a href="produto.jsp">Produto</a>
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
                      <a href="estoque.jsp">
                          Estoque
                      </a>
                  </td>

                  <td>
                      <a href="cadastrarEstoque.jsp" class="paginaSelecionada">
                          Incluir Produto
                      </a>
                  </td>
              </tr>
          </table>
        </div>

  <section>
    <div id="cadastrarEstoque">
      <form>
          <table>
              <tr>
                  <input type="radio" name="produto" id='produto' value="ProdutoSimples" />Produtos Simples
                  <input type="radio" name="produto" id='produto' value="Medicamento" />Medicamentos
              </tr>
              <tr>
                  <td>
                      <label for="nomeComercial">Nome Comercial:</label>
                  </td>
                  <td>
                      <input type="text" name="nomeComercial" id="nomeComercial" />
                  </td>
              </tr>
              <tr>
                  <td>
                      <label for="principioAtivo">Nome Genérico/Princípio Ativo</label>
                  </td>
                  <td>
                      <input type="text" name="principioAtivo" id="principioAtivo" />
                  </td>
              </tr>
              <tr>
                  <td>
                      <label for="fabricante">Fabricante:</label>
                  </td>
                  <td>
                      <input type="text" name="fabricante" id="fabricante" />
                  </td>
              </tr>
              <tr>
                  <td>
                      <label for="tipoMedicamento">Tipo de Medicamento:</label>
                  </td>
                  <td>
                      <input type="text" name="tipoMedicamento" id="tipoMedicamento" />
                  </td>
              </tr>
              <tr>
                  <td>
                      <label for="quantidade">Quantidade:</label>
                  </td>
                  <td>
                      <input type="text" name="quantidade" id="quantidade" />
                  </td>
              </tr>
              <tr>
                  <td>
                      <label for="formulacao">Formulação</label>
                  </td>
                  <td>
                      <input type="text" name="formulacao" id="formulacao" />
                  </td>
              </tr>
              <tr>
                  <td>
                      <label for="registroMinisterioSaude">Registro Ministério da Saúde:</label>
                  </td>
                  <td>
                      <input type="text" name="registroMinisterioSaude" id="registroMinisterioSaude" />
                  </td>
              </tr>
              <tr>
                  <td>
                      <label for="categoria">Categoria:</label>
                  </td>
                  <td>
                      <input type="text" name="categoria" id="categoria" />
                  </td>
              </tr>
              <tr>
                  <td>
                      <label for="receita">Receita:</label>
                  </td>
                  <td>
                      <select name="receita" id="receita">
                          <option value="Nenhuma" selected>Nenhuma
                          <option value="Retida">Retida
                          <option value="Azul">Azul
                      </select>
                  </td>
              </tr>
              <tr>
                  <td>
                      <label for="observacao">Observação:</label>
                  </td>
                  <td>
                      <input type="text" name="observacao" id="observacao" />
                  </td>
              </tr>
          </table>
          <p>
              <input type="submit" value="Confirmar"><input type="reset" value="Retornar">
          </p>
      </form>
    </section>
  </body>
</html>
