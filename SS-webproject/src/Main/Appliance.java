package Main;

public abstract class Appliance {
	private float usePerHour, hoursOfUse;
	
	
	Appliance(float usePerHour)
	{
		setAmpHours(usePerHour);
	}
	
	Appliance(float usePerHour,float hoursOfUse)
	{
		this(usePerHour);
		setHoursOfUse(hoursOfUse);
	}
	
	//SETS
	
	void setAmpHours(float usePerHour)
	{
		this.usePerHour = usePerHour;
	}
	
	void setHoursOfUse(float hoursOfUse)
	{
		this.hoursOfUse = hoursOfUse;
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
