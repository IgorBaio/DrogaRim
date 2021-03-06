<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta content="text/html">
        <link rel="stylesheet" href="style.css">
        <title>Cadastrar funcionário - ${operacao}</title>
    </head>
    <body>
        <header>
            <a class="barralogo"  href=index.jsp><img src=logoDrogarim.png alt=Drogarim width="25%"/></a>
            <span class="usuario">Vendedor</span>
            <nav>
                <hr>
                <table>
                    <tr>
                        <td>
                            <a href="PesquisaVendaController">Venda</a>
                        </td>

                        <td>
                            <a href="PesquisaProdutoController">Produto</a>
                        </td>

                        <td>
                            <a href="PesquisaClienteController">Cliente</a>
                        </td>

                        <td>
                            <a href="PesquisaFuncionarioController"  class="paginaSelecionada">Funcionário</a>
                        </td>

                        <td>
                            <a href="PesquisaFabricanteController">Fabricante</a>
                        </td>
                    </tr>
                </table>
            </nav>
            <hr id="hr2">
        </header>

        <div class="subnav">
            <table>
                <tr>
                    <td>
                        <a href="PesquisaFuncionarioController">
                            Funcionários
                        </a>
                    </td>
                    <td>
                        <a href="ManterFuncionarioController?acao=prepararOperacao&operacao=Incluir" class="paginaSelecionada">
                            Cadastrar Funcionário
                        </a>
                    </td>
                </tr>
            </table>

        </div>

        <section>
            <div id="cadastrarFuncionario">
                <form action="ManterFuncionarioController?acao=confirmarOperacao&operacao=${operacao}" method="post" name="frmManterFuncionario" onsubmit="return validarFormulario(this)">
                    <table>

                        <!--<tr>
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
                        </tr>-->
                            <tr>
                                <td <c:if test="${operacao == 'Incluir'}"> style="display: none;"</c:if>>Código do funcionário</td>
                                <td><input name="txtCodFuncionario" <c:if test="${operacao == 'Incluir'}"> value='0' type='hidden'</c:if> <c:if test="${operacao != 'Incluir'}"> type="number"  value="${funcionario.idFuncionario}"</c:if> readonly/></td>
                            </tr>
                            <tr>
                                <td>Login</td>
                                <td><input type="text" name="txtLoginFuncionario" value="${funcionario.login}"  <c:if test="${operacao == 'Excluir'}"> readonly</c:if>/></td>
                            </tr>
                            <tr>
                                <td>Senha</td>
                                <td><input type="text" name="txtSenhaFuncionario" value="${funcionario.senha}"  <c:if test="${operacao == 'Excluir'}"> readonly</c:if>/></td>
                            </tr>
                            <tr>
                                <td>Função</td>
                                <td><input type="text" name="txtFuncaoFuncionario" value="${funcionario.funcao}"  <c:if test="${operacao == 'Excluir'}"> readonly</c:if>/></td>
                            </tr>
                        </table>
                        <p><input type="submit" value="${operacao}" name="btnConfirmar"></p>
                </form>
                <SCRIPT language="JavaScript">


                    function campoNumerico(valor)
                    {
                        var caracteresValidos = "0123456789.-";
                        var ehNumero = true;
                        var umCaracter;
                        for (i = 0; i < valor.length && ehNumero == true; i++)
                        {
                            umCaracter = valor.charAt(i);
                            if (caracteresValidos.indexOf(umCaracter) == -1)
                            {
                                ehNumero = false;
                            }
                        }
                        return ehNumero;
                    }

                    function validarFormulario(form) {
                        var mensagem;
                        mensagem = "";
                        if (form.txtLoginFuncionario.value == "") {
                            mensagem = mensagem + "Informe o Nome do Funcionário\n";
                        }
                        if (form.txtSenhaFuncionario.value == "") {
                            mensagem = mensagem + "Informe a Senha do Funcionário\n";
                        }
                        if (form.txtFuncaoFuncionario.value == "") {
                            mensagem = mensagem + "Informe a Função do Funcionário\n";
                        }
                        if (!campoNumerico(form.txtCodFuncionario.value)){
                            mensagem = mensagem + "Código do Funcionário deve ser numérico\n";
                        }   
                        
                        if (!campoNumerico(form.txtSenhaFuncionario.value)){
                            mensagem = mensagem + "Senha do Funcionário deve ser numérico\n";
                        }   
                       
                        
                        if (mensagem == "") {
                            return true;
                        } else {
                            alert(mensagem);
                            return false;
                        }
                    }

                </SCRIPT>   
                
            </div>
        </section>
    </body>
</html>
