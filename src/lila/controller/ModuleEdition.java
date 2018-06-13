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
import database.FieldtypeHelper;
import database.MySQLDB;
import database.Step;
import database.StepHelper;

/**
 * Servlet implementation class ModuleCreation
 */
@WebServlet("/ModuleEdition")
public class ModuleEdition extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ModuleEdition() {
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
		
		
		

        try {
			editModule(request, response);
		} catch (SQLException e) {
			e.printStackTrace();
		}
             


    }
	
	//TODO finish !
		private void editModule(HttpServletRequest request, HttpServletResponse response)
	            throws SQLException, IOException, ServletException {
			
			String code = request.getParameter("code");
			int moduleId = MySQLDB.getModuleID(code);
			
			FieldtypeHelper fieldhelp = new FieldtypeHelper();
			StepHelper stephelp = new StepHelper();
			List<Fieldtype> fields = MySQLDB.allFieldtypes();
			List<Step> steps = MySQLDB.allSteps();
			List<String>[] datas = MySQLDB.get_ListModuleData_And_ListModuleFieldTypeId(moduleId);
			fieldhelp.setFieldtypes(fields);
			stephelp.setSteps(steps);
			request.setAttribute("Fieldtypes",fieldhelp);
			request.setAttribute("Steps", stephelp);
			request.setAttribute("Datas", datas);
			
			RequestDispatcher dispatcher=getServletContext().getRequestDispatcher("/edit_module.jsp");
			dispatcher.include(request, response);
	    }

	

}
