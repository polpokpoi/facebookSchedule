<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
   

    <title>Navbar Template for Bootstrap</title>
     
     
     

<link href='fullcalendar-2.1.1/fullcalendar.css' rel='stylesheet' />
<link href='fullcalendar-2.1.1/fullcalendar.print.css' rel='stylesheet' media='print' />

<script src='fullcalendar-2.1.1/lib/moment.min.js'></script>
<script src='fullcalendar-2.1.1/lib/jquery.min.js'></script>
<script src='fullcalendar-2.1.1/fullcalendar.min.js'></script>
<script src='myjs/function.js'></script>


<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
 <script src="bootstrap/js/bootstrap.min.js"></script>




<link rel="stylesheet"
	href="http://netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css">

<script
	src="http://ajax.googleapis.com/ajax/libs/angularjs/1.2.13/angular.js"></script>
<script
	src="http://ajax.googleapis.com/ajax/libs/angularjs/1.2.13/angular-resource.js"></script>
<script
	src="http://ajax.googleapis.com/ajax/libs/angularjs/1.2.13/angular-route.js"></script>

<script
	src="http://cdnjs.cloudflare.com/ajax/libs/angular-ui-bootstrap/0.10.0/ui-bootstrap-tpls.js"></script>


<script src="timepicker/timepickerpop.js"></script>






<script type="text/javascript">
    angular.module('timepickerDemo', [ 'timepickerPop' ]).controller(
        'DemoCtrl', function($scope) {
          $scope.startTime = new Date();
          $scope.endTime = new Date();
          $scope.showMeridian = true;
        
        });
  </script>


  </head>

  <body>
     
	
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
      
      <div class="container" ng-app="timepickerDemo" ng-controller='DemoCtrl'>
    <div class='col-md-3 col-md-offset-0'>
      
      <h5>Popup Timepicker Demo</h5>
      <timepicker-pop input-time="startTime" class="input-group"
        show-meridian='showMeridian'> 
      </timepicker-pop>
      
      <timepicker-pop input-time="endTime" class="input-group"
        show-meridian='showMeridian'> 
      </timepicker-pop>
      
    </div>
  
      
      
      
      
       
      </div>
    </div>
  </div>
  
</div>

      
 
      
  </body>
</html>
