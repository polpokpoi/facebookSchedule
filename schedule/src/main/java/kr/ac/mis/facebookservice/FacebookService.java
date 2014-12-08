package kr.ac.mis.facebookservice;

import java.util.List;
import java.util.Map;

import com.restfb.types.User;


public interface FacebookService {
	
	public void getToken(String code) throws Exception;		
	public Map<User, Map> getInfo();
}


