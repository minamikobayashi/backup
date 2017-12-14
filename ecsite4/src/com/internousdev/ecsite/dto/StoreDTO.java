package com.internousdev.ecsite.dto;

public class StoreDTO {

	public int itemId;
	public String itemName;
	public String itemPrice;

	public int getItemId(){
		return itemId;
	}
	public void setItemId(int itemId){
		this.itemId=itemId;
	}

	public String getItemName(){
		return itemName;
	}
	public void setItemName(String itemName){
		this.itemName=itemName;
	}

	public String getItemPrice(){
		return itemPrice;
	}
	public void setItemPrice(String itemPrice){
		this.itemPrice=itemPrice;
	}

}
