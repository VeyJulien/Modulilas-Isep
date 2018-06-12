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
			//Julien co : 	Conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/modulilas", "root", "root");
			
			Conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/modulilas", "root", "root");
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
	
	MySQLDB.makeJDBCConnection();
	
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

public static String[][] getModuleData(int id) {
	String[][] result = new String[2][];
	String content = "";
	String fieldIds = "";
	try {
		String insertQueryStatement = "SELECT content, fieldTypeId FROM content WHERE moduleId = ? ";

		PrepareStat = Conn.prepareStatement(insertQueryStatement);
		PrepareStat.setString(1, Integer.toString(id));
		
		ResultSet rs = PrepareStat.executeQuery();
		
		while(rs.next()) {
			content+=rs.getString("content") + '§';
			fieldIds +=rs.getString("fieldTypeId") + "§";
		}
		result[0]=content.split("§");
		result[1]=fieldIds.split("§");
		fieldIds = fieldIds.substring(0, fieldIds.length() - 18);
		 
		//System.out.println(fieldIds);
		
	} catch (
			 
	SQLException e) {
		e.printStackTrace();
		
	}
	
	return result;
}



}