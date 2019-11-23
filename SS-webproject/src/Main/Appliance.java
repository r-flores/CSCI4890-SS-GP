package Main;

public abstract class Appliance {
	private float usePerHour, hoursOfUse;
	
	
	Appliance()
	{
		this(0,0);
	}
	
	Appliance(float usePerHour)
	{
		setUsePerHour(usePerHour);
	}
	
	Appliance(float usePerHour,float hoursOfUse)
	{
		setUsePerHour(usePerHour);
		setHoursOfUse(hoursOfUse);
	}
	
	//SETS
	
	boolean setUsePerHour(float usePerHour)
	{
		boolean correctSet = usePerHour > 0;
		this.usePerHour = correctSet ? usePerHour : 0;
		return correctSet;
	}
	
	boolean setHoursOfUse(float hoursOfUse)
	{
		boolean correctSet = hoursOfUse > 0;
		this.hoursOfUse = correctSet ? hoursOfUse : 0;
		return correctSet;
	}
	
	boolean setUsePerHourSetHoursOfUse(float usePerHour, float hoursOfUse)
	{
		return setUsePerHour(usePerHour) && setHoursOfUse(hoursOfUse);
	}
	
	
	
	//GETS
	
	float getUsePerHour()
	{
		return usePerHour;
	}
	
	float getHoursOfUse()
	{
		return hoursOfUse;
	}
	
	float usePerDay()
	{
		return usePerHour * hoursOfUse;
	}

}
