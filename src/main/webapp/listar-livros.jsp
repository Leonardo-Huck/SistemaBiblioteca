<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>

<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Sistema Biblioteca - Listar Livros</title>

    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/style.css">

    <link rel="stylesheet"
          href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">
</head>

<body>

<aside class="sidebar">

    <div class="logo">
        <i class="fa-solid fa-book-open-reader"></i>
        <span>Sistema Biblioteca</span>
    </div>

    <nav>
        <a href="${pageContext.request.contextPath}/dashboard">
            <i class="fa-solid fa-gauge-high"></i>
            Dashboard
        </a>

        <a href="${pageContext.request.contextPath}/cadastro-livro.jsp">
            <i class="fa-solid fa-circle-plus"></i>
            Cadastrar Livro
        </a>

        <a href="${pageContext.request.contextPath}/listar"
           class="active">
            <i class="fa-solid fa-list"></i>
            Listar Livros
        </a>
    </nav>

</aside>

<div class="main">

    <header class="topbar">

        <div style="display:flex;gap:10px;align-items:center">
            <button class="menu-toggle"
                    onclick="toggleMenu()">

                <i class="fa-solid fa-bars"></i>

            </button>

            <h2>Listagem de Livros</h2>

        </div>

    </header>

    <div class="content">

        <div class="panel">

            <div class="panel-header">

                <h3>Acervo</h3>

                <a
                        href="${pageContext.request.contextPath}/cadastro-livro.jsp"
                        class="btn btn-primary">

                    Novo Livro

                </a>

            </div>

            <div class="table-wrap">

                <table>

                    <thead>

                    <tr>
                        <th>Título</th>
                        <th>Autor</th>
                        <th>Categoria</th>
                        <th>Quantidade</th>
                        <th style="text-align: center;">Ações</th>
                    </tr>

                    </thead>

                    <tbody id="tbodyLivros">

                    <c:forEach items="${livros}" var="livro">

                        <tr class="row-livro">

                            <td>${livro.titulo}</td>

                            <td>${livro.autor}</td>

                            <td>

                <span class="badge">
                        ${livro.categoria}
                </span>

                            </td>

                            <td>
                                    ${livro.quantidade}
                            </td>

                            <td style="text-align: center;">
                                <a href="${pageContext.request.contextPath}/excluir?isbn=${livro.isbn}"
                                   class="btn-deletar"
                                   style="color: #ef4444; text-decoration: none; font-size: 1.1rem;"
                                   onclick="return confirm('Tem certeza que deseja excluir o livro &quot;${livro.titulo}&quot;?')">
                                    <i class="fa-solid fa-trash-can"></i>
                                </a>
                            </td>

                        </tr>

                    </c:forEach>

                    </tbody>

                </table>

            </div>

        </div>

    </div>

</div>

<script
        src="${pageContext.request.contextPath}/app.js">
</script>

</body>
</html>