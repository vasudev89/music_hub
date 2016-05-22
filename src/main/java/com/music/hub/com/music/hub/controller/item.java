package com.music.hub.com.music.hub.controller;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class item implements Serializable
{
	@Id @GeneratedValue(strategy=GenerationType.AUTO)
	int ID;
	
	private String Product_Id = "";
	private String Group_Name = "";
	private String Name = "";
	private String Price = "";
	private String Qty = "";
	private String Description = "";
	private String Image = "";
	
	public String getProduct_Id() {
		return Product_Id;
	}
	public void setProduct_Id(String product_Id) {
		Product_Id = product_Id;
	}
	
	public String getGroup_Name() {
		return Group_Name;
	}
	public void setGroup_Name(String group_Name) {
		Group_Name = group_Name;
	}
	
	public String getName() {
		return Name;
	}
	public void setName(String name) {
		Name = name;
	}
	
	public String getPrice() {
		return Price;
	}
	public void setPrice(String price) {
		Price = price;
	}
	
	public String getQty() {
		return Qty;
	}
	public void setQty(String qty) {
		Qty = qty;
	}
	
	public String getDescription() {
		return Description;
	}
	
	public void setDescription(String description) {
		Description = description;
	}
	
	public String getImage() {
		return Image;
	}
	public void setImage(String image) {
		Image = image;
	}
	
	public item(String product_Id, String group_Name, String name, String price, String qty, String description,
			String image) {
		super();
		Product_Id = product_Id;
		Group_Name = group_Name;
		Name = name;
		Price = price;
		Qty = qty;
		Description = description;
		Image = image;
	}
	
	@Override
	public String toString() {
		return "{Product_Id:\"" + Product_Id + "\", Group_Name:\"" + Group_Name + "\", Name:\"" + Name + "\", Price:" + Price
				+ ", Qty:" + Qty + ", Description:\"" + Description + "\", Image:\"" + Image + "\"}";
	}
	
	public static void main(String args[])
	{
		System.out.println(new item("P_1","Accessories","Metronome","644","11","Tune in with this","resources/images/accessories/acc1.jpg"));
	}
}