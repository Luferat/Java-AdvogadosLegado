package model;

import java.util.Date;

public class Advogado {

	private int idadv;
	private Date data;
	private String oab;
	private String nome;
	private String telefone;
	private String status;

	public Advogado() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Advogado(int idadv, Date data, String oab, String nome, String telefone, String status) {
		super();
		this.idadv = idadv;
		this.data = data;
		this.oab = oab;
		this.nome = nome;
		this.telefone = telefone;
		this.status = status;
	}
	
	public Advogado(int idadv, Date data, String oab, String nome, String telefone) {
		super();
		this.idadv = idadv;
		this.data = data;
		this.oab = oab;
		this.nome = nome;
		this.telefone = telefone;
	}

	public int getIdadv() {
		return idadv;
	}

	public void setIdadv(int idadv) {
		this.idadv = idadv;
	}

	public Date getData() {
		return data;
	}

	public void setData(Date data) {
		this.data = data;
	}

	public String getOab() {
		return oab;
	}

	public void setOab(String oab) {
		this.oab = oab;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getTelefone() {
		return telefone;
	}

	public void setTelefone(String telefone) {
		this.telefone = telefone;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

}
