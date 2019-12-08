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
	
	void addACAppliance(float usePerHour)
	{
		apps[numOfApps++] = new ACAppliance(usePerHour);
	}
	boolean addACAppliance(float usePerHour, float hoursOfUse)
	{
		boolean correctAdd = new ACAppliance().setUsePerHourSetHoursOfUse(usePerHour, hoursOfUse);
		if(correctAdd)
			apps[numOfApps++] = new ACAppliance(usePerHour,hoursOfUse);
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

