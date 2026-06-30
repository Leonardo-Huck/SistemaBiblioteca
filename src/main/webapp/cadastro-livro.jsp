<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>

<!DOCTYPE html>
<html lang="pt-br">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">

  <title>Sistema Biblioteca - Cadastrar Livro</title>

  <link rel="stylesheet"
        href="${pageContext.request.contextPath}/style.css">

  <link rel="stylesheet"
        href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">

  <script src="${pageContext.request.contextPath}/app.js"></script>
</head>

<body>

<aside class="sidebar" id="sidebar">

  <div class="logo">
    <i class="fa-solid fa-book-open-reader"></i>
    <span>Sistema Biblioteca</span>
  </div>

  <nav>

    <a href="${pageContext.request.contextPath}/dashboard">
      <i class="fa-solid fa-gauge-high"></i>
      Dashboard
    </a>

    <a href="${pageContext.request.contextPath}/cadastro-livro.jsp"
       class="active">
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

      <button class="menu-toggle"
              onclick="toggleMenu()">

        <i class="fa-solid fa-bars"></i>

      </button>

      <h2>Cadastrar Livro</h2>

    </div>

    <div class="user">

      <span>Bem-vindo(a), Funcionário</span>

      <div class="avatar">
        F
      </div>

    </div>

  </header>

  <div class="content">

    <div class="form-container">

      <h3>
        <i class="fa-solid fa-book"></i>
        Novo Livro
      </h3>

      <p class="subtitle">
        Preencha os dados abaixo para adicionar um livro ao acervo.
      </p>

      <c:if test="${not empty erro}">

        <div class="toast error"
             style="position:static;margin-bottom:16px">

          <i class="fa-solid fa-circle-xmark"></i>

          <span class="msg">
              ${erro}
          </span>

        </div>

      </c:if>

      <form
              id="formCadastro"
              action="${pageContext.request.contextPath}/cadastrar"
              method="post">

        <div class="form-grid">

          <div class="form-group full">

            <label>
              Título do Livro <span>*</span>
            </label>

            <input
                    type="text"
                    name="titulo"
                    required>

          </div>

          <div class="form-group">

            <label>
              Autor <span>*</span>
            </label>

            <input
                    type="text"
                    name="autor"
                    required>

          </div>

          <div class="form-group">

            <label>
              Ano <span>*</span>
            </label>

            <input
                    type="number"
                    name="ano"
                    required>

          </div>

          <div class="form-group">

            <label>
              ISBN <span>*</span>
            </label>

            <input
                    type="text"
                    name="isbn"
                    required>

          </div>

          <div class="form-group">

            <label>
              Categoria
            </label>

            <select name="categoria">

              <option>Literatura</option>
              <option>Tecnologia</option>
              <option>Ficção</option>
              <option>Fantasia</option>
              <option>História</option>

            </select>

          </div>

          <div class="form-group">

            <label>
              Quantidade
            </label>

            <input
                    type="number"
                    name="quantidade"
                    value="1">

          </div>

        </div>

        <div class="form-actions">

          <a
                  href="${pageContext.request.contextPath}/listar"
                  class="btn btn-ghost">

            <i class="fa-solid fa-xmark"></i>

            Cancelar

          </a>

          <button
                  type="submit"
                  class="btn btn-primary">

            <i class="fa-solid fa-floppy-disk"></i>

            Cadastrar

          </button>

        </div>

      </form>

    </div>

  </div>

</div>

<script src="${pageContext.request.contextPath}/app.js"></script>

</body>

</html>