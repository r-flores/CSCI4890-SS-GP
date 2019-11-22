package Main;

public class Emulator {
	public static void main(String[] args)
	{
		DCApplianceArray DCA = new DCApplianceArray(10);
		SolarPanel panel = new SolarPanel(100,8);
		Battery battery = new Battery(1000,2000,1500);
		DCA.addDCAppliance(801, 1);
		while(battery.setCurrent(battery.current + panel.ampsPerDay() - DCA.netPerDay()))
			System.out.println(battery.current);
		System.out.println("broken");
	}
	
	Emulator(int min, int max, int current, int )
	{
		
	}
	

}
