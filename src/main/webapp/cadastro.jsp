<%@ page contentType="text/html;charset=UTF-8" %>

<html>

<head>

  <title>

    Cadastro de Livros

  </title>

</head>

<body>

<h1>

  Cadastro de Livros

</h1>

<form
        action="cadastrar"
        method="post">

  <label>

    Título:

  </label>

  <input
          type="text"
          name="titulo">

  <br><br>

  <label>

    Autor:

  </label>

  <input
          type="text"
          name="autor">

  <br><br>

  <label>

    Ano:

  </label>

  <input
          type="number"
          name="ano">

  <br><br>

  <label>

    ISBN:

  </label>

  <input
          type="text"
          name="isbn">

  <br><br>

  <button
          type="submit">

    Cadastrar

  </button>

</form>

<br>

<a href="listar">

  Ver Livros

</a>

<p>

  ${erro}

</p>

</body>

</html>