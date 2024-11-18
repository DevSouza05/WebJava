<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Menu Principal</title>

    <!-- Adicionando Google Font para fontes mais modernas -->
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;500;700&display=swap" rel="stylesheet">

    <style>
        /* Resetando margens e padding */
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

        /* Container para o conteúdo */
        .container {
            width: 100%;
            max-width: 1200px;
            margin: 0 auto;
            padding: 50px 20px;
        }

        /* Estilo do título principal */
        h1 {
            text-align: center;
            color: #333;
            font-size: 2.5rem;
            margin-bottom: 40px;
        }

        /* Menu de navegação */
        .menu {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(200px, 1fr));
            gap: 20px;
            justify-items: center;
            margin-top: 40px;
        }

        /* Estilo dos links e botões */
        .menu a, .menu button {
            display: block;
            text-decoration: none;
            text-align: center;
            padding: 15px 30px;
            background-color: #007bff;
            color: white;
            font-size: 1.1rem;
            border-radius: 8px;
            border: none;
            cursor: pointer;
            transition: all 0.3s ease-in-out;
            width: 100%;
            max-width: 220px;
        }

        /* Efeito de hover nos links e botões */
        .menu a:hover, .menu button:hover {
            background-color: #0056b3;
            transform: translateY(-5px);
        }

        /* Adicionando o foco nos links e botões */
        .menu a:focus, .menu button:focus {
            outline: none;
            box-shadow: 0 0 10px rgba(0, 123, 255, 0.6);
        }

        /* Responsividade para telas pequenas */
        @media (max-width: 768px) {
            h1 {
                font-size: 2rem;
            }

            .menu {
                grid-template-columns: 1fr;
                gap: 15px;
            }
        }
    </style>
</head>
<body>

    <div class="container">
        <h1>Bem-vindo ao Sistema de Cadastro de Livros</h1>

        <!-- Menu de navegação -->
        <div class="menu">
           
            <a href="/WebCrud/Livro/InserirLivro.jsp">Cadastrar Livro</a>

            
            <a href="/WebCrud/Livro/ConsultaLivro.jsp">Consultar Livros</a>

        </div>
    </div>

</body>
</html>
