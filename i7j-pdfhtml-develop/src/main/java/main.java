import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.Scanner;

import com.itextpdf.html2pdf.ConverterProperties;
import com.itextpdf.html2pdf.HtmlConverter;

public class main {
	
	public static void main(String[] args) throws FileNotFoundException, IOException {
		// TODO Auto-generated method stub
		/*String pathToProjectFile="C://Users/thinkpad/Code/GitHubRepositories/Modulilas/";
		
		String resources = pathToProjectFile+"WebContent/";
		String html =readHtmlFile(pathToProjectFile+"WebContent/PDFTest.html")+"<img src=\"smile.png\">";//"<h1>Test</h1><p>Hello World LOLILOL</p>";
		String path=pathToProjectFile+"PDFCreator/";
		String pdf=String.format("%stest-01.pdf", path);
		
		File file = new File(path);
		file.mkdirs();
		
		ConverterProperties properties = new ConverterProperties();
    	properties.setBaseUri(resources);
<<<<<<< HEAD
		HtmlConverter.convertToPdf(html, new FileOutputStream(pdf), properties);
    	//HtmlConverter.convertToPdf(new FileInputStream(path+"test.html"), new FileOutputStream(pdf));*/
		htmlToPdf("PDFTest.html", "stest-02.pdf");
=======
		HtmlConverter.convertToPdf(html, new FileOutputStream(pdf), properties);*/
    	//HtmlConverter.convertToPdf(new FileInputStream(path+"test.html"), new FileOutputStream(pdf));
		htmlToPdf("PDFTest.html", "test-04.pdf");
>>>>>>> arthur
	}
	
	public static void htmlToPdf(String inputFileName, String outputFileName) throws FileNotFoundException, IOException {
		String pathToProjectFile="C://Users/thinkpad/Code/GitHubRepositories/Modulilas/";
		
		String resources = pathToProjectFile+"WebContent/";
<<<<<<< HEAD
		String html =readHtmlFile(pathToProjectFile+"WebContent/"+inputFileName);//"<h1>Test</h1><p>Hello World LOLILOL</p>";
		String path=pathToProjectFile+"PDFCreator/";
		String pdf=String.format("%"+outputFileName, path);
=======
		String html =readHtmlFile(pathToProjectFile+"WebContent/"+inputFileName)+"<img src=\"smile.png\">";//"<h1>Test</h1><p>Hello World LOLILOL</p>";
		String path=pathToProjectFile+"PDFCreator/";
		String pdf=String.format("%s"+outputFileName, path);
>>>>>>> arthur
		
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
