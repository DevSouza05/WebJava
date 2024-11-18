<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Cadastrar Livro</title>

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

        /* Centralizando o conteúdo */
        .container {
            width: 100%;
            max-width: 600px;
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

        /* Estilo do formulário */
        form {
            display: flex;
            flex-direction: column;
            gap: 20px;
        }

        /* Estilo para os labels */
        label {
            font-size: 1rem;
            font-weight: 500;
            margin-bottom: 5px;
        }

        /* Estilo para os campos de input */
        input {
            padding: 12px;
            font-size: 1rem;
            border: 1px solid #ccc;
            border-radius: 6px;
            width: 100%;
            transition: border-color 0.3s ease;
        }

        input:focus {
            border-color: #007bff;
            outline: none;
        }

        /* Estilo para o botão de envio */
        button {
            padding: 12px;
            background-color: #007bff;
            color: white;
            font-size: 1.1rem;
            border: none;
            border-radius: 6px;
            cursor: pointer;
            transition: background-color 0.3s ease, transform 0.3s ease;
        }

        button:hover {
            background-color: #0056b3;
            transform: translateY(-3px);
        }

        button:focus {
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

            input, button {
                font-size: 1rem;
            }
        }
    </style>
</head>
<body>

    <div class="container">
        <h2>Cadastrar Novo Livro</h2>

        <form action="inserirLivroAction.jsp" method="POST">
            <label for="titulo">Título:</label>
            <input type="text" id="titulo" name="titulo" required>

            <label for="autor">Autor:</label>
            <input type="text" id="autor" name="autor" required>

            <label for="ano_publicacao">Ano de Publicação:</label>
            <input type="number" id="ano_publicacao" name="ano_publicacao" required>

            <label for="genero">Gênero:</label>
            <input type="text" id="genero" name="genero" required>

            <button type="submit">Cadastrar</button>
        </form>
    </div>

</body>
</html>
