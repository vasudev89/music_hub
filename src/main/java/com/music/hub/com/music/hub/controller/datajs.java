package com.music.hub.com.music.hub.controller;

import java.util.ArrayList;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import org.hibernate.cfg.AnnotationConfiguration;

public class datajs
{
	ArrayList al = new ArrayList();
	
	datajs()
	{
		al.add( new item("P_1","Accessories","Metronome","644","11","Tune in with this","resources/images/accessories/acc1.jpg") );
		al.add( new item("P_2","Accessories","Metronome","704","20","Excellent Quality","resources/images/accessories/acc2.jpg") );
		al.add( new item("P_3","Guitar","Givson","415","11","Indian Make","resources/images/guitars/guitar1.jpg") );
		al.add( new item("P_4","Accessories","Metronome","72","20","Electronic","resources/images/accessories/acc3.jpg") );
		al.add( new item("P_5","Guitar","Givson","596","4","Indian Make","resources/images/guitars/guitar2.jpg") );
		al.add( new item("P_6","Piano","Kawai","526","12","Japanese New Hammer Action","resources/images/pianos/piano1.jpg") );
		al.add( new item("P_7","Piano","Roland","810","10","Upright Piano","resources/images/pianos/piano2.jpg") );
		al.add( new item("P_8","Guitar","Givson","99","7","Indian Make Model 215","resources/images/guitars/guitar3.jpg") );
		al.add( new item("P_9","Piano","Kawai","562","18","Japanese New Hammer Action","resources/images/pianos/piano3.jpg") );
		al.add( new item("P_10","Accessories","Foot Pedal","848","17","Good Quality","resources/images/accessories/acc4.jpg") );
		al.add( new item("P_11","Guitar","Givson","610","11","Indian Make Model 125","resources/images/guitars/guitar4.jpg") );
		al.add( new item("P_12","Piano","Kawai","621","18","Japanese New Hammer Action","resources/images/pianos/piano4.jpg") );
		al.add( new item("P_13","Guitar","Gibson","690","12","American 6 String Acoustic","resources/images/guitars/guitar5.jpg") );
		al.add( new item("P_14","Piano","Roland","997","6","Electronic Piano","resources/images/pianos/piano5.jpg") );
		al.add( new item("P_15","Guitar","Gibson","305","20","American 7 String Electric","resources/images/guitars/guitar6.jpg") );
		al.add( new item("P_16","Guitar","Gibson","823","8","American 8 String Electric","resources/images/guitars/guitar7.jpg") );
		al.add( new item("P_17","Piano","Roland","84","3","Grand Piano","resources/images/pianos/piano6.jpg") );
		al.add( new item("P_18","Guitar","Gibson","173","8","American 6 String Acoustic","resources/images/guitars/guitar8.jpg") );
		al.add( new item("P_19","Accessories","Foot Pedal","982","6","Versatile","resources/images/accessories/acc5.jpg") );
		al.add( new item("P_20","Guitar","Fender","151","12","American 6 String Acoustic","resources/images/guitars/guitar9.jpg") );
	}
	
	@Override
	public String toString() {
		
		String retval = "";
		
		for( Object x: al )
		{
			
			try
			{
				itemDAO itemdao = new itemDAO();
				
				itemdao.insert( (item)(x) );
				
			}
			catch(Exception e)
			{
				System.out.println(e);;
			}
			
			retval += x + ",";
		}
		
		retval = "[" + retval.substring(0, retval.length()-1) + "]";
		
		return retval;
	}
	
	public static void main(String args[])
	{
		System.out.println(new datajs());
	}
	
}
