package com;

public class SaveDataStf {
	
	private String id,name,email,password,address,dob,ans1,ans2,ques1,ques2,joinDate;
	private String eventID,date,startTime,endTime,eventName,eventDescription;
	
	
	
	

	public String getEventID() {
		return eventID;
	}

	public void setEventID(String eventID) {
		this.eventID = eventID;
	}

	public String getStartTime() {
		return startTime;
	}

	public void setStartTime(String startTime) {
		this.startTime = startTime;
	}

	public String getEndTime() {
		return endTime;
	}

	public void setEndTime(String endTime) {
		this.endTime = endTime;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public String getEventName() {
		return eventName;
	}

	public void setEventName(String eventName) {
		this.eventName = eventName;
	}

	public String getEventDescription() {
		return eventDescription;
	}

	public void setEventDescription(String eventDescription) {
		this.eventDescription = eventDescription;
	}

	public String getJoinDate() {
		return joinDate;
	}

	public void setJoinDate(String joinDate) {
		this.joinDate = joinDate;
	}

	public String getQues1() {
		return ques1;
	}

	public void setQues1(String ques1) {
		this.ques1 = ques1;
	}

	public String getQues2() {
		return ques2;
	}

	public void setQues2(String ques2) {
		this.ques2 = ques2;
	}

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
	
	
	//Validations
	
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
	public boolean nullQues1(){return(!(ques1.isEmpty()));}
	public boolean nullQues2(){return(!(ques2.isEmpty()));}
	public boolean nullDate() {return(!(joinDate.isEmpty()));}
	
	public boolean nullEventID() {
		return(!(eventID.isEmpty()));
	}
	
	
	
	
}
