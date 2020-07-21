package com.example.uproot;

public class Date  
{ 
    @Override
	public String toString() {
		return "Date [d=" + d + ", m=" + m + ", y=" + y + "]";
	}

	int d, m, y; 

    public Date(int d, int m, int y) 
    { 
        this.d = d; 
        this.m = m; 
        this.y = y; 
    } 
}