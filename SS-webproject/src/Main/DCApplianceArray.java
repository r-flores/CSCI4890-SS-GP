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
	
	void addDCAppliance(int ampHours)
	{
		apps[numOfApps++] = new DCAppliance(ampHours);
	}
	void addDCAppliance(int ampHours, int hoursOfUse)
	{
		apps[numOfApps++] = new DCAppliance(ampHours, hoursOfUse);
	}
	
	int netPerDay()
	{	
		int net = 0;
		for(int i = 0; i < numOfApps;i++)
		{
			net += apps[i].ampsPerDay();
		}
		return net;
	}

}
