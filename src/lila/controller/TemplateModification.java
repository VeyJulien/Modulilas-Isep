package lila.controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import database.MySQLDB;

/**
 * Servlet implementation class TemplateModification
 */
@WebServlet("/TemplateModification")
public class TemplateModification extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public TemplateModification() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		MySQLDB.makeJDBCConnection();
		
		String action = request.getParameter("action");
		
		try {
            switch (action) {
            case "deleteTemplate":
            	DeleteTemplateFromDB(request,response);
            	break;
            case "switchTemplate":
            	SwitchTemplate(request,response);
            	break;
            case "addTemplate":
            	AddTemplate(request,response);
            	break;      
            default:
                
                break;
            }
        } catch (SQLException ex) {
            throw new ServletException(ex);
        }
		
	}
	
	
	public void DeleteTemplateFromDB(HttpServletRequest request, HttpServletResponse response)
            throws SQLException, IOException, ServletException {
		
		int templateID =  Integer.parseInt(request.getParameter("templateID"));
		
		MySQLDB.deleteTemplateFromDB(templateID);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("/Modifier_template");
        dispatcher.forward(request, response);
		
		
		
	}
	
	
	public void SwitchTemplate(HttpServletRequest request, HttpServletResponse response)
            throws SQLException, IOException, ServletException {
		
		int templateID =  Integer.parseInt(request.getParameter("templateID"));
		
		MySQLDB.switchTemplate(templateID);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("/Modifier_template");
        dispatcher.forward(request, response);
		
		
	}
	
	public void AddTemplate(HttpServletRequest request, HttpServletResponse response)
            throws SQLException, IOException, ServletException {
		
		String templateName =  request.getParameter("templateName");
		
		MySQLDB.addTemplate(templateName);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("/Modifier_template");
        dispatcher.forward(request, response);
		
		
	}
	
	
	
	
}
