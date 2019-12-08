package Main;


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
		ac = new ACApplianceArray(arraySize);
		dc = new DCApplianceArray(arraySize);
		
	}

	public boolean setPanel(float usePerHour, float hoursOfUse)
	{
		return panel.setUsePerHourSetHoursOfUse(usePerHour, hoursOfUse);
	}
	
	public boolean setBattery(float DoDlimit, float AmpHours, float DoDCurrent)
	{
		float watts = AmpHours * (float) 12;
		return battery.setMinMaxCurrent(watts * DoDlimit, watts, watts * DoDCurrent);
	}
	
	public boolean addACAppliance(float usePerHour, float hoursOfUse)
	{
		return ac.addACAppliance(usePerHour, hoursOfUse);
	}
	
	public boolean addDCAppliance(float usePerHour, float hoursOfUse)
	{
		return dc.addDCAppliance(usePerHour, hoursOfUse);
	}
	public Double[] run(int days)
	{
		Double[] batteryOverDays = new Double[days];
		for( int i = 0; i < days; i++)
		{
			batteryOverDays[i] = new Double(battery.getCurrent());
			if(!battery.changeCurrent(panel.usePerDay() - ac.netPerDay() - dc.netPerDay()))
				batteryOverDays[i] = -1.0;
		}
		return batteryOverDays;
	}
	
	public static void main(String[] args)
	{
		/*
		Emulator emu = new Emulator();
		emu.setPanel(100, 6);
		emu.setBattery(1000, 2000, 1500);
		emu.addACAppliance(95, 6);
		double[] runOverDays = emu.run(100);
		for(int i=0;i<runOverDays.length;i++)
			System.out.println(runOverDays[i]);
		*/
	}
	
	/*
	 * Emulator emu = new Emulator();
						emu.setPanel(100, 6);
						emu.setBattery(1000, 2000, 1500);
						emu.addACAppliance(30, 4);
						emu.addDCAppliance(190,3);
						
						
						Gson gsonObj = new Gson();
							Map<Object,Object> map = null;
							List<Map<Object,Object>> list = new ArrayList<Map<Object,Object>>();
							float[] nums = emu.run(10);
							for(int i = 0; i < nums.length; i++)
							{
								map = new HashMap<Object,Object>(); map.put("label", "day" + i); map.put("y", nums[i]); list.add(map);
							}
	 */
	
	
	
}
