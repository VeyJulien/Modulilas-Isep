package lila.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import database.*;

/**
 * Servlet implementation class Controller
 */
@WebServlet("/Controller")
public class Controller extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Controller() {
        super();
        // TODO Auto-generated constructor stub
    }

    /**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String action = request.getServletPath();
		 
        try {
            switch (action) {
            case "/Chercher_un_module":
                find(request, response);
                break;
            case "/Gerer_les_champs":
                createTemplate(request, response);
                break;
            case "/Espace_personnel":
                espacePerso(request, response);
                break;
            case "/Menu":
            		menu(request, response);
            		break;
            case "/Creer_un_module":
            		creationMod(request, response);
            		break;
            case "/Modifier_template":
            		modTemplate(request, response);
            		break;
            default:
                menu(request, response);
                break;
            }
        } catch (SQLException ex) {
            throw new ServletException(ex);
        }
    }
 
	private void find(HttpServletRequest request, HttpServletResponse response)
            throws SQLException, IOException, ServletException {
		ModuleHelper modhelp = new ModuleHelper();
		List<Module> mods = MySQLDB.allModules();
		modhelp.setModules(mods);
		request.setAttribute("Modules",modhelp);
		RequestDispatcher dispatcher=getServletContext().getRequestDispatcher("/find.jsp");
		dispatcher.include(request, response);
    }
	
	private void createTemplate(HttpServletRequest request, HttpServletResponse response)
            throws SQLException, IOException, ServletException {
		FieldtypeHelper fieldhelp = new FieldtypeHelper();
		List<Fieldtype> fields = MySQLDB.allFieldtypes();
		fieldhelp.setFieldtypes(fields);
		request.setAttribute("Fieldtypes",fieldhelp);
		RequestDispatcher dispatcher=getServletContext().getRequestDispatcher("/create_template.jsp");
		dispatcher.include(request, response);
    }
	
	private void espacePerso(HttpServletRequest request, HttpServletResponse response)
            throws SQLException, IOException, ServletException {
		
		UserHelper userHelp = new UserHelper();
		List<User> listUsers = MySQLDB.allUsers();
		userHelp.setListUsers(listUsers);
		request.setAttribute("Users",userHelp);
		RequestDispatcher dispatcher=getServletContext().getRequestDispatcher("/change.jsp");
		dispatcher.include(request, response);
    }

	private void menu(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        RequestDispatcher dispatcher = request.getRequestDispatcher("/menu.jsp");
        dispatcher.forward(request, response);
    }
	
	private void creationMod(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        RequestDispatcher dispatcher = request.getRequestDispatcher("/create_module.jsp");
        dispatcher.forward(request, response);
    }
	
	private void modTemplate(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        RequestDispatcher dispatcher = request.getRequestDispatcher("/modify_template.jsp");
        dispatcher.forward(request, response);
    }
	
}
