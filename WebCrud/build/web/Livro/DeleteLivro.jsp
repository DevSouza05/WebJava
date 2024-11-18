<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="DALL.LivroDALL" %>
<%@ page import="DTO.LivroDTO" %>
<%
    // Obtendo o ID do livro da URL
    String idParam = request.getParameter("id");

    // Verificando se o parâmetro 'id' foi passado corretamente
    if (idParam == null || idParam.isEmpty()) {
        out.println("Erro: Parâmetro 'id' ausente ou vazio!");
    } else {
        try {
            int id = Integer.parseInt(idParam); // Tentando converter o parâmetro 'id' para inteiro

            // Criando o DAO e excluindo o livro pelo ID
            LivroDALL dao = new LivroDALL();
            int resultado = dao.excluirLivro(id);

            // Verificando o resultado da exclusão
            if (resultado > 0) {
                out.println("Livro excluído com sucesso!");
            } else {
                out.println("Erro ao excluir livro.");
            }
        } catch (NumberFormatException e) {
            out.println("Erro: ID inválido!");
        }
    }
%>
