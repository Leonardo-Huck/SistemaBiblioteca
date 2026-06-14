# 📚 Sistema Web - Biblioteca Universidade Cesumar

Projeto acadêmico desenvolvido em **Java** para gerenciamento de livros do acervo interno da biblioteca universitária.

A aplicação foi construída utilizando **Servlets, JSP e JSF**, aplicando conceitos de **Programação Orientada a Objetos (POO)** e seguindo o padrão arquitetural **MVC (Model-View-Controller)**.

---

## 🎯 Objetivo

Desenvolver um sistema web simples, funcional e com interface amigável que permita aos funcionários da biblioteca:

- Cadastrar livros;
- Visualizar os livros cadastrados;
- Excluir livros do acervo;
- Garantir validações básicas para evitar inconsistências nos dados.

---

## 🚀 Funcionalidades

### 📖 Cadastro de Livros
Permite cadastrar novos livros contendo:

- Título
- Autor
- Ano de publicação
- ISBN

### 📋 Listagem de Livros
Exibe todos os livros cadastrados de forma organizada.

### 🗑 Exclusão de Livros
Permite remover livros cadastrados utilizando ISBN.

### ✅ Validação de Dados
Tratamento de entradas inválidas como:

- Campos obrigatórios vazios;
- ISBN inválido;
- Ano incorreto.

---

## 🛠 Tecnologias Utilizadas

| Tecnologia | Finalidade |
|-----------|------------|
| Java | Linguagem principal |
| Servlet | Controle das requisições |
| JSP | Interface Web |
| JSF | Interface baseada em componentes |
| HTML5 | Estrutura |
| CSS3 | Estilização |
| Apache Tomcat | Servidor de aplicação |
| MVC | Arquitetura do sistema |

---

## 🏛 Arquitetura do Projeto (MVC)

### Model
Responsável pelos dados e regras do sistema.

Exemplos:
- `Livro.java`
- `LivroDAO.java`

### View
Responsável pela interface exibida ao usuário.

Exemplos:
- `cadastro.jsp`
- `lista.jsp`
- `excluir.xhtml`

### Controller
Responsável por controlar o fluxo das requisições.

Exemplos:
- `CadastroLivroServlet`
- `ListarLivroServlet`
- `ExcluirLivroServlet`

---

## 📂 Estrutura do Projeto

```text
BibliotecaCesumar
│
├── src
│
├── model
│   ├── Livro.java
│   └── LivroDAO.java
│
├── controller
│   ├── CadastroLivroServlet.java
│   ├── ListarLivroServlet.java
│   └── ExcluirLivroServlet.java
│
├── view
│   └── LivroBean.java
│
└── webapp
    ├── cadastro.jsp
    ├── lista.jsp
    └── excluir.xhtml
```

---

## ⚙️ Como Executar o Projeto

### Pré-requisitos

Instale os seguintes softwares:

- Java JDK 17 ou superior
- Apache Tomcat
- IDE Java:
  - NetBeans
  - Eclipse
  - IntelliJ IDEA

---

### Clonar o Repositório

```bash
git clone https://github.com/Leonardo-Huck/BibliotecaCesumar.git
```

---

### Abrir na IDE

Importe o projeto como:

```text
Java Web Application
```

---

### Configurar o Tomcat

1. Adicione o servidor na IDE.
2. Vincule o projeto ao servidor.
3. Execute a aplicação.

---

### Acessar no Navegador

```text
http://localhost:8080/BibliotecaCesumar/
```

---

## 📌 Regras de Negócio Implementadas

- Cadastro somente com todos os campos preenchidos;
- ISBN validado antes do cadastro;
- Exclusão baseada em ISBN;
- Separação entre interface e regras de negócio;
- Controle centralizado utilizando Servlets.

---

## 📷 Demonstração

### Tela de Cadastro

```text
[ Inserir captura de tela ]
```

### Tela de Listagem

```text
[ Inserir captura de tela ]
```

### Tela de Exclusão

```text
[ Inserir captura de tela ]
```

---

## 🧪 Exemplo de Fluxo

```text
Cadastrar Livro
      ↓
Salvar Dados
      ↓
Listar Livros
      ↓
Excluir Livro
      ↓
Atualizar Lista
```

---

## 📚 Conceitos Aplicados

- Programação Orientada a Objetos (POO)
- Arquitetura MVC
- Desenvolvimento Web com Java
- Servlets
- JSP
- JSF
- Tratamento de Erros
- Organização em Camadas

---

## 🔮 Melhorias Futuras

- Integração com banco de dados (MySQL/PostgreSQL);
- Sistema de autenticação;
- Paginação da listagem;
- Pesquisa de livros;
- Edição de cadastro;
- Interface responsiva.

---

## 👨‍💻 Autor

**Leonardo Monteiro Huck**

GitHub:

https://github.com/Leonardo-Huck

---

## 📄 Licença

Este projeto foi desenvolvido exclusivamente para fins acadêmicos como atividade da disciplina de Desenvolvimento Web — Universidade Cesumar.
