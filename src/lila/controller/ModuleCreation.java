package lila.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import database.Fieldtype;
import database.MySQLDB;

/**
 * Servlet implementation class ModuleCreation
 */
@WebServlet("/ModuleCreation")
public class ModuleCreation extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ModuleCreation() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		MySQLDB.makeJDBCConnection();
		
		List<Fieldtype> fields = MySQLDB.allFieldtypes();
		
		int userID = 1;
		// récuperer l'user ID actuelle
		
		String titre = request.getParameter("Titre du module");
		String code = request.getParameter("Identifiant du module");
		
		MySQLDB.addModule(titre, code, userID);
		
			
		int moduleId = MySQLDB.getModuleID(code);
				
		
		for (int i=0;i<fields.size();i++) {
			String fieldObject = fields.get(i).getTitle();
			String content = request.getParameter(fieldObject);
			MySQLDB.addContent(content, moduleId, fields.get(i).getFieldTypeId());
			
		}
		
		RequestDispatcher dispatcher=getServletContext().getRequestDispatcher("/success.jsp");
		dispatcher.include(request, response);
				
	}

}
