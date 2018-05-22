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
		
		ModuleHelper modhelp = new ModuleHelper();
		FieldtypeHelper fieldhelp = new FieldtypeHelper();
		List<Module> mods = MySQLDB.allModules();
		List<Fieldtype> fields = MySQLDB.allFieldtypes();
		modhelp.setModules(mods);
		fieldhelp.setFieldtypes(fields);
		request.setAttribute("Modules",modhelp);
		request.setAttribute("Fieldtypes",fieldhelp);
		RequestDispatcher dispatcher=getServletContext().getRequestDispatcher("/create_template.jsp");
		dispatcher.include(request, response);
	}

}
