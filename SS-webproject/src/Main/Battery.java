package Main;



public class Battery
{
	int min,max,current;
	Battery(int min,int max, int current)
	{
		this.min = min;
		this.max = max;
		this.current = current;
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
	
	boolean changeCurrent(int change)
	{
		if(current + change > max)
			return setCurrent(max);
		else if (current + change < min)
			return setCurrent(min) && false;
		return setCurrent(current + change);
		
	}

}
