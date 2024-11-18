<%@page import="java.util.List"%>
<%@ page import="DALL.LivroDALL" %>
<%@ page import="DTO.LivroDTO" %>
<%
    LivroDALL dao = new LivroDALL();
    List<LivroDTO> livros = dao.listarLivros();
%>

<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Lista de Livros</title>

    <!-- Link para a fonte Google Fonts -->
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;500;700&display=swap" rel="stylesheet">

    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: 'Roboto', sans-serif;
            background-color: #f4f7fb;
            color: #333;
            line-height: 1.6;
            padding: 0;
        }

        .container {
            width: 100%;
            max-width: 900px;
            margin: 50px auto;
            padding: 20px;
            background-color: white;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        h2 {
            text-align: center;
            color: #333;
            font-size: 2rem;
            margin-bottom: 20px;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-bottom: 20px;
        }

        table th, table td {
            padding: 12px;
            text-align: left;
            border: 1px solid #ddd;
        }

        table th {
            background-color: #007bff;
            color: white;
        }

        table tr:nth-child(even) {
            background-color: #f9f9f9;
        }

        table tr:hover {
            background-color: #f1f1f1;
        }

        .actions a {
            text-decoration: none;
            color: #007bff;
            margin-right: 10px;
            padding: 5px 10px;
            border: 1px solid #007bff;
            border-radius: 4px;
            transition: background-color 0.3s ease;
        }

        .actions a:hover {
            background-color: #007bff;
            color: white;
        }

        /* Botão Home */
        .btn-home {
            padding: 12px;
            background-color: #28a745;
            color: white;
            font-size: 1.1rem;
            border: none;
            border-radius: 6px;
            cursor: pointer;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            width: 100%;
            transition: background-color 0.3s ease, transform 0.3s ease;
        }

        .btn-home:hover {
            background-color: #218838;
            transform: translateY(-3px);
        }

        .btn-home:focus {
            outline: none;
            box-shadow: 0 0 8px rgba(0, 123, 255, 0.5);
        }

        /* Responsividade */
        @media (max-width: 768px) {
            .container {
                padding: 15px;
            }

            h2 {
                font-size: 1.5rem;
            }

            table th, table td {
                font-size: 0.9rem;
                padding: 10px;
            }
        }
    </style>
</head>
<body>

    <div class="container">
        <h2>Lista de Livros</h2>
        
        <table>
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Título</th>
                    <th>Autor</th>
                    <th>Ações</th>
                </tr>
            </thead>
            <tbody>
                <%
                    for (LivroDTO livro : livros) {
                %>
                <tr>
                    <td><%= livro.getId() %></td>
                    <td><%= livro.getTitulo() %></td>
                    <td><%= livro.getAutor() %></td>
                    <td class="actions">
                        <a href="editarLivro.jsp?id=<%= livro.getId() %>">Editar</a>
                        <a href="DeleteLivro.jsp?id=<%= livro.getId() %>">Excluir</a>
                    </td>
                </tr>
                <%
                    }
                %>
            </tbody>
        </table>

        <!-- Botão para voltar à página inicial -->
        <a href="/WebCrud/index.jsp" class="btn-home">Voltar para Home</a>

    </div>

</body>
</html>
