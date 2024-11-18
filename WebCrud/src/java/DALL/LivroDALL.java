package DALL;

import DTO.LivroDTO;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class LivroDALL {

    private Connection con;

    // Construtor
    public LivroDALL() {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            this.con = DriverManager.getConnection("jdbc:mysql://localhost:3307/livrosdb", "root", "159753");
        } catch (ClassNotFoundException | SQLException e) {
        }
    }

    // Inserir um novo livro
    public int inserirLivro(LivroDTO livro) {
        String sql = "INSERT INTO livros (titulo, autor, ano_publicacao, genero) VALUES (?, ?, ?, ?)";
        try (PreparedStatement pst = con.prepareStatement(sql)) {
            pst.setString(1, livro.getTitulo());
            pst.setString(2, livro.getAutor());
            pst.setInt(3, livro.getAnoPublicacao());
            pst.setString(4, livro.getGenero());
            return pst.executeUpdate();
        } catch (SQLException e) {
        }
        return 0;
    }

    // Listar todos os livros
    public List<LivroDTO> listarLivros() {
        List<LivroDTO> livros = new ArrayList<>();
        String sql = "SELECT * FROM livros";
        try (Statement stmt = con.createStatement(); ResultSet rs = stmt.executeQuery(sql)) {
            while (rs.next()) {
                LivroDTO livro = new LivroDTO();
                livro.setId(rs.getInt("id"));
                livro.setTitulo(rs.getString("titulo"));
                livro.setAutor(rs.getString("autor"));
                livro.setAnoPublicacao(rs.getInt("ano_publicacao"));
                livro.setGenero(rs.getString("genero"));
                livros.add(livro);
            }
        } catch (SQLException e) {
        }
        return livros;
    }

    // Buscar livro por ID
    public LivroDTO buscarLivroPorId(int id) {
        LivroDTO livro = null;
        String sql = "SELECT * FROM livros WHERE id=?";
        try (PreparedStatement pst = con.prepareStatement(sql)) {
            pst.setInt(1, id);
            try (ResultSet rs = pst.executeQuery()) {
                if (rs.next()) {
                    livro = new LivroDTO();
                    livro.setId(rs.getInt("id"));
                    livro.setTitulo(rs.getString("titulo"));
                    livro.setAutor(rs.getString("autor"));
                    livro.setAnoPublicacao(rs.getInt("ano_publicacao"));
                    livro.setGenero(rs.getString("genero"));
                }
            }
        } catch (SQLException e) {
        }
        return livro;
    }

    // Atualizar livro
    public int atualizarLivro(LivroDTO livro) {
        String sql = "UPDATE livros SET titulo=?, autor=?, ano_publicacao=?, genero=? WHERE id=?";
        try (PreparedStatement pst = con.prepareStatement(sql)) {
            pst.setString(1, livro.getTitulo());
            pst.setString(2, livro.getAutor());
            pst.setInt(3, livro.getAnoPublicacao());
            pst.setString(4, livro.getGenero());
            pst.setInt(5, livro.getId());
            return pst.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return 0;
    }

    // Excluir livro
    public int excluirLivro(int id) {
        String sql = "DELETE FROM livros WHERE id=?";
        try (PreparedStatement pst = con.prepareStatement(sql)) {
            pst.setInt(1, id);
            return pst.executeUpdate();
        } catch (SQLException e) {
        }
        return 0;
    }
}
