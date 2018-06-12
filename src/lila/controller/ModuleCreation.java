package lila.controller;

import java.io.IOException;
import java.sql.SQLException;
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
		
		String action = request.getParameter("action");
		
        try {
            switch (action) {
            case "creation":
            	InsertModuleInDB(request,response);
            	break;
            case "edition":
            	UpdateModuleInDB(request,response);
            default:
                
                break;
            }
        } catch (SQLException ex) {
            throw new ServletException(ex);
        }
    }
	
	
		public void InsertModuleInDB(HttpServletRequest request, HttpServletResponse response)
	            throws SQLException, IOException, ServletException {
		
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
		
			RequestDispatcher dispatcher=getServletContext().getRequestDispatcher("/sucess.jsp");
			dispatcher.include(request, response);
		}
		
		public void UpdateModuleInDB(HttpServletRequest request, HttpServletResponse response)
	            throws SQLException, IOException, ServletException {
		
			List<Fieldtype> fields = MySQLDB.allFieldtypes();
		
			int userID = 1;
			// récuperer l'user ID actuelle
		
			String code = request.getParameter("Identifiant du module");
		
			
			int moduleId = MySQLDB.getModuleID(code);
				
		
			for (int i=0;i<fields.size();i++) {
				String fieldObject = fields.get(i).getTitle();
				String content = request.getParameter(fieldObject);
				MySQLDB.updateContent(content, moduleId, fields.get(i).getFieldTypeId());
			
			}
		
			RequestDispatcher dispatcher=getServletContext().getRequestDispatcher("/sucess.jsp");
			dispatcher.include(request, response);
		}

	

}
