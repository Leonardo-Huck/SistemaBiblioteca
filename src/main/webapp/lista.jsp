<%@ page contentType="text/html;charset=UTF-8" %>

<%@ taglib
        uri="jakarta.tags.core"
        prefix="c"
%>

<html>

<head>

  <title>

    Lista de Livros

  </title>

</head>

<body>

<h1>

  Livros Cadastrados

</h1>

<table
        border="1">

  <tr>

    <th>

      Título

    </th>

    <th>

      Autor

    </th>

    <th>

      Ano

    </th>

    <th>

      ISBN

    </th>

    <th>

      Ação

    </th>

  </tr>

  <c:forEach

          items="${livros}"

          var="livro">

    <tr>

      <td>

          ${livro.titulo}

      </td>

      <td>

          ${livro.autor}

      </td>

      <td>

          ${livro.ano}

      </td>

      <td>

          ${livro.isbn}

      </td>

      <td>

        <a
                href="excluir?isbn=${livro.isbn}">

          Excluir

        </a>

      </td>

    </tr>

  </c:forEach>

</table>

<br>

<a
        href="cadastro.jsp">

  Novo Cadastro

</a>

</body>

</html>