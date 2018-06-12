package lila.controller;

import java.io.IOException;
import java.io.PrintWriter;
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
 * Servlet implementation class FormModification
 */
@WebServlet("/FormModification")
public class FormModification extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FormModification() {
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
		
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		
		List<Fieldtype> fields = MySQLDB.allFieldtypes();
		
		
		//choper le max(nombre de field sur la page et nn pas dans la base)
		int max = Integer.parseInt(request.getParameter("max"));
		
		for (int i=0;i<max;i++){
				String Titre = request.getParameter("title" + i);
				String Description = request.getParameter("description" + i);
				int id = fields.get(i).getFieldTypeId();
				if(Titre == null){
					MySQLDB.delFieldtype(id);
				}else if(fields.get(i) != null) {
					if (id == i + 1){
						MySQLDB.updateFieldtype(id,Titre, Description);
					}
				}else{
					MySQLDB.addFieldtype(Titre,Description);
				}
		}
		
		RequestDispatcher dispatcher=getServletContext().getRequestDispatcher("/Controller");
		dispatcher.include(request, response);
		
	}

}
