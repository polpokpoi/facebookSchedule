package kr.ac.mis.model;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
import java.util.HashSet;
import java.util.Set;



import org.springframework.beans.factory.annotation.Autowired;



public class User implements Serializable {

	

	private static final long serialVersionUID = 5191154850678391084L;


	public  User(){}
	

	
	
	private String id;
	private String name;
	
	
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




 
   




}
