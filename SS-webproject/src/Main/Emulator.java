package Main;
import com.google.gson.*;


public class Emulator {
	public SolarPanel panel;
	public Battery battery;
	public ACApplianceArray ac;
	public DCApplianceArray dc;
	final int arraySize = 10;
	
	public Emulator()
	{
		panel = new SolarPanel();
		battery = new Battery();
		ac = new ACApplianceArray(10);
		dc = new DCApplianceArray(10);
		
	}

	public boolean setPanel(int usePerHour, int hoursOfUse)
	{
		return panel.setUsePerHourSetHoursOfUse(usePerHour, hoursOfUse);
	}
	
	public boolean setBattery(int min, int max, int current)
	{
		return battery.setMinMaxCurrent(min, max, current);
	}
	
	public boolean addACAppliance(int usePerHour, int hoursOfUse)
	{
		return ac.addACAppliance(usePerHour, hoursOfUse);
	}
	
	public boolean addDCAppliance(int usePerHour, int hoursOfUse)
	{
		return dc.addDCAppliance(usePerHour, hoursOfUse);
	}
	public float[] run(int days)
	{
		float[] batteryOverDays = new float[days];
		for( int i = 0; i < days; i++)
		{
			batteryOverDays[i] = battery.getCurrent();
			if(!battery.changeCurrent(panel.usePerDay() - ac.netPerDay() - dc.netPerDay()))
				batteryOverDays[i] = -1;
		}
		return batteryOverDays;
	}
	String runJSON(int days)
	{
		return new Gson().toJson(run(days));
		
	}
	public static void main(String[] args)
	{
		Emulator emu = new Emulator();
		emu.setPanel(100, 6);
		emu.setBattery(1000, 2000, 1500);
		emu.addACAppliance(30, 4);
		emu.addDCAppliance(190,3);
		float[] runOverDays = emu.run(10);
		for(int i=0;i<runOverDays.length;i++)
			System.out.println(runOverDays[i]);
		
		
	}
	
	
	
}
