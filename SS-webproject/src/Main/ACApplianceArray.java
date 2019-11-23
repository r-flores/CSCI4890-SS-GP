package Main;

public class ACApplianceArray {
	ACAppliance apps[];
	int numOfApps = 0;
	
	ACApplianceArray()
	{
		this(10);
	}
	ACApplianceArray(int numOfApps)
	{
		apps = new ACAppliance[numOfApps];
	}
	
	void addACAppliance(int usePerHour)
	{
		apps[numOfApps++] = new ACAppliance(usePerHour);
	}
	boolean addACAppliance(int usePerHour, int hoursOfUse)
	{
		boolean correctAdd = new ACAppliance().setUsePerHourSetHoursOfUse(usePerHour, hoursOfUse);
		if(correctAdd)
			apps[numOfApps++] = new ACAppliance(usePerHour,hoursOfUse);
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

