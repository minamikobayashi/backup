package com.internousdev.yataberyouhin.dto;

public class MyPageDTO {

	public int userId;
	public String familyName;
	public String firstName;
	public String familyNameKana;
	public String firstNameKana;
	public String sex;
	public String email;


	public  int getUserId(){
		return userId;
	}
	public void setUserId(int userId){
		this.userId=userId;
	}

	public String getFamilyName(){
		return familyName;
	}
	public void setFamilyName(String familyName){
		this.familyName=familyName;
	}

	public String getFirstName(){
		return firstName;
	}
	public void setFirstName(String firstName){
		this.firstName=firstName;
	}

	public String getFamilyNameKana(){
		return familyNameKana;
	}
	public void setFamilyNameKana(String familyNameKana){
		this.familyNameKana=familyNameKana;
	}

	public String getSex(){
		return sex;
	}
	public void setSex(String sex){
		this.sex=sex;
	}

	public String getEmail(){
		return email;
	}
	public void setEmail(String email){
		this.email=email;
	}




}
