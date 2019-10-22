<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta content="text/html">
    <link rel="stylesheet" href="style.css">
    <title>Cadastrar cliente - ${operacao}</title>
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
                      <a href="PesquisaClienteController"  class="paginaSelecionada">Cliente</a>
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
                  <a href="PesquisaClienteController">
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
          <form action="ManterClienteController?acao=confirmarOperacao&operacao=Incluir" method="post" name="frmManterCliente">
        <table>
            <form action="ManterClienteController?acao=prepararOperacao&operacao=${operacao}"
          method="post" name="frmCadastrarCliente">
              <tr>
                  <td>Código do cliente</td>
                  <td><input type="text" name="txtCodCliente" value="${cliente.id}" /></td>
              </tr>
              <tr>
                  <td>Nome</td>
                  <td><input type="text" name="txtNomeCliente" value="${cliente.nome}" /></td>
              </tr>
            <tr>
                  <td>CPF</td>
                  <td><input type="text" name="txtCpfCliente" value="${cliente.cpf}" /></td>
              </tr>
              <tr>
                  <td>Estado</td>
                  <td>
                      <select name="optEstado">
                          <option value="Minas Gerais" <c:if test="${cliente.uf}"  selected</c:if>
                          Minas Gerais
                          </option>
                          <option value="Rio de Janeiro" <c:if test="${cliente.uf}"  selected</c:if>
                          Rio de Janeiro
                      </select>
                  </td>
              </tr>
              <tr>
                  <td>Data de Nascimento</td>
                  <td><input type="date" name="txtDataNascimentoCliente" value="${cliente.dataNascimento}" /></td>
              </tr>
              <tr>
                  <td>Sexo</td>
                  <td><input type="radio" name="txtSexoCliente" value="${cliente.sexo}" />M</td>
                  <td><input type="radio" name="txtSexoCliente" value="${cliente.sexo}" />F</td>
              </tr>
              <tr>
                  <td>E-Mail</td>
                  <td><input type="text" name="txtEmailCliente"  maxlength="50" value="${cliente.email}" /></td>
              </tr>
              <tr>
                  <td>CEP</td>
                  <td><input type="number" name="txtCEPCliente" maxlength="9" value="${cliente.cep}" /></td>
              </tr>
              <tr>
                  <td>Logradouro</td>
                  <td><input type="text" name="txtLogradouroCliente" value="${cliente.logradouro}" /></td>
                  <td>Número</td>
                  <td><input type="number" name="txtNumeroCliente" value="${cliente.logradouro}" /></td>
              </tr>
              <tr>
                  <td>Cidade</td>
                  <td><input type="text" name="txtCidadeCliente" value="${cliente.cidade}" /></td>
              </tr>
              <tr>
                  <td>Bairro</td>
                  <td><input type="text" name="txtBairroCliente" value="${cliente.bairro}" /></td>
              </tr>
              <tr>
                  <td>Complemento</td>
                  <td><input type="text" name="txtComplementoCliente" value="${cliente.complemento}" /></td>
              </tr>
              <tr>
                  <td>Telefone</td>
                  <td><input type="number" name="txtTelefoneCliente" value="${cliente.telefone}" /></td>
              </tr>
         <!--     <tr>
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
                <option value="GoiÃ¡s" >GO
                <option value="Rio de Janeiro">RJ
                <option value="SÃ£o Paulo">SP
                <option value="MaranhÃ£o">MA
                <option value="EspÃ­rito Santo">ES
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
                <label for="inumero">NÂº</label>
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
-->
            </table>
          <p><input type="submit" value="Incluir" name="btnIncluir">
                  <input type="submit" value="Limpar"></p>
        </form>
      </div>
    </body>
</html>
