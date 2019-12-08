package Main;

public class DCApplianceArray {
	DCAppliance apps[];
	int numOfApps = 0;
	
	DCApplianceArray()
	{
		this(10);
	}
	DCApplianceArray(int numOfApps)
	{
		apps = new DCAppliance[numOfApps];
	}
	
	void addDCAppliance(float usePerHour)
	{
		apps[numOfApps++] = new DCAppliance(usePerHour);
	}
	boolean addDCAppliance(float usePerHour, float hoursOfUse)
	{
		boolean correctAdd = new DCAppliance().setUsePerHourSetHoursOfUse(usePerHour, hoursOfUse);
		if(correctAdd)
			apps[numOfApps++] = new DCAppliance(usePerHour,hoursOfUse);
		return correctAdd;
	}
	
	float netPerDay()
	{	
		float net = 0;
		for(int i = 0; i < numOfApps;i++)
		{
			net += apps[i].usePerDay();
		}
		return net;
	}

}