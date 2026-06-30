package br.com.cesumar.biblioteca.sistemabiblioteca.model;

import java.util.ArrayList;
import java.util.List;

public class LivroDAO {

    private static final List<Livro> livros =
            new ArrayList<>();

    // Livros iniciais
    static {

        livros.add(new Livro("Dom Casmurro","Machado de Assis",1899,"9788535902775","Literatura",5));
        livros.add(new Livro("Memórias Póstumas de Brás Cubas","Machado de Assis",1881,"9788535910664","Literatura",4));
        livros.add(new Livro("1984","George Orwell",1949,"9788535914846","Ficção",8));
        livros.add(new Livro("A Revolução dos Bichos","George Orwell",1945,"9788535909552","Ficção",6));
        livros.add(new Livro("O Hobbit","J.R.R. Tolkien",1937,"9788595084742","Fantasia",7));
        livros.add(new Livro("O Senhor dos Anéis","J.R.R. Tolkien",1954,"9788533613379","Fantasia",10));
        livros.add(new Livro("Harry Potter e a Pedra Filosofal","J.K. Rowling",1997,"9788532530783","Fantasia",12));
        livros.add(new Livro("Harry Potter e a Câmara Secreta","J.K. Rowling",1998,"9788532530790","Fantasia",9));
        livros.add(new Livro("Sapiens","Yuval Harari",2011,"9788525432186","História",6));
        livros.add(new Livro("Homo Deus","Yuval Harari",2015,"9788535928195","História",5));
        livros.add(new Livro("Clean Code","Robert Martin",2008,"9780132350884","Tecnologia",14));
        livros.add(new Livro("Código Limpo","Robert Martin",2008,"9788576082675","Tecnologia",11));
        livros.add(new Livro("Java Como Programar","Deitel",2017,"9788543004799","Tecnologia",8));
        livros.add(new Livro("Use a Cabeça Java","Kathy Sierra",2005,"9788576081739","Tecnologia",7));
        livros.add(new Livro("Algoritmos","Thomas Cormen",2009,"9788535236996","Tecnologia",5));
        livros.add(new Livro("Spring em Ação","Craig Walls",2019,"9781617294945","Tecnologia",6));
        livros.add(new Livro("O Pequeno Príncipe","Antoine de Saint-Exupéry",1943,"9788595081512","Infantil",15));
        livros.add(new Livro("Percy Jackson","Rick Riordan",2005,"9788598078397","Fantasia",9));
        livros.add(new Livro("Jogos Vorazes","Suzanne Collins",2008,"9788579800245","Ficção",7));
        livros.add(new Livro("Crepúsculo","Stephenie Meyer",2005,"9788598078304","Ficção",4));
        livros.add(new Livro("A Culpa é das Estrelas","John Green",2012,"9788580572261","Ficção",8));
        livros.add(new Livro("O Código Da Vinci","Dan Brown",2003,"9788575421130","Ficção",6));
        livros.add(new Livro("Anjos e Demônios","Dan Brown",2000,"9788575421468","Ficção",5));
        livros.add(new Livro("Steve Jobs","Walter Isaacson",2011,"9788535923152","Biografia",3));
        livros.add(new Livro("Elon Musk","Walter Isaacson",2023,"9786555606949","Biografia",4));
        livros.add(new Livro("Pai Rico Pai Pobre","Robert Kiyosaki",1997,"9788550801483","Acadêmico",12));
        livros.add(new Livro("Mindset","Carol Dweck",2006,"9788547000247","Acadêmico",10));
        livros.add(new Livro("Hábitos Atômicos","James Clear",2018,"9788550807560","Acadêmico",15));
        livros.add(new Livro("As Crônicas de Nárnia","C.S. Lewis",1956,"9788578270698","Fantasia",7));
        livros.add(new Livro("O Alquimista","Paulo Coelho",1988,"9788576653721","Literatura",8));

    }

    public void adicionar(Livro livro) {
        livros.add(livro);
    }

    public List<Livro> listar() {
        return livros;
    }

    public void excluir(String isbn) {

        livros.removeIf(

                livro ->
                        livro.getIsbn()
                                .equals(isbn)

        );

    }

    public int totalLivros() {

        return livros.size();

    }

}