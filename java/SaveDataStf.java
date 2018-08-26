package com;

public class SaveDataStf {
	
	private String id,name,email,password,address,dob,ans1,ans2;
	

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getDob() {
		return dob;
	}

	public void setDob(String dob) {
		this.dob = dob;
	}

	public String getAns1() {
		return ans1;
	}

	public void setAns1(String ans1) {
		this.ans1 = ans1;
	}

	public String getAns2() {
		return ans2;
	}

	public void setAns2(String ans2) {
		this.ans2 = ans2;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
	
	public boolean nullid() {
		if(!(id.isEmpty())) 
			return true;
		else 
			return false;
	}
	
	public boolean nullName() {
		if(!(name.isEmpty()))
			return true;
		else
			return false;
	}
	
	public boolean nullEmail() {
		if(!(email.isEmpty()))
			return true;
		else 
			return false;
	}
	
	public boolean nullPwd() {
		if(!(password.isEmpty()))
			return true;
		else 
			return false;
	}
	
	public boolean nullAns1() {
		return(!(ans1.isEmpty()));
	}
	
	public boolean nullAns2() {return(!(ans2.isEmpty()));}
	
}
