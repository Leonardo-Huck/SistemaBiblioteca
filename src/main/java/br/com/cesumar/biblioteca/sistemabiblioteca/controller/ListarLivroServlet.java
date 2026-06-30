package br.com.cesumar.biblioteca.sistemabiblioteca.controller;

import br.com.cesumar.biblioteca.sistemabiblioteca.model.LivroDAO;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

import java.io.IOException;

@WebServlet("/listar")

public class ListarLivroServlet
        extends HttpServlet {

    @Override

    protected void doGet(

            HttpServletRequest request,

            HttpServletResponse response

    )

            throws ServletException,
            IOException {

        LivroDAO dao =
                new LivroDAO();

        request.setAttribute(

                "livros",

                dao.listar()

        );

        request.getRequestDispatcher(

                        "lista.jsp"

                )

                .forward(
                        request,
                        response
                );

    }

}