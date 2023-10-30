package model;

public class Advogado {

	private int oab;
	private String nome;
	private String telefone;
	private String tipocausas;

	public Advogado() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Advogado(int oab, String nome, String telefone, String tipocausas) {
		super();
		this.oab = oab;
		this.nome = nome;
		this.telefone = telefone;
		this.tipocausas = tipocausas;
	}

	public int getOab() {
		return oab;
	}

	public void setOab(int oab) {
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

	public String getTipocausas() {
		return tipocausas;
	}

	public void setTipocausas(String tipocausas) {
		this.tipocausas = tipocausas;
	}

}
