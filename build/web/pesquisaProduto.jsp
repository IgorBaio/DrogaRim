<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <header>
       <table>
                <tr>
                    <th>
                        Código Produto
                    </th>
                    <th>
                        Nome Produto
                    </th>
                </tr>
                <c:forEach items="${produtos}" var="produto">
                <tr>
                    <td><c:out value="${produto.id}" /></td>
                    <td><c:out value="${produto.nome}" /></td>    
                </tr>
                 </c:forEach>
            
       </table>

        </header>
    </body>
</html>