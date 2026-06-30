# 📚 Sistema Biblioteca

Sistema Web para gerenciamento de livros desenvolvido como atividade acadêmica utilizando Java Web.

Permite cadastrar, listar e remover livros através de uma interface simples utilizando Servlets e JSP seguindo o padrão MVC.

---

## 🚀 Funcionalidades

✔ Cadastro de livros  
✔ Listagem do acervo  
✔ Exclusão de livros  
✔ Validação básica dos dados  
✔ Navegação entre telas

---

## 🛠 Tecnologias

- Java 17
- Jakarta Servlet
- JSP
- JSTL
- HTML5
- CSS3
- Maven
- Apache Tomcat

---

## 📂 Estrutura do Projeto

```text
src
└── main
    ├── java
    │
    └── br.com.cesumar.biblioteca.sistemabiblioteca
        ├── controller
        │   ├── CadastroLivroServlet
        │   ├── DashboardServlet
        │   ├── ExcluirLivroServlet
        │   └── ListarLivroServlet
        │
        ├── model
        │   ├── Livro
        │   └── LivroDAO
        │
        └── view
            └── LivroBean

webapp
├── index.jsp
├── cadastro-livro.jsp
├── listar-livros.jsp
├── style.css
└── app.js
```

---

## 🏗 Arquitetura

Projeto organizado utilizando o padrão MVC:

- **Model** → regras e dados
- **View** → interface JSP
- **Controller** → Servlets

---

## ▶ Como Executar

### Pré-requisitos

- Java 17+
- Maven
- Apache Tomcat

### Clonar

```bash
git clone https://github.com/Leonardo-Huck/SistemaBiblioteca.git
```

### Executar

```bash
mvn clean package
```

Gerará:

```text
target/sistema-biblioteca.war
```

Realize o deploy no Tomcat.

Depois acesse:

```text
http://localhost:8080/sistema-biblioteca
```

---

## 📷 Demonstração

Adicione capturas:

- Tela inicial
- Cadastro
- Listagem

---

## 🔮 Melhorias Futuras

- Persistência com banco de dados
- Busca por livros
- Edição
- Paginação
- Login de usuários
- API REST

---

## 👨‍💻 Autor

Leonardo Monteiro Huck

GitHub:
https://github.com/Leonardo-Huck