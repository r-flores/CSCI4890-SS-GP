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
	
	void addDCAppliance(int usePerHour)
	{
		apps[numOfApps++] = new DCAppliance(usePerHour);
	}
	boolean addDCAppliance(int usePerHour, int hoursOfUse)
	{
		boolean correctAdd = new DCAppliance().setUsePerHourSetHoursOfUse(usePerHour, hoursOfUse);
		if(correctAdd)
			apps[numOfApps++] = new DCAppliance(usePerHour,hoursOfUse);
		return correctAdd;
	}
	
	int netPerDay()
	{	
		int net = 0;
		for(int i = 0; i < numOfApps;i++)
		{
			net += apps[i].usePerDay();
		}
		return net;
	}

}