package Main;

public class Battery
{
	int min,max,current;
	Battery()
	{
		this(0,2,1);
	}
	Battery(int min,int max, int current)
	{
		setMinMaxCurrent(min,max,current);
	}
	
	//SETS
	
	void setMin(int min)
	{
		this.min = min;
	}
	
	void setMax(int max)
	{
		this.max = max;
	}
	
	boolean setMinMax(int min, int max)
	{
		if( min < max)
		{
			setMin(min);
			setMax(max);
			return true;
		}
		return false;
	}
	
	boolean setCurrent(int current)
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
	
	boolean setMinMaxCurrent(int min, int max, int current)
	{
		return setMinMax(min,max) && setCurrent(current);
	}
	
	boolean changeCurrent(int change)
	{
		if(current + change > max)
			return setCurrent(max);
		else if (current + change < min)
			return setCurrent(min) && false;
		return setCurrent(current + change);
		
	}

}
