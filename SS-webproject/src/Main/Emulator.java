package Main;

public class Emulator {
	SolarPanel panel;
	Battery battery;
	ACApplianceArray ac;
	DCApplianceArray dc;
	final int arraySize = 10;
	
	Emulator ()
	{
		panel = new SolarPanel();
		battery = new Battery();
		ac = new ACApplianceArray(10);
		dc = new DCApplianceArray(10);
		
	}

	boolean setPanel(int usePerHour, int hoursOfUse)
	{
		return panel.setUsePerHourSetHoursOfUse(usePerHour, hoursOfUse);
	}
	
	boolean setBattery(int min, int max, int current)
	{
		return battery.setMinMaxCurrent(min, max, current);
	}
	
	boolean addACAppliance(int usePerHour, int hoursOfUse)
	{
		return ac.addACAppliance(usePerHour, hoursOfUse);
	}
	
	boolean addDCAppliance(int usePerHour, int hoursOfUse)
	{
		return dc.addDCAppliance(usePerHour, hoursOfUse);
	}
	
	public static void main(String[] args)
	{
		Emulator emu = new Emulator();
	}
	
	
	
}
