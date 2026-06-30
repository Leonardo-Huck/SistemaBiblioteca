<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>

<!DOCTYPE html>
<html lang="pt-br">

<head>
    <meta charset="UTF-8">

    <meta name="viewport"
          content="width=device-width, initial-scale=1.0">

    <title>Sistema Biblioteca - Dashboard</title>

    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/style.css">

    <link rel="stylesheet"
          href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">

    <script src="${pageContext.request.contextPath}/app.js"></script>

</head>

<body>

<aside class="sidebar">

    <div class="logo">
        <i class="fa-solid fa-book-open-reader"></i>
        <span>Sistema Biblioteca</span>
    </div>

    <nav>

        <a href="${pageContext.request.contextPath}/dashboard"
           class="active">

            <i class="fa-solid fa-gauge-high"></i>
            Dashboard

        </a>

        <a href="${pageContext.request.contextPath}/cadastro-livro.jsp">

            <i class="fa-solid fa-circle-plus"></i>
            Cadastrar Livro

        </a>

        <a href="${pageContext.request.contextPath}/listar">

            <i class="fa-solid fa-list"></i>
            Listar Livros

        </a>

    </nav>

</aside>

<div class="main">

    <header class="topbar">

        <div style="display:flex;align-items:center;gap:12px">

            <button
                    class="menu-toggle"
                    onclick="toggleMenu()">

                <i class="fa-solid fa-bars"></i>

            </button>

            <h2>Dashboard</h2>

        </div>

        <div class="user">

            <span>Bem-vindo(a), Funcionário</span>

            <div class="avatar">F</div>

        </div>

    </header>

    <div class="content">

        <div class="cards">

            <div class="card">

                <div class="icon">
                    <i class="fa-solid fa-book"></i>
                </div>

                <div class="info">

                    <small>Total de Livros</small>

                    <h3>
                        ${empty totalLivros ? 0 : totalLivros}
                    </h3>

                </div>

            </div>

            <div
                    class="card"
                    style="border-left-color:#16a34a">

                <div
                        class="icon"
                        style="background:#dcfce7;color:#16a34a">

                    <i class="fa-solid fa-circle-check"></i>

                </div>

                <div class="info">

                    <small>Livros Disponíveis</small>

                    <h3>
                        ${empty livrosDisponiveis ? 0 : livrosDisponiveis}
                    </h3>

                </div>

            </div>

            <div
                    class="card"
                    style="border-left-color:#f59e0b">

                <div
                        class="icon"
                        style="background:#fef3c7;color:#f59e0b">

                    <i class="fa-solid fa-plus"></i>

                </div>

                <div class="info">

                    <small>Cadastrados</small>

                    <h3>
                        ${empty livrosNovos ? 0 : livrosNovos}
                    </h3>

                </div>

            </div>

            <div
                    class="card"
                    style="border-left-color:#8b5cf6">

                <div
                        class="icon"
                        style="background:#ede9fe;color:#8b5cf6">

                    <i class="fa-solid fa-layer-group"></i>

                </div>

                <div class="info">

                    <small>Categorias</small>

                    <h3>
                        ${empty totalCategorias ? 0 : totalCategorias}
                    </h3>

                </div>

            </div>

        </div>

        <div class="panel">

            <div class="panel-header">

                <h3>

                    <i
                            class="fa-solid fa-bolt"
                            style="color:#3a86ff">

                    </i>

                    Últimos Livros Adicionados

                </h3>

                <a
                        href="${pageContext.request.contextPath}/listar"
                        class="btn btn-ghost">

                    <i class="fa-solid fa-arrow-right"></i>

                    Ver todos

                </a>

            </div>

            <div class="table-wrap">

                <table>

                    <thead>

                    <tr>

                        <th>#</th>
                        <th>Título</th>
                        <th>Autor</th>
                        <th>Categoria</th>
                        <th>Quantidade</th>

                    </tr>

                    </thead>

                    <tbody>

                    <c:choose>

                        <c:when test="${not empty livros}">

                            <c:forEach
                                    items="${livros}"
                                    var="livro"
                                    varStatus="loop"
                                    end="9">

                                <tr>

                                    <td>

                                        #${loop.index + 1}

                                    </td>

                                    <td>

                                        <strong>

                                                ${livro.titulo}

                                        </strong>

                                    </td>

                                    <td>

                                            ${livro.autor}

                                    </td>

                                    <td>

<span class="badge">

        ${livro.categoria}

</span>

                                    </td>

                                    <td>

                                            ${livro.quantidade}

                                    </td>

                                </tr>

                            </c:forEach>

                        </c:when>

                        <c:otherwise>

                            <tr>

                                <td colspan="5"
                                    style="text-align:center">

                                    Nenhum livro cadastrado.

                                </td>

                            </tr>

                        </c:otherwise>

                    </c:choose>

                    </tbody>

                </table>

            </div>

        </div>

    </div>

</div>

<script src="${pageContext.request.contextPath}/app.js"></script>

</body>

</html>