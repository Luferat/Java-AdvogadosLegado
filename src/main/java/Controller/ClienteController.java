package Controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.catalina.startup.SetAllPropertiesRule;

import model.Cliente;
import model.ClienteDao;

@WebServlet({ "/ClienteController", "/novocliente", "/buscacliente", "/apagacliente" })

public class ClienteController extends HttpServlet {

	Cliente cli = new Cliente();
	ClienteDao daocli = new ClienteDao();

	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ClienteController() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// TODO Auto-generated method stub
		// response.getWriter().append("Served at: ").append(request.getContextPath());

		String acao = request.getServletPath();
		System.out.println("hatamata");
		System.out.println(acao);
		if (acao.equals("/novocliente")) {
			EnviaDados(request, response);
		} else if (acao.equals("/buscacliente")) {
			BuscaDados(request, response);
		}

	}

	protected void BuscaDados(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		ArrayList<Cliente> lista = daocli.Listar();
		String success = (String) request.getAttribute("success");
		
		if(success != null)
			request.setAttribute("success", success);
		
		request.setAttribute("clientes", lista);
		RequestDispatcher rd = request.getRequestDispatcher("RelClientes.jsp");
		rd.forward(request, response);
	}

	protected void EnviaDados(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		cli.setNome(request.getParameter("nome"));
		cli.setTelefone(request.getParameter("telefone"));
		daocli.Salvar(cli);
		request.setAttribute("success", "Cliente cadastrado com sucesso!");
		request.getRequestDispatcher("buscacliente").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
