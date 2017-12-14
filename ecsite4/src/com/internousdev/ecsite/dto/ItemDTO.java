package com.internousdev.ecsite.dto;

public class ItemDTO {

	private int categoryId;
	private int itemId;
	private String category;
	private String itemImg;
	private String itemName;
	private String itemPrice;
	private String text;

	public int getCategoryId(){
		return categoryId;
	}
	public void setCategoryId(int categoryId){
		this.categoryId=categoryId;
	}

	public int getItemId(){
		return itemId;
	}
	public void setItemId(int itemId){
		this.itemId=itemId;
	}

	public String getCategory(){
		return category;
	}
	public void setCategory(String category){
		this.category=category;
	}

	public String getItemImg(){
		return itemImg;
	}
	public void setItemImg(String itemImg){
		this.itemImg=itemImg;
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

	public String getText(){
		return text;
	}
	public void getText(String text){
		this.text=text;
	}
}
