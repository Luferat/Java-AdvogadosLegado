package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Date;

import util.Conexao;

public class AdvogadoDao {

	Connection con;
	ResultSet rs;

	public void Salvar(Advogado adv) {
		try {
			con = new Conexao().conectar();
			String sql = "INSERT INTO advogado (oab, nome, telefone) VALUES (?, ?, ?)";
			PreparedStatement stmt = con.prepareStatement(sql);
			stmt.setString(1, adv.getOab());
			stmt.setString(2, adv.getNome());
			stmt.setString(3, adv.getTelefone());
			stmt.executeUpdate();
			stmt.close();
		} catch (Exception erro) {
			erro.printStackTrace();
		}
	}

	public ArrayList<Advogado> Listar() {
		try {
			con = new Conexao().conectar();
			ArrayList<Advogado> advogados = new ArrayList<>();
			String sql = "select * from advogado WHERE statusadv = 'on'";
			PreparedStatement stmt = con.prepareStatement(sql);
			rs = stmt.executeQuery();
			while (rs.next()) {
				int idadv = rs.getInt("idadv");
				Date data = rs.getDate("dataadv");
				String oab = rs.getString("oab");
				String nome = rs.getString("nome");
				String telefone = rs.getString("telefone");
				String status = rs.getString("statusadv");
				advogados.add(new Advogado(idadv, data, oab, nome, telefone, status));
			}

			return advogados;

		} catch (Exception erro) {
			System.out.println(erro);
			return null;
		}

	}
	
	public void Apagar(String id) {

		try {
			con = new Conexao().conectar();
			String sql = "UPDATE advogado SET statusadv = 'off' WHERE idadv = ?";
			PreparedStatement stmt = con.prepareStatement(sql);
			stmt.setString(1, id);
			stmt.executeUpdate();
			stmt.close();
			con.close();
		} catch (Exception erro) {
			erro.printStackTrace();
		}
	}

}
