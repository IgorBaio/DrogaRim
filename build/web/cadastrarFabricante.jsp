<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta content="text/html">
    <link rel="stylesheet" href="style.css">
    <title>Cadastrar fabricante - ${operacao}</title>
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
                      <a href="PesquisaEstoqueController">Estoque</a>
                  </td>

                  <td>
                      <a href="PesquisaClienteController">Cliente</a>
                  </td>

                  <td>
                      <a href="PesquisaFuncionarioController">Funcion�rio</a>
                  </td>

                  <td>
                      <a href="PesquisaFabricanteController"  class="paginaSelecionada">Fabricante</a>
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
                  <a href="fabricante.jsp">
                      Fabricante
                  </a>
              </td>
              <td>
                  <a href="cadastrarFabricante.jsp" class="paginaSelecionada">
                      Cadastrar Fabricante
                  </a>
              </td>
          </tr>
      </table>
    </div>

    <section>
      <div id="cadastrarFabricante">
        <form method="" action="">
          <table>
            <tr>
              <td>
                <label for="iNome">Nome do fabricante</label>
              </td>
              <td>
                <input type="text" name="tNome" id="iNome" align="right" size=""/>
              </td>
            </tr>
            <tr>
              <td>
                <label for="iTelefone">Telefone</label>
              </td>
              <td>
                <input type="number" id="iTelefone" name="tTelefone" max="20"/>
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
          </table>
          <p><input type="reset" value="Cancelar"><input type="submit" value="Cadastrar"></p>
        </form>
      </div>
    </body>
</html>
