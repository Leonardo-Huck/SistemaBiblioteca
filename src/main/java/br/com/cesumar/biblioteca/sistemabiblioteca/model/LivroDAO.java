package br.com.cesumar.biblioteca.sistemabiblioteca.model;

import java.util.ArrayList;
import java.util.List;

public class LivroDAO {

    private static final List<Livro> livros =
            new ArrayList<>();

    public void adicionar(
            Livro livro
    ) {
        livros.add(livro);
    }

    public List<Livro> listar() {
        return livros;
    }

    public void excluir(
            String isbn
    ) {

        livros.removeIf(

                livro ->
                        livro.getIsbn()
                                .equals(isbn)

        );

    }

}