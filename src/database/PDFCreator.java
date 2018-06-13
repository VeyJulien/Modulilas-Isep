package database;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.Scanner;

import com.itextpdf.html2pdf.ConverterProperties;
import com.itextpdf.html2pdf.HtmlConverter;

public class PDFCreator {
	public static void htmlToPdf(String html, String outputFileName) throws FileNotFoundException, IOException {
		String pathToProjectFile="C://Users/thinkpad/Code/GitHubRepositories/Modulilas/";//"D://Documents/GitHub/Modulilas-Isep/";
		//System.out.println(System.getProperty("user.dir"));
		
		
		String resources = pathToProjectFile+"WebContent/"; //fichier danslequel il faut mettre les ressources (images, etc...) utilisée par le créateur de pdf
		//String html =readHtmlFile(pathToProjectFile+"WebContent/"+inputFileName);
		String path=pathToProjectFile+"PDFCreator/";
		String pdf=String.format("%s"+outputFileName, path);
		
		File file = new File(path);
		file.mkdirs();
		
		ConverterProperties properties = new ConverterProperties();
    	properties.setBaseUri(resources);
		HtmlConverter.convertToPdf(html, new FileOutputStream(pdf), properties);
	}
	
	public static String readHtmlFile(String filePath) {
		String html="";
		
		try {
            Scanner input = new Scanner(System.in);

            File file = new File(filePath);

            input = new Scanner(file);


            while (input.hasNextLine()) {
                String line = input.nextLine();
                html+=" "+line;
            }
            input.close();

        } catch (Exception ex) {
            ex.printStackTrace();
        }
		
		return html;
	}

}
