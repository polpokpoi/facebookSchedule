package kr.ac.mis.facebookservice;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.URL;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.TreeMap;
import java.util.TreeSet;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.restfb.Connection;
import com.restfb.DefaultFacebookClient;
import com.restfb.FacebookClient;
import com.restfb.exception.FacebookException;
import com.restfb.types.User;

@Service
public class FacebookServiceImpl implements FacebookService {
	 
	private String MY_ACCESS_TOKEN = "";
	
	/*
	@Autowired
	private UserService userService;
    private com.sprhib.model.User loginUser = new com.sprhib.model.User();
    private List<com.sprhib.model.User> friendList =new ArrayList<com.sprhib.model.User>();
	public com.sprhib.model.User getLoginUser() {
		return loginUser;
	}
	
	
	public void setLoginUser(com.sprhib.model.User loginUser) {
		this.loginUser = loginUser;
	}

	public List<com.sprhib.model.User> getFriendList() {
		return friendList;
	}

	public void setFriendList(List<com.sprhib.model.User> friendList) {
		this.friendList = friendList;
	}


	*/
	



	
	

	
	
		
	private String readURL(URL url) throws IOException {
		ByteArrayOutputStream baos = new ByteArrayOutputStream();
		InputStream is = url.openStream();
		int r;
		while ((r = is.read()) != -1) {
			baos.write(r);
		}
		return new String(baos.toByteArray());
	}
	
	
	
	public void getToken(String code) throws IOException {
		
		
		
		System.out.println(code);
		String authURL = "https://graph.facebook.com/oauth/access_token?client_id=225380084301603&redirect_uri=http://polpokpoi.iptime.org:8282/event/callback&client_secret=26494ef83dd4418a45bff4b1ce53be60&code="
				+ code;
		URL url = new URL(authURL);
		String result = readURL(url);  //??
		String[] pairs = result.split("&");

		for (String pair : pairs) {
			String[] kv = pair.split("=");
			if (kv[0].equals("access_token")) {
				MY_ACCESS_TOKEN = kv[1];
				
			}
				
			  
		}

		
		
	}//getaToken
	
	
	
	
	
	
	
	
	
	
	public Map<User, Map> getInfo(){ //userAnd
		

		FacebookClient facebookClient = new DefaultFacebookClient(MY_ACCESS_TOKEN);
		
		User me = facebookClient.fetchObject("me", User.class);
		Connection<com.restfb.types.User> facebookfriends = facebookClient.fetchConnection("me/friends", User.class);
          
		List<User> friends = facebookfriends.getData();  // 
		
	    TreeMap<String, User> friendsList = new TreeMap<String, User>();
		
	    for (User fbuser : friends) { 
		
	    	friendsList.put(fbuser.getName(), fbuser);
					
		}
			
	    
	    
	    Iterator<String> it = friendsList.keySet().iterator();
	    
	    while(it.hasNext()){
	    	
	    	String key = it.next();
	    	
	    	System.out.println(key+"  "+friendsList.get(key).getId());
	    	
	    }
	    
	    
	    
	    
	    
		 
		  Map<User, Map> resultMap = new HashMap<User, Map>();        
		  
		  resultMap.put(me, friendsList);
		  
		  return resultMap;
		
	}




	
	
	
		
	
	
}

