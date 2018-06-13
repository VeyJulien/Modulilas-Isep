package database;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;
 
/**
 * @author Crunchify.com 
 * Simple Hello World MySQL Tutorial on how to make JDBC connection, Add and Retrieve Data by App Shah
 * 
 */
 
public class MySQLDB {
 
	static Connection Conn = null;
	static PreparedStatement PrepareStat = null;
 
	
 
	public static void makeJDBCConnection() {
 
		try {
			Class.forName("com.mysql.jdbc.Driver");
			log("Congrats - Seems your MySQL JDBC Driver Registered!");
		} catch (ClassNotFoundException e) {
			log("Sorry, couldn't found JDBC driver. Make sure you have added JDBC Maven Dependency Correctly");
			e.printStackTrace();
			return;
		}
 
		try {
			// DriverManager: The basic service for managing a set of JDBC drivers.
			
			//Noe co : 	    Conn = DriverManager.getConnection("jdbc:mysql://localhost:8889/Modulilas", "root", "root");
			//Julien co :   Conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/modulilas", "root", "root");


			Conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/modulilas", "root", "");

			if (Conn != null) {
				log("Connection Successful! Enjoy. Now it's time to push data");
			} else {
				log("Failed to make connection!");
			}
		} catch (SQLException e) {
			log("MySQL Connection Failed!");
			e.printStackTrace();
			return;
		}
 
	}
 
	public static void addModule(String Titre, String Code, int userID) {
		
		
		try {
			String insertQueryStatement = "INSERT INTO module(moduleName, userId, code) VALUES (?,?,?);";
 
			PrepareStat = Conn.prepareStatement(insertQueryStatement);
			PrepareStat.setString(1, Titre);
			PrepareStat.setInt(2, userID);
			PrepareStat.setString(3, Code);
 
			// execute insert SQL statement
			PrepareStat.executeUpdate();
			log(Titre + " added successfully");
		} catch (
 
		SQLException e) {
			e.printStackTrace();
		}
	}
	
	public static void updateContent(String Content, Integer ModuleID, int FieldtypeID) {
		try {
			String insertQueryStatement = "UPDATE content SET content = ? WHERE moduleId = ? AND fieldTypeId = ?";
 
			PrepareStat = Conn.prepareStatement(insertQueryStatement);
			PrepareStat.setString(1, Content);
			PrepareStat.setInt(2, ModuleID);
			PrepareStat.setInt(3, FieldtypeID);
 
			// execute insert SQL statement
			PrepareStat.executeUpdate();
			log(Content + " updated successfully");
		} catch (
 
		SQLException e) {
			e.printStackTrace();
		}
	}
	
	public static void addContent(String Content, Integer ModuleID, int FieldtypeID) {
		 
		
		try {
			String insertQueryStatement = "INSERT  INTO  content(content,moduleId,fieldTypeId)  VALUES  (?,?,?)";
 
			PrepareStat = Conn.prepareStatement(insertQueryStatement);
			PrepareStat.setString(1, Content);
			PrepareStat.setInt(2, ModuleID);
			PrepareStat.setInt(3, FieldtypeID);
 
			// execute insert SQL statement
			PrepareStat.executeUpdate();
			log(Content + " added successfully");
		} catch (
 
		SQLException e) {
			e.printStackTrace();
		}
	}
	
	
public static void updateFieldtype(Integer FieldtypeID ,String Titre, String Description, int Format, int FormStep) {
		 
		
		try {
			String updateQueryStatement = "UPDATE fieldtype SET title = ?, description = ?, format = ?, formStep = ?";
			updateQueryStatement += " WHERE fieldTypeId = ?";
 
			PrepareStat = Conn.prepareStatement(updateQueryStatement);
			PrepareStat.setString(1, Titre);
			PrepareStat.setString(2, Description);
			PrepareStat.setInt(3, Format);
			PrepareStat.setInt(4, FormStep);
			PrepareStat.setInt(5, FieldtypeID);
 
			// execute insert SQL statement
			PrepareStat.executeUpdate();
			log(Titre + " modified successfully");
		} catch (
 
		SQLException e) {
			e.printStackTrace();
		}
	}

public static void addFieldtype(String Titre, String Description, int Format, int FormStep) {
	 
	
	try {
		String insertQueryStatement = "INSERT  INTO  fieldtype(title,description,format,formStep)  VALUES  (?,?,?,?)";

		PrepareStat = Conn.prepareStatement(insertQueryStatement);
		PrepareStat.setString(1, Titre);
		PrepareStat.setString(2, Description);
		PrepareStat.setInt(3, Format);
		PrepareStat.setInt(4, FormStep);

		// execute insert SQL statement
		PrepareStat.executeUpdate();
		log(Titre + " added successfully");
		
		String selectQueryStatement = "SELECT fieldTypeId FROM fieldtype WHERE title = ?";
		
		PrepareStat = Conn.prepareStatement(selectQueryStatement);
		PrepareStat.setString(1, Titre);
		
		ResultSet rs = PrepareStat.executeQuery();
		
		int fieldID=0;
		
		while(rs.next()) {
			fieldID = rs.getInt("fieldTypeId");
		}
		
		List<Template> allViews = AllTemplate(); 
		
		for (Template view : allViews){
			String insertQueryStatement1 = "INSERT INTO viewfieldtype(viewId, fieldTypeId, isActive) VALUES (?,?,1)";           
			
			PrepareStat = Conn.prepareStatement(insertQueryStatement1);
			PrepareStat.setInt(1, view.getViewId());
			PrepareStat.setInt(2, fieldID);
 
			// execute insert SQL statement
			PrepareStat.executeUpdate();
		}
	} catch (

	SQLException e) {
		e.printStackTrace();
	}
}

public static void delFieldtype(int ID) {
	 
	
	try {
		String delQueryStatement2 = "DELETE FROM content WHERE fieldTypeId= ?";

		PrepareStat = Conn.prepareStatement(delQueryStatement2);
		PrepareStat.setInt(1, ID);
		
		// execute insert SQL statement
		PrepareStat.executeUpdate();
		log(ID + " deleted successfully");
		
		String delQueryStatement3 = "DELETE FROM viewfieldtype WHERE fieldTypeId= ?";

		PrepareStat = Conn.prepareStatement(delQueryStatement3);
		PrepareStat.setInt(1, ID);

		// execute insert SQL statement
		PrepareStat.executeUpdate();
		log(ID + " deleted successfully");
		
		String delQueryStatement = "DELETE  FROM  fieldtype  WHERE fieldTypeId = ?";
		
		PrepareStat = Conn.prepareStatement(delQueryStatement);
		PrepareStat.setInt(1, ID);

		// execute insert SQL statement
		PrepareStat.executeUpdate();
		log(ID + " deleted successfully");
	} catch (

	SQLException e) {
		e.printStackTrace();
	}
}

public static void updateStep(String Titre, int Step) {
	 
	
	try {
		String updateQueryStatement = "UPDATE step SET titre = ?";
		updateQueryStatement += " WHERE formStep = ?";

		PrepareStat = Conn.prepareStatement(updateQueryStatement);
		PrepareStat.setString(1, Titre);
		PrepareStat.setInt(2, Step);

		// execute insert SQL statement
		PrepareStat.executeUpdate();
		log(Titre + " modified successfully");
	} catch (

	SQLException e) {
		e.printStackTrace();
	}
}
	
public static int getModuleID(String Code) {
		
		int id = -1;
		try {
			String insertQueryStatement = "SELECT moduleId FROM module WHERE code = ? ";
 
			PrepareStat = Conn.prepareStatement(insertQueryStatement);
			PrepareStat.setString(1, Code);
 
			// execute insert SQL statement
			
			ResultSet rs = PrepareStat.executeQuery();
			while (rs.next()) {
				id = rs.getInt("moduleId");
			}
			
			
		} catch (
				 
		SQLException e) {
			e.printStackTrace();
			
		}
		
		return id;
}
 
	public static List<Module> allModules() {
		
		List<Module> allmodules = new ArrayList<>();
		
		
		try {
			// MySQL Select Query Tutorial
			String getQueryStatement = "SELECT * FROM module";
			
			
			PrepareStat = Conn.prepareStatement(getQueryStatement);
			
 
			// Execute the Query, and get a java ResultSet
			ResultSet rs = PrepareStat.executeQuery();		
 
			// Let's iterate through the java ResultSet
			while (rs.next()) {
				String Titre = rs.getString("moduleName");
				String Code = rs.getString("code");
				int Annee = 0;
				String firstChar = "x";
				String Enseignement = "error";
				
				try {
					Annee = Integer.parseInt(String.valueOf(Code.charAt(3)));
				} catch (NumberFormatException e) {}
				
				try {
					firstChar = String.valueOf(Code.charAt(1));
				} catch (NumberFormatException e) {}
				
				
				switch (firstChar) {
					case "I":
						Enseignement = "Informatique";
						break;
					case "E":
						Enseignement = "&#201;l&#233;ctronique";
						break;
					case "R":
						Enseignement = "R&#233;seaux";
						break;
					case "T":
						Enseignement = "T&#233;l&#233;com";
						break;
					case "G":
						Enseignement = "Signal";
						break;
						
				}
				
				
				Module mod = new Module();
				
				mod.setTitre(Titre);
				mod.setCode(Code);
				mod.setEnseignement(Enseignement);
				mod.setAnnee(Annee);
				
				allmodules.add(mod);			
				
			}
 
		} catch (
 
		SQLException e) {
			e.printStackTrace();
		}
		return allmodules;
	}
	
	public static List<Fieldtype> allFieldtypes() {
		
		List<Fieldtype> allfieldtypes = new ArrayList<>();
		
		
		try {
			// MySQL Select Query Tutorial
			String getQueryStatement = "SELECT * FROM fieldtype";
			
			PrepareStat = Conn.prepareStatement(getQueryStatement);
			
			// Execute the Query, and get a java ResultSet
			ResultSet rs = PrepareStat.executeQuery();		
 
			// Let's iterate through the java ResultSet
			while (rs.next()) {
				int FieldTypeId = rs.getInt("fieldTypeId");
				String Title = rs.getString("title");
				String Description = rs.getString("description");
				int Format = rs.getInt("format");
				int FormStep = rs.getInt("formstep");
				
				Fieldtype field = new Fieldtype();
				
				field.setFieldTypeId(FieldTypeId);
				field.setTitle(Title);
				field.setDescription(Description);
				field.setFormat(Format);
				field.setFormStep(FormStep);
				
				allfieldtypes.add(field);	
				
			}
 
		} catch (
 
		SQLException e) {
			e.printStackTrace();
		}
		return allfieldtypes;
	}
	
	public static List<User> allUsers() {
		
		List<User> allUsers = new ArrayList<>();
		
		
		try {
			// MySQL Select Query Tutorial
			String getQueryStatement = "SELECT * FROM user";
			
			PrepareStat = Conn.prepareStatement(getQueryStatement);
 
			// Execute the Query, and get a java ResultSet
			ResultSet rs = PrepareStat.executeQuery();		
 
			// Let's iterate through the java ResultSet
			while (rs.next()) {
				String mail = rs.getString("mail");
				String firstName = rs.getString("firstName");
				String lastName = rs.getString("lastName");
				int status = rs.getInt("status");

				
				User users = new User();
				
				users.setMail(mail);
				users.setFirstName(firstName);
				users.setLastName(lastName);
				users.setStatus(status);
				
				allUsers.add(users);	
				
			}
 
		} catch (
 
		SQLException e) {
			e.printStackTrace();
		}
		return allUsers;
	}
	
public static List<Step> allSteps() {
		
		List<Step> allSteps = new ArrayList<>();
		
		
		try {
			// MySQL Select Query Tutorial
			String getQueryStatement = "SELECT * FROM step";
			
			PrepareStat = Conn.prepareStatement(getQueryStatement);
			
			// Execute the Query, and get a java ResultSet
			ResultSet rs = PrepareStat.executeQuery();		
 
			// Let's iterate through the java ResultSet
			while (rs.next()) {
				String titre = rs.getString("titre");
				int formStep = rs.getInt("formStep");

				
				Step steps = new Step();
				
				steps.setTitre(titre);
				steps.setFormStep(formStep);
				
				allSteps.add(steps);	
				
			}
 
		} catch (
 
		SQLException e) {
			e.printStackTrace();
		}
		return allSteps;
	}

public static List<ViewFieldType> allViewFieldType() {
	
	List<ViewFieldType> allViewFieldTypes = new ArrayList<>();
	
	
	try {
		// MySQL Select Query Tutorial
		String getQueryStatement = "SELECT * FROM viewfieldtype";
		
		PrepareStat = Conn.prepareStatement(getQueryStatement);
		
		// Execute the Query, and get a java ResultSet
		ResultSet rs = PrepareStat.executeQuery();		

		// Let's iterate through the java ResultSet
		while (rs.next()) {
			int viewFieldTypeId = rs.getInt("viewFieldTypeId");
			int viewId = rs.getInt("viewId");
			int fieldTypeId = rs.getInt("fieldTypeId");
			int isActive = rs.getInt("isActive");

			
			ViewFieldType viewfieldtypes = new ViewFieldType();
			
			viewfieldtypes.setFieldTypeId(fieldTypeId);
			viewfieldtypes.setViewId(viewId);
			viewfieldtypes.setViewFieldTypeId(viewFieldTypeId);
			viewfieldtypes.setIsActive(isActive);
			
			allViewFieldTypes.add(viewfieldtypes);	
			
		}

	} catch (

	SQLException e) {
		e.printStackTrace();
	}
	return allViewFieldTypes;
}
 
	// Simple log utility
	private static void log(String string) {
		System.out.println(string);
 
	}

//Affiche le nom de la template
public static List<Template> AllTemplate() {
	
	List<Template> allTemplate = new ArrayList<>();
	
	
	try {
		// MySQL Select Query Tutorial
		String getQueryStatement = "SELECT * FROM view";
		
		PrepareStat = Conn.prepareStatement(getQueryStatement);
		
		// Execute the Query, and get a java ResultSet
		ResultSet rs = PrepareStat.executeQuery();		

		// Let's iterate through the java ResultSet
		while (rs.next()) {
			int viewId = rs.getInt("viewId");
			String viewName = rs.getString("viewName");
			int active = rs.getInt("isActive");

			
			Template template = new Template();
			
			template.setViewId(viewId);
			template.setViewName(viewName);
			template.setIsActive(active);
			
			allTemplate.add(template);	
			
		}

	} catch (

	SQLException e) {
		e.printStackTrace();
	}
	return allTemplate;
}


public static List<String>[] get_ListModuleData_And_ListModuleFieldTypeId(int id) {
	List<String>[] result = new LinkedList[2];
	result[0]=new LinkedList();
	result[1]=new LinkedList();
	try {
		String insertQueryStatement = "SELECT content, fieldTypeId FROM content WHERE moduleId = ? ";

		PrepareStat = Conn.prepareStatement(insertQueryStatement);
		PrepareStat.setInt(1, id);
		
		ResultSet rs = PrepareStat.executeQuery();
		
		while(rs.next()) {
			result[0].add(rs.getString("content"));
			result[1].add(rs.getString("fieldTypeId"));
		}
		 		
	} catch (
			 
	SQLException e) {
		e.printStackTrace();
		
	}
	
	return result;
}

public static String dataToHtml(int id) {
	String html="<li>";
	List<String>[] listModuleData_And_ListModuleFieldTypeId =get_ListModuleData_And_ListModuleFieldTypeId(id);
	List<String> titles=new LinkedList();
	String sqlComplement="";
	
	for (String moduleFieldTypeID : listModuleData_And_ListModuleFieldTypeId[1] ) {
		sqlComplement+=moduleFieldTypeID+" OR fieldTypeId= ";
	}
		
	sqlComplement= sqlComplement.substring(0, sqlComplement.length()-17);
	System.out.println(sqlComplement);
	try{
		String insertQueryStatement = "SELECT title FROM fieldtype WHERE fieldTypeId = "+sqlComplement;

		PrepareStat = Conn.prepareStatement(insertQueryStatement);
		//PrepareStat.setString(1, sqlComplement);
		
		ResultSet rs = PrepareStat.executeQuery();
		
		while(rs.next()) {
			titles.add(rs.getString("title"));
		}
		
		
		
		for(int i=0; i<titles.size();i++)
			html+="<ul>"+titles.get(i)+": <br>"+listModuleData_And_ListModuleFieldTypeId[0].get(i)+"</ul>";
		html+="</li>";
	}
	catch(SQLException e) {
		e.printStackTrace();
	}
	return html;
	
}

public static String catalogueInHtml() {
	String html="";

	try{
		String insertQueryStatement = "SELECT moduleId,code FROM module ";

		PrepareStat = Conn.prepareStatement(insertQueryStatement);
		
		ResultSet rs = PrepareStat.executeQuery();
		
		while(rs.next()) {
			html+="<h2> Module "+rs.getString("code")+"</h2></br>"+dataToHtml(rs.getInt("moduleId"));
		}
	
	}
	catch(SQLException e) {
		e.printStackTrace();
	}
	return html;
}



public static void deleteTemplateFromDB(int templateID){
    
    try {			
    	
    	
    		String delQueryStatement0 = "DELETE FROM viewfieldtype WHERE viewId = ?";
    		
    		PrepareStat = Conn.prepareStatement(delQueryStatement0);
    		
    		PrepareStat.setInt(1, templateID);
			PrepareStat.executeUpdate();
			
			
    		
			String delQueryStatement = "DELETE FROM view WHERE viewId = ?";
			
			PrepareStat = Conn.prepareStatement(delQueryStatement);		
			
			PrepareStat.setInt(1, templateID);
			PrepareStat.executeUpdate();
    		log(templateID + " deleted successfully");
            
 
		} catch (
 
		SQLException e) {
			e.printStackTrace();
		}

}


public static void switchTemplate(int templateID){
    
    try {			
			String updateQueryStatement1 = "UPDATE view SET isActive = 0";
            String updateQueryStatement2 = "UPDATE view SET isActive = 1 WHERE viewId = ?";           
			
			PrepareStat = Conn.prepareStatement(updateQueryStatement1);
			PrepareStat.executeUpdate();
			
            
            PrepareStat = Conn.prepareStatement(updateQueryStatement2);
            PrepareStat.setInt(1, templateID);
            PrepareStat.executeUpdate();
    		log(templateID + " deleted successfully");
            
           
			       
 
		} catch (
 
		SQLException e) {
			e.printStackTrace();
		}

}


public static void addTemplate(String templateName){
    
    try {			
			String insertQueryStatement = "INSERT INTO view(viewName, isActive) VALUES (?,0)";           
			
			PrepareStat = Conn.prepareStatement(insertQueryStatement);
			PrepareStat.setString(1, templateName);
 
			// execute insert SQL statement
			PrepareStat.executeUpdate();
			log(templateName + " added successfully");
			
			String selectQueryStatement = "SELECT viewId FROM view WHERE viewName = ?";
			
			PrepareStat = Conn.prepareStatement(selectQueryStatement);
			PrepareStat.setString(1, templateName);
			
			ResultSet rs = PrepareStat.executeQuery();
			
			int templateID=0;
			
			while(rs.next()) {
				templateID = rs.getInt("viewId");
			}
			
			
			List<ViewFieldType> allViewFieldTypes = allViewFieldType();
			
			for (ViewFieldType ft : allViewFieldTypes) {
				
				String insertQueryStatement1 = "INSERT INTO viewfieldtype(viewId, fieldTypeId, isActive) VALUES (?,?,1)";           
				
				PrepareStat = Conn.prepareStatement(insertQueryStatement1);
				PrepareStat.setInt(1, templateID);
				PrepareStat.setInt(2, ft.getFieldTypeId());
	 
				// execute insert SQL statement
				PrepareStat.executeUpdate();
			}
			
			
			
			
			
			
            
           
			       
 
		} catch (
 
		SQLException e) {
			e.printStackTrace();
		}

}


}