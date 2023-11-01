package Controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Advogado;
import model.AdvogadoDao;

/**
 * Servlet implementation class AdvogadoController
 */
@WebServlet({ "/AdvogadoController", "/novoadvogado", "/buscaadvogados" })
public class AdvogadoController extends HttpServlet {

	Advogado adv = new Advogado();
	AdvogadoDao daoadv = new AdvogadoDao();

	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public AdvogadoController() {
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
		if (acao.equals("/novoadvogado")) {
			EnviaDados(request, response);
		} else if (acao.equals("/buscaadvogados")) {
			BuscaDados(request, response);
		}
	}

	protected void EnviaDados(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		adv.setOab(request.getParameter("oab"));
		adv.setNome(request.getParameter("nome"));
		adv.setTelefone(request.getParameter("telefone"));
		daoadv.Salvar(adv);
	}

	protected void BuscaDados(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		ArrayList<Advogado> lista = daoadv.Listar();
		request.setAttribute("advogados", lista);
		RequestDispatcher rd = request.getRequestDispatcher("RelAdvogado.jsp");
		rd.forward(request, response);

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