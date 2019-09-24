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
                      <a href="produto.jsp">Produto</a>
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
                    <a href="funcionario.jsp">
                        Funcionários
                    </a>
                </td>

                <td>
                    <a href="cadastrarFuncionario.jsp" class="paginaSelecionada">
                        Cadastrar Funcionário
                    </a>
                </td>
            </tr>
        </table>

      </div>

      <section>
        <div id="cadastrarFuncionario">
          <form>
              <table>
                  <tr>
                      <td>
                          <select>
                              <option value="funcao">Função</option>
                          </select>
                      </td>
                      <td>
                          <select>
                              <option value="situacao">Situação</option>
                          </select>
                      </td>
                  </tr>
          <tr>
              <td>
                  <label for="nome">Nome </label>
              </td>
              <td>
                  <input type="text" id="nomeFuncionario">
              </td>
          </tr>
          <tr>
              <td>
                  <label for="cpf">CPF </label>
              </td>
              <td>
                  <input type="text" id="cpfFuncionario">
              </td>
          </tr>
          <tr>
              <td>
                  <label for="dataNascimento">Data de Nascimento</label>
              </td>
              <td>
                  <input type="date" value="data" id="data">
              </td>
          </tr>
          <tr>
              <td>
                  <label for="sexo">Sexo </label>
              </td>
              <td>
                  <select>
                      <option value="F">Feminino</option>
                      <option values="M">Masculino</option>
                  </select>
              </td>
          </tr>
          <tr>
              <td>
                  <label for="email">Email </label>
              </td>
              <td>
                  <input type="text" id="email">
              </td>
          </tr>
          <tr>
              <td>
                  <label for="telefone">Telefone</label>
              </td>
              <td>
                  <input type="text" id="telefone">
              </td>
          </tr>
          <tr>
              <td>
                  <label for="cpf">CPF </label>
              </td>
              <td>
                  <input type="text" id="cfp">
              </td>
          </tr>
          <tr>
              <td>
                  <label for="complemento">Complemento </label>
              </td>
              <td>
                  <input type="text" id="complemento">
              </td>
          </tr>
          <tr>
              <td>
                  <label for="logradouro">Logradouro</label>
              </td>
              <td>
                  <input type="text" id="logradouro">
              </td>
          </tr>
          <tr>
              <td>
                  <label for="numeto">Número</label>
              </td>
              <td>
                  <input type="number" id="numero">
              </td>
          </tr>
          <tr>
              <td>
                  <label for="bairro">Bairro</label>
              </td>
              <td>
                  <input type="text" id="bairro">
              </td>
          </tr>
          <tr>
              <td>
                  <label for="cidade">Cidade</label>
              </td>
              <td>
                  <input type="text" id="cidade">
              </td>
          </tr>
          <tr>
              <td>
                  <label for="uf">UF</label>
              </td>
              <td>
                  <input type="text" id="uf">
              </td>
          </tr>
          <tr>
              <td>
                  <label for="login">Login</label>
              </td>
              <td>
                  <input type="text" id="login">
              </td>
          </tr>

         <tr>
              <td>
                  <label for="senha">Senha</label>
              </td>
              <td>
                  <input type="password" id="senha">
              </td>
          </tr>
          </table>
          <input type="submit" value="confrimar">
          <input type="submit" value="Limpar">
          </form>
        </div>
      </section>
    </body>
</html>
