<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="DALL.LivroDALL" %>
<%@ page import="DTO.LivroDTO" %>
<%
    // Recebendo os dados do formulário
    int id = Integer.parseInt(request.getParameter("id"));
    String titulo = request.getParameter("titulo");
    String autor = request.getParameter("autor");
    int anoPublicacao = Integer.parseInt(request.getParameter("ano_publicacao"));
    String genero = request.getParameter("genero");

    // Criando o objeto LivroDTO com os dados recebidos
    LivroDTO livro = new LivroDTO();
    livro.setId(id);
    livro.setTitulo(titulo);
    livro.setAutor(autor);
    livro.setAnoPublicacao(anoPublicacao);
    livro.setGenero(genero);

    // Criando o DAO e atualizando o livro
    LivroDALL dao = new LivroDALL();
    int resultado = dao.atualizarLivro(livro);

    // Exibindo uma mensagem de sucesso ou erro
    if (resultado > 0) {
        out.println("Livro atualizado com sucesso!");
        // Redirecionando para a lista de livros
        response.sendRedirect("ConsultaLivro.jsp");
    } else {
        out.println("Erro ao atualizar livro.");
    }
%>
