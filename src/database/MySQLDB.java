package database;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
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
			Conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/Modulilas", "root", "root");
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
 
	public static void addDataToDB(String Titre, int Code) {
 
		try {
			String insertQueryStatement = "INSERT  INTO  module  VALUES  (?,?)";
 
			PrepareStat = Conn.prepareStatement(insertQueryStatement);
			PrepareStat.setString(1, Titre);
			PrepareStat.setInt(2, Code);
 
			// execute insert SQL statement
			PrepareStat.executeUpdate();
			log(Titre + " added successfully");
		} catch (
 
		SQLException e) {
			e.printStackTrace();
		}
	}
 
	public static List<Module> allModules() {
		
		List<Module> allmodules = new ArrayList<>();
		
		MySQLDB.makeJDBCConnection();
		
		try {
			// MySQL Select Query Tutorial
			String getQueryStatement = "SELECT * FROM module";
			
			
			PrepareStat = Conn.prepareStatement(getQueryStatement);
			
 
			// Execute the Query, and get a java ResultSet
			ResultSet rs = PrepareStat.executeQuery();		
 
			// Let's iterate through the java ResultSet
			while (rs.next()) {
				String Titre = rs.getString("Titre");
				String Code = rs.getString("Code");
				String Enseignement = rs.getString("Enseignement");
				int Annee = rs.getInt("Annee");
				
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
		
		MySQLDB.makeJDBCConnection();
		
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
		
		MySQLDB.makeJDBCConnection();
		
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
 
	// Simple log utility
	private static void log(String string) {
		System.out.println(string);
 
	}
}