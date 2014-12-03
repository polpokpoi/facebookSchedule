
//Global variable


var Title;
var StartDate;
var EndDate;
var StartTime;
var EndTime; 


        
var gtoday = new Date();
var gdd = gtoday.getDate();
var gmm = gtoday.getMonth()+1; //January is 0!
var gyyyy = gtoday.getFullYear();
	
   
//function
function addEvent(start,end,title){	
		
		
	  
       	
	   	
	   	var eventData = {
	    				"title": title,
	   					"start": start,
	   				    "end": end
	    				 };
	    alert(start);  				 
	   $('#calendar').fullCalendar('renderEvent', eventData, true); // stick? = true
	  
	  	/*	  
	  	var jEvent = JSON.stringify(dayPlan);
	          
        
	   	$.ajax({
	     url: '${pageContext.request.contextPath}/addEvent.html',
	     type: "post",
	     dataType: "json",
	     contentType: "application/json",
	     data: jEvent,
	     error: function () {
	       alert("error occured!!!");
	     },
	     success: function () {
	       alert("saved!");
	     }
	   });
	 
		 */
    
		}
		
		
		
		

 function editEvent(start,end,title){	
     
       alert('edit'+start+'  '+end+'  '+title);
       
     }
     
     
     
     function deleteEvent(start,end,title){	
     
       alert('delete '+start+'  '+end+'  '+title);
     
 }
     
     









  		
		
		