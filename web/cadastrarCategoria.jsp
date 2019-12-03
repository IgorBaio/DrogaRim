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
        <title>Cadastrar produto - ${operacao} - ${produto.idProduto}</title>
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
                            <a href="PesquisaProdutoController"  class="paginaSelecionada">Produto</a>
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
            <hr id="hr2">
        </header>

        <div class="subnav">
            <table>
                <tr>
                    <td>
                        <a href="PesquisaProdutoController">
                            Produtos
                        </a>
                    </td>

                    <td>
                        <a href="ManterProdutoController?acao=prepararOperacao&operacao=Incluir">
                            Cadastrar Produto
                        </a>
                    </td>

                    <td>
                        <a href="PesquisaCategoriaController">
                            Categorias
                        </a>
                    </td>

                    <td>
                        <a href="ManterCategoriaController?acao=prepararOperacao&operacao=Incluir" class="paginaSelecionada">
                            Cadastrar Categoria
                        </a>
                    </td>
                </tr>
            </table>
        </div>

        <section>
            <div id="cadastrarCategoria">
                <form action="ManterCategoriaController?acao=confirmarOperacao&operacao=${operacao}" method="post" name="frmManterCategoria" onsubmit="return validarFormulario(this)">
                    <table>
                        <tr>
                            <td>Código categoria</td>
                            <td><input type="number" name="txtCodCategoria" id="idCategoria" value="${categoria.idCategoria}" /></td>
                        </tr>
                        <tr>
                            <td>Nome</td>
                            <td><input type="text" name="txtNomeCategoria" value="${categoria.nome}"  <c:if test="${operacao == 'Excluir'}"> readonly</c:if>/></td>
                        </tr>
                    </table>
                    <p><input type="submit" value="Incluir" name="btnIncluir">
                        <input type="submit" value="Limpar">
                        <input type="submit" value="Excluir">
                        <input type="submit" value="Alterar" name="btnAlterar"></p>
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
                        if (form.txtCodCategoria.value == "") {
                            mensagem = mensagem + "Informe o Código da Categoria\n";
                        }
                        if (form.txtNomeCategoria.value == "") {
                            mensagem = mensagem + "Informe o Nome da Categoria\n";
                        }
                         if (!campoNumerico(form.txtCodCategoria.value)){
                            mensagem = mensagem + "Código da Categoria deve ser numérico\n";
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
