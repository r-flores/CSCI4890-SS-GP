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
		String filePath = "SolarUsageEstData.csv";
		List<String> data = readFile(filePath);
		System.out.print(data);
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

}
