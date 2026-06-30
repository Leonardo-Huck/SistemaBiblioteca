package br.com.cesumar.biblioteca.sistemabiblioteca.controller;

import br.com.cesumar.biblioteca.sistemabiblioteca.model.Livro;
import br.com.cesumar.biblioteca.sistemabiblioteca.model.LivroDAO;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

@WebServlet("/dashboard")
public class DashboardServlet extends HttpServlet {

    @Override
    protected void doGet(
            HttpServletRequest request,
            HttpServletResponse response
    ) throws ServletException, IOException {

        LivroDAO dao = new LivroDAO();

        List<Livro> livros = dao.listar();

        int totalLivros = livros.size();
        int livrosDisponiveis = 0;

        Set<String> categorias = new HashSet<>();

        for (Livro livro : livros) {
            livrosDisponiveis += livro.getQuantidade();
            categorias.add(livro.getCategoria());
        }

        // Cria uma nova lista cópia e inverte a ordem para que os últimos adicionados fiquem primeiro
        List<Livro> ultimosAdicionados = new ArrayList<>(livros);
        Collections.reverse(ultimosAdicionados);

        request.setAttribute(
                "livros",
                ultimosAdicionados
        );

        request.setAttribute(
                "totalLivros",
                totalLivros
        );

        request.setAttribute(
                "livrosDisponiveis",
                livrosDisponiveis
        );

        request.setAttribute(
                "livrosNovos",
                totalLivros
        );

        request.setAttribute(
                "totalCategorias",
                categorias.size()
        );

        request.getRequestDispatcher(
                "/index.jsp"
        ).forward(
                request,
                response
        );
    }
}