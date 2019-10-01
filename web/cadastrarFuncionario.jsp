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
                  <td>C�digo do cliente</td>
                  <td><input type="text" name="txtCodFuncionario" value="${cliente.id}" /></td>
              </tr>
              <tr>
                  <td>Nome</td>
                  <td><input type="text" name="txtNomeFuncionario" value="${cliente.nome}" /></td>
              </tr>
            <tr>
                  <td>CPF</td>
                  <td><input type="text" name="txtCodFuncionario" value="${cliente.cpf}" /></td>
              </tr>
              <tr>
                  <td>Estado</td>
                  <td>
                      <select name="optEstado">
                          <option value="Minas Gerais" <c:if test="${cliente.endereco.uf}"  selected</c:if>
                          Minas Gerais
                          </option>
                          <option value="Rio de Janeiro" <c:if test="${cliente.endereco.uf}"  selected</c:if>
                          Rio de Janeiro
                      </select>
                  </td>
              </tr>
              <tr>
                  <td>Data de Nascimento</td>
                  <td><input type="date" name="txtDataNascimentoFuncionario" value="${cliente.dataNascimento}" /></td>
              </tr>
              <tr>
                  <td>Sexo</td>
                  <td><input type="radio" name="txtSexoFuncionario" value="${cliente.sexo}" />M</td>
                  <td><input type="radio" name="txtSexoFuncionario" value="${cliente.sexo}" />F</td>
              </tr>
              <tr>
                  <td>E-Mail</td>
                  <td><input type="text" name="txtEmailFuncionario"  maxlength="50" value="${cliente.email}" /></td>
              </tr>
              <tr>
                  <td>CEP</td>
                  <td><input type="number" name="txtCEPFuncionario" maxlength="9" value="${cliente.endereco.cep}" /></td>
              </tr>
              <tr>
                  <td>Logradouro</td>
                  <td><input type="text" name="txtLogradouroFuncionario" value="${cliente.endereco.logradouro}" /></td>
                  <td>N�mero</td>
                  <td><input type="number" name="txtNumeroFuncionario" value="${cliente.endereco.logradouro}" /></td>
              </tr>
              <tr>
                  <td>Cidade</td>
                  <td><input type="text" name="txtCidadeFuncionario" value="${cliente.endereco.cidade}" /></td>
              </tr>
              <tr>
                  <td>Bairro</td>
                  <td><input type="text" name="txtBairroFuncionario" value="${cliente.endereco.bairro}" /></td>
              </tr>
              <tr>
                  <td>Complemento</td>
                  <td><input type="text" name="txtComplementoFuncionario" value="${cliente.endereco.complemento}" /></td>
              </tr>
              <tr>
                  <td>Telefone</td>
                  <td><input type="number" name="txtTelefoneFuncionario" value="${cliente.telefone}" /></td>
              </tr>
          <!--<tr>
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
         -->
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
