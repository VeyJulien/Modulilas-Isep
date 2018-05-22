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
				int Ann�e = rs.getInt("Ann�e");
				
				Module mod = new Module();
				
				mod.setTitre(Titre);
				mod.setCode(Code);
				mod.setEnseignement(Enseignement);
				mod.setAnn�e(Ann�e);
				
				allmodules.add(mod);
				
				
			}
 
		} catch (
 
		SQLException e) {
			e.printStackTrace();
		}
		return allmodules;
	}
	
	
 
	// Simple log utility
	private static void log(String string) {
		System.out.println(string);
 
	}
}