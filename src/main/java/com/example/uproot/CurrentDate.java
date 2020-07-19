package com.example.uproot;
 
import java.text.SimpleDateFormat;
import java.util.Date;

public class CurrentDate 
{
	Date d1= new Date();
	public String Curentyear()
	{
		SimpleDateFormat ft = new SimpleDateFormat("yyyy");
		String year = ft.format(d1);
		return year;
	}
	public String Currentmonth()
	{
		SimpleDateFormat ft2 = new SimpleDateFormat("MM");
		String month = ft2.format(d1);
		return month;
	}
	
	public String Currentdate()
	{
		SimpleDateFormat ft3 = new SimpleDateFormat("dd");
		String date = ft3.format(d1);
		return date;
	}
	
}
