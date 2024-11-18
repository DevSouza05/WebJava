<%@ page import="DALL.LivroDALL" %>
<%@ page import="DTO.LivroDTO" %>
<%
    String titulo = request.getParameter("titulo");
    String autor = request.getParameter("autor");
    int anoPublicacao = Integer.parseInt(request.getParameter("ano_publicacao"));
    String genero = request.getParameter("genero");

    LivroDTO livro = new LivroDTO();
    livro.setTitulo(titulo);
    livro.setAutor(autor);
    livro.setAnoPublicacao(anoPublicacao);
    livro.setGenero(genero);

    LivroDALL dao = new LivroDALL();
    int resultado = dao.inserirLivro(livro);

    if (resultado > 0) {
        out.println("Livro cadastrado com sucesso!");
    } else {
        out.println("Erro ao cadastrar livro.");
    }
%>
