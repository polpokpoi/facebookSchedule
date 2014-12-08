<!doctype html>
<html ng-app="calApp">
	<head>
		<title>Spring MVC + AngularJS Demo</title>
	
		
<link href='resources/fullcalendar-2.1.1/fullcalendar.css' rel='stylesheet' />
<link href='resources/fullcalendar-2.1.1/fullcalendar.print.css' rel='stylesheet' media='print' />

<script src='resources/fullcalendar-2.1.1/lib/moment.min.js'></script>
<script src='resources/fullcalendar-2.1.1/lib/jquery.min.js'></script>
<script src='resources/fullcalendar-2.1.1/fullcalendar.min.js'></script>


<link href="resources/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<script src="resources/bootstrap/js/bootstrap.min.js"></script>
  

    	
<script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.2.13/angular.js"></script>
<script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.2.13/angular-resource.js"></script>
<script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.2.13/angular-route.js"></script>
<script src="http://cdnjs.cloudflare.com/ajax/libs/angular-ui-bootstrap/0.10.0/ui-bootstrap-tpls.js"></script>




<script src="resources/timepicker/timepickerpop.js"></script>

    	
    	
    	
    	
    	<script>
    	
    	
    	var calApp = angular.module('calApp',[]);
    		
    	
    	
    	
    	calApp.controller('calController', function($scope, $http) {
    	   
    	      	    $http.get('http://polpokpoi.iptime.org:8282/event/events.json').
    	             success(function(data) {
    	        
    	            $scope.events = data;
    	            var calEvents = data;	
    	            $scope.initCal = function ($scope) {
                     
					               //alert();
					                 
					        var today = new Date();
							var dd = today.getDate();
					        var mm = today.getMonth()+1; //January is 0!
					        var yyyy = today.getFullYear();
					        
							$('#calendar').fullCalendar({
								header: {
									left: 'prev,next today',
									center: 'title',
									right: 'month,agendaWeek,agendaDay'
										},
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
								
								defaultDate: today,
								editable: true,
								eventLimit: true, // allow "more" link when too many events
								events: calEvents		
								
							});
					};              
          
          
          		
                   $scope.initCal();	
    	            
    	            
    	            
    	            
    	            
    	            
    	            
    	            
    	            
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
	<body  ng-controller="calController" >
	
	     <div  id='calendar'></div>
	     
	
		<div>
		 <ol>
      <li ng-repeat="event in events">{{event.id}}</li>
         </ol>
		</div>
	</body>
</html>