package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import util.Conexao;

public class AdvogadoDao {
	
	Connection con;
	ResultSet rs;
	
	
	public void Salvar(Advogado adv) {
	try {	
		con = new Conexao().conectar();
		
		String sql="insert into advogado(oab,nome,telefone,tipocausas)values(?,?,?,?)";
		
		PreparedStatement stmt = con.prepareStatement(sql);
		stmt.setInt(1,adv.getOab());
		stmt.setString(2,adv.getNome());
		stmt.setString(3,adv.getTelefone());
		stmt.setString(4,adv.getTipocausas());
		stmt.executeUpdate();
		
		stmt.close();			
		
	}
	catch(Exception erro) {
		
	}
	}
	
	
	
	
	
	public ArrayList<Advogado> Listar(){
	try {
		
		con = new Conexao().conectar();
		ArrayList<Advogado> advogados = new ArrayList<>();
		String sql = "select * from advogado";
		PreparedStatement stmt = con.prepareStatement(sql);
		rs = stmt.executeQuery();
		while (rs.next()) {
			int id = rs.getInt("idadv");
			int oab = rs.getInt("idadv");
			String nome = rs.getString("nome");
			String telefone = rs.getString("telefone");
			String tipocausas = rs.getString(4);
			advogados.add(new Advogado(oab,nome,telefone,tipocausas));
		}
		
		return advogados;		
		
		/*
		 * 	idadv INT PRIMARY KEY AUTO_INCREMENT,
    dataadv TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    oab VARCHAR(15) UNIQUE NOT NULL,
	nome VARCHAR(127) NOT NULL,
    telefone VARCHAR(31) NOT NULL,
    statusadv ENUM("on", "off") DEFAULT "on"
		 * */
		
	}
	catch(Exception erro) {
		System.out.println(erro);
		return null;
	}
		
	}
	
	

}
