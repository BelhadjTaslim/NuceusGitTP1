package fr.noixcoop.nuceus;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class RechercherVarieteGet
 */
@WebServlet("/RechercherVarieteGet")
public class RechercherVarieteGet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RechercherVarieteGet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String variete = request.getParameter("variete") ;
		response.setContentType("text/html");
		PrintWriter sortie = response.getWriter() ;
		if(variete == null){
			sortie.println("<html><body><h1>Variété de noix inconnue.</h1></body></html>");
		}
		else{
			MetierVarietes resultat = new MetierVarietes() ;
			Variete result = resultat.consulter(variete) ;
			String isAoc = null ;
			if(result.isAoc()){
				isAoc = "Oui" ;
			}
			else{
				isAoc = "Non" ;
			}
			
			if(result != null){
				sortie.println("<html><body>Variété :" + result.getLibelle() + "<p>Est Aoc? " + isAoc +  "</p></h1></body></html>");
				
			}
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
