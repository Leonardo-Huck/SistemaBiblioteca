package br.com.cesumar.biblioteca.sistemabiblioteca.controller;

import br.com.cesumar.biblioteca.sistemabiblioteca.model.Livro;
import br.com.cesumar.biblioteca.sistemabiblioteca.model.LivroDAO;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

import java.io.IOException;

@WebServlet("/cadastrar")

public class CadastroLivroServlet
        extends HttpServlet {

    @Override

    protected void doPost(

            HttpServletRequest request,

            HttpServletResponse response

    )

            throws ServletException,
            IOException {

        String titulo =
                request.getParameter(
                        "titulo"
                );

        String autor =
                request.getParameter(
                        "autor"
                );

        String isbn =
                request.getParameter(
                        "isbn"
                );

        String anoTexto =
                request.getParameter(
                        "ano"
                );


        if (

                titulo.isBlank()

                        ||

                        autor.isBlank()

                        ||

                        isbn.isBlank()

                        ||

                        anoTexto.isBlank()

        ) {

            request.setAttribute(

                    "erro",

                    "Preencha todos os campos."

            );

            request.getRequestDispatcher(

                            "cadastro.jsp"

                    )

                    .forward(
                            request,
                            response
                    );

            return;

        }


        int ano =
                Integer.parseInt(
                        anoTexto
                );


        String categoria =
                request.getParameter("categoria");

        int quantidade =
                Integer.parseInt(
                        request.getParameter("quantidade")
                );

        Livro livro = new Livro(
                titulo,
                autor,
                ano,
                isbn,
                categoria,
                quantidade
        );


        LivroDAO dao =
                new LivroDAO();

        dao.adicionar(
                livro
        );


        response.sendRedirect(
                "listar"
        );

    }

}