package Main;

import java.io.File;
import java.io.FileReader;
import java.util.ArrayList;
import java.util.List;
import java.io.File;
import java.io.FileNotFoundException;
import java.util.Scanner;
import java.util.Scanner;

public class DataParser {
	
	public static void main(String[] args)
	{
		String outAC = "";
		String outDC = "";
		String input = "";
		String filePath = "SolarUsageEstData.csv";
		List<String> data = readFile(filePath);
	}
	
	public static List<String> readFile(String filePath) {
		List<String> contents = new ArrayList<String>();
		try {
			Scanner scan = new Scanner(new File(filePath));
			scan.useDelimiter(",");
			while (scan.hasNext()) 
	        {
				contents.add(scan.next());
	            //System.out.print(scan.next() + "|");
	        }
			scan.close();
		} catch (FileNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return contents;
	   }
	
	public String outputAC() {
		return null;
	}
	
	public String outputDC() {
		return null;
	}
	
	public String input() {
		return null;
	}

}
