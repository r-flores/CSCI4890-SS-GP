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
	
	void addACAppliance(int ampHours)
	{
		apps[numOfApps++] = new ACAppliance(ampHours);
	}
	void addACAppliance(int ampHours, int hoursOfUse)
	{
		apps[numOfApps++] = new ACAppliance(ampHours, hoursOfUse);
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

