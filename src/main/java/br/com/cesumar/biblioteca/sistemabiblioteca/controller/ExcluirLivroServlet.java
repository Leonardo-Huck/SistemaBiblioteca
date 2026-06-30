package br.com.cesumar.biblioteca.sistemabiblioteca.controller;

import br.com.cesumar.biblioteca.sistemabiblioteca.model.LivroDAO;

import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

import java.io.IOException;

@WebServlet("/excluir")

public class ExcluirLivroServlet
        extends HttpServlet {

    @Override

    protected void doGet(

            HttpServletRequest request,

            HttpServletResponse response

    )

            throws IOException {

        String isbn =
                request.getParameter(
                        "isbn"
                );

        LivroDAO dao =
                new LivroDAO();

        dao.excluir(
                isbn
        );

        response.sendRedirect(
                "listar"
        );

    }

}