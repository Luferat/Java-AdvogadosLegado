package model;

public class Cliente {
	private int idcliente;
	private String nome;
	private String telefone;

	public Cliente() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Cliente(int idcliente, String nome, String telefone) {
		super();
		this.idcliente = idcliente;
		this.nome = nome;
		this.telefone = telefone;
	}

	public int getIdcliente() {
		return idcliente;
	}

	public void setIdcliente(int idcliente) {
		this.idcliente = idcliente;
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

}
