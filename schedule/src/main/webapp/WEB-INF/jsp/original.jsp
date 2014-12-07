<!DOCTYPE html>
<html>
<head>
<meta charset='utf-8' />



		
		
		<link href='resources/fullcalendar-2.1.1/fullcalendar.css' rel='stylesheet' />
		<link href='resources/fullcalendar-2.1.1/fullcalendar.print.css' rel='stylesheet' media='print' />

		<script src='resources/fullcalendar-2.1.1/lib/moment.min.js'></script>
		<script src='resources/fullcalendar-2.1.1/lib/jquery.min.js'></script>
		<script src='resources/fullcalendar-2.1.1/fullcalendar.min.js'></script>
		
		
		<link href="resources/bootstrap/css/bootstrap.min.css" rel="stylesheet">
		<script src="resources/bootstrap/js/bootstrap.min.js"></script>
    	
    
<script src="resources/timepicker/timepickerpop.js"></script>
<script
	src="http://ajax.googleapis.com/ajax/libs/angularjs/1.2.13/angular.js"></script>
<script
	src="http://ajax.googleapis.com/ajax/libs/angularjs/1.2.13/angular-resource.js"></script>
<script
	src="http://ajax.googleapis.com/ajax/libs/angularjs/1.2.13/angular-route.js"></script>

<script
	src="http://cdnjs.cloudflare.com/ajax/libs/angular-ui-bootstrap/0.10.0/ui-bootstrap-tpls.js"></script>





<script type="text/javascript">

	 angular.module('timepicker', [ 'timepickerPop' ]).controller(
	        'DemoCtrl', function($scope, $http) {
	          $scope.startTime = new Date();
	          $scope.endTime = new Date();
	          $scope.showMeridian = true;
	            $http.get('http://localhost:9090/event/events.json').
    	           success(function(data) {
    	            $scope.events = data;
	          
	          
	          
	          
	        
	        });
 </script>




<script>

     
     
          
   
     
	$(document).ready(function() {
	     
	    
	    
	    
	    
	    
	    
	    
	    
	    
	    
	    
	    
	    
	    
	        
	        
	    $( "#saveEventButton" ).click(function() {
          
          // alert( $('#time').val(););
           selectedTitle = $('#eventTextField').val();
           addEvent(StartDate, EndDate, selectedTitle);                     
	                                 
	                                 
	                                 });
	                                 
	                                 
	                                  
     
	        
	        
	
				
		$('#calendar').fullCalendar({
    
			header: {
				left: 'prev,next today',
				center: 'title',
				right: 'month,agendaWeek,agendaDay'
			},
			defaultDate: gyyyy+'-'+gmm+'-'+gdd,
		    selectable: true,
			selectHelper: true,
			select: function(start, end) {
				//$('#exampleModal').modal('show');
				 alert('eventselected!');
				// StartDate = start;
				// EndDate   =  end;
			
			},
			
			
			
			eventResizeStop: function( event, jsEvent, ui, view ) { 
			 alert('eventresized!');
			},
			
			
			eventClick: function(event, jsEvent, view){
			 alert('eventClicked!');
			},
			
			editable: true,
			
			
			eventLimit: true, // allow "more" link when too many events
			
			
			events: [
				{
					title: 'All Day Event',
					start: '2014-09-01'
				},
				{
					title: 'Long Event',
					start: '2014-09-07',
					end: '2014-09-10'
				},
				{
					id: 999,
					title: 'Repeating Event',
					start: '2014-11-24T16:00:00'
				},
				{
					id: 999,
					title: 'Repeating Event',
					start: '2014-09-16T16:00:00'
				},
				{
					title: 'Conference',
					start: '2014-09-11',
					end: '2014-09-13'
				},
				{
					title: 'Meeting',
					start: '2014-09-12T10:30:00',
					end: '2014-09-12T12:30:00'
				},
				{
					title: 'Lunch',
					start: '2014-09-12T12:00:00'
				},
				{
					title: 'Meeting',
					start: '2014-09-12T14:30:00'
				},
				{
					title: 'Happy Hour',
					start: '2014-09-12T17:30:00'
				},
				{
					title: 'Dinner',
					start: '2014-09-12T20:00:00'
				},
				{
					title: 'Birthday Party',
					start: '2014-09-13T07:00:00'
				},
				{
					title: 'Click for Google',
					url: 'http://google.com/',
					start: '2014-09-28'
				}
			]
		});
		
	});

</script>
<style>

	body {
		margin: 40px 10px;
		padding: 0;
		font-family: "Lucida Grande",Helvetica,Arial,Verdana,sans-serif;
		font-size: 14px;
	}

	#calendar {
		max-width: 900px;
		margin: 0 auto;
	}

</style>
</head>
<body>

	<div id='calendar'></div>
	
    <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
	  
        <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
      
	  <h4 class="modal-title" id="exampleModalLabel">New Event</h4>
      </div>
      
      <div class="modal-body">
      
        <form role="form">
        
        <div class="form-group">

       
        	
  <div class="panel panel-default">
    <div class="panel-heading" role="tab" id="headingOne">
      <h4 class="panel-title"> 
        <a data-toggle="collapse" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
          TimeSet
        </a>
      </h4>
    </div>
    
    <div id="collapseOne" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingOne">
      <div class="panel-body">
      
      <div class="container" ng-app="timepicker" ng-controller='DemoCtrl'>
                    
    <div class='col-md-3 col-md-offset-0'>
       
      <h5>setting Time</h5>
        <div class="form-group">
        <label class="control-label"><i class="fa fa-clock-o"></i> Time picker with arrows</label><br>
      <timepicker-pop input-time="startTime" class="input-group"
        show-meridian='showMeridian'> 
      </timepicker-pop>
        </div>
    
      <timepicker-pop input-time="endTime" class="input-group"
        show-meridian='showMeridian'> 
      </timepicker-pop>
              
    </div>
  
      
      
      
      
       
      </div>
    </div>
  </div>
  
</div>

        
        
        
        
        </div>  
         
       
       
       
       <div class="form-group">
            <label for="eventTextField" class="control-label">Title:</label>
            <textarea class="form-control" id="eventTextField"></textarea>
        </div>
          
          
        </form>
      </div>
      
      <div class="modal-footer">
	  
        <button type="button" class="btn btn-default" data-dismiss="modal">Cancel</button>
        <button type="button" class="btn btn-primary" data-dismiss="modal" id="saveEventButton" >Save</button>

		</div>
    </div>
  </div>
 
  
  
  
  
  

</body>
</html>
