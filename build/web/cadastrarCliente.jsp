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
                    <a href="produto.jsp">Produto</a>
                </td>

                <td>
                    <a href="estoque.jsp">Estoque</a>
                </td>

                <td>
                    <a href="cliente.jsp" class="paginaSelecionada">Cliente</a>
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
                  <a href="Cliente.jsp">
                      Cliente
                  </a>
              </td>

              <td>
                  <a href="cadastrarCliente.jsp" class="paginaSelecionada">
                      Cadastrar Cliente
                  </a>
              </td>
          </tr>
      </table>
    </div>

    <section>
      <div id="cadastrarProduto">
        <form method="" action="">
          <table>
            <tr>
              <td>
                <label for="iNome">Nome Completo</label>
              </td>
              <td>
                <input type="text" name="tNome" id="iNome" align="right" size=""/>
              </td>
            </tr>

            <tr>
              <td>
                <label for="iCPF">CPF</label>
              </td>
              <td>
                <input type="number" name="tCPF" id="iCPF" maxlength="9"/>
              </td>
            </tr>
            <tr>
              <td>
                <label for='iDataNascimento'>Data Nascimento</label>
              </td>
              <td>
                <input type='date' id='iDataNascimento' name='tDataNascimento'>
              </td>
              <td>
                <label for='iSexo'>Sexo</label>
              </td>
              <td>
                <input type="radio" name="tSexo" id='iSexo' value="Masculino"/>M
                <input type="radio" name="tSexo" id='iSexo' value="Feminimo"/>F
              </td>
            </tr>
            <tr>
              <td>
                <label for="iEmail">E-mail</label>
              </td>
              <td>
                <input type="email" name="tEmail" id="iEmail" maxlength="50"/>
              </td>
            </tr>
            <tr>
              <td>
                <label for="iCEP">CEP</label>
              </td>
              <td>
                <input type="number" name="tCEP" id="iCEP" max="9" maxlength="9"/>
              </td>
              <td>
                <label for="iEstado">Estado</label>
              </td>
              <td>
                <select name="iEstado">
                <option value="Minas Gerais" selected>MG
                <option value="Goiás" >GO
                <option value="Rio de Janeiro">RJ
                <option value="São Paulo">SP
                <option value="Maranhão">MA
                <option value="Espírito Santo">ES
                </select>
              </td>
            </tr>
            <tr>
              <td>
                <label for="iLogradouro">Logradouro</label>
              </td>
              <td>
                <input type="text" name="tlogradouro" id="ilogradouro" maxlength="50"/>
              </td>
              <td>
                <label for="inumero">Nº</label>
              </td>
              <td>
                <input type="number" name="tnumero" id="inumero" max="4"/>
              </td>
            </tr>
            <tr>
              <td>
                <label for="iLogradouro">Bairro</label>
              </td>
              <td>
                <input type="text" name="tlogradouro" id="ilogradouro" maxlength="50"/></td>
            </tr>
            <tr>
              <td>
                <label for="iLogradouro">Cidade</label>
              </td>
              <td>
                <input type="text" name="tlogradouro" id="ilogradouro" maxlength="50"/></td>
            </tr>
            <tr>
              <td>
                <label for="iLogradouro">Complemento</label>
              </td>
              <td>
                <input type="text" name="tlogradouro" id="ilogradouro" maxlength="50"/></td>
            </tr>
            <tr>
              <td>
                <label for="iTelefone">Telefone</label>
              </td>
              <td>
                <input type="number" id="iTelefone" name="tTelefone" max="20"/>
              </td>

            </table>
          <p><input type="reset" value="Cancelar"><input type="submit" value="Cadastrar"></p>
        </form>
      </div>
    </body>
</html>
