package Main;

public class Battery
{
	float min,max,current;
	int cycle = 0;
	int cycleLife = 600;
	Battery()
	{
		this(0,2,1);
	}
	Battery(float min,float max, float current)
	{
		setMinMaxCurrent(min,max,current);
	}
	
	//SETS
	
	void setMin(float min)
	{
		this.min = min;
	}
	
	void setMax(float max)
	{
		this.max = max;
	}
	
	boolean setMinMax(float min, float max)
	{
		if( min < max)
		{
			setMin(min);
			setMax(max);
			return true;
		}
		return false;
	}
	
	boolean setCurrent(float current)
	{
			if(current <= max && current >= min)
			{
				this.current = current;
			}
			else if(current < min)
			{
				return false;
			}
			return true;
	}
	
	boolean setMinMaxCurrent(float min, float max, float current)
	{
		return setMinMax(min,max) && setCurrent(current);
	}
	
	boolean changeCurrent(float change)
	{
		change = change - 100*(float)cycle++/(float)cycleLife;
		if(current + change > max)
			return setCurrent(max);
		else if (current + change < min)
			return setCurrent(min) && false;
		return setCurrent(current + change);
		
	}
	
	float getCurrent()
	{
		return current;
	}
	
	public static void main(String[] args)
	{
		 Battery batt = new Battery(0,1000,500);
		 for( int i = 0; i < 100; i++)
		 {
			 System.out.println(batt.current);
			 batt.changeCurrent(10);
		 }
	}

}
