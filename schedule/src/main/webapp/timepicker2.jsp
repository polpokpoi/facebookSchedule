
<!DOCTYPE html>
<html>
<head>
<title>Popup Timepicker Demo Using AngularJS, Bootstrap</title>

<meta name="viewport" content="width=device-width, initial-scale=1">

<meta charset="UTF-8">
<meta name="description"
	content="Popup Timepicker Demo Using AngularJS, Bootstrap.">


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
          $scope.time1 = new Date();
          $scope.showMeridian = true;
  
        });
  </script>

</head>
<body>

<div class="container" ng-app="timepickerDemo" ng-controller='DemoCtrl'>
    <div class='col-md-2 col-md-offset-2'>
      <h1>Popup Timepicker Demo</h1>
      <timepicker-pop input-time="time1" class="input-group"
        show-meridian='showMeridian'> 
      </timepicker-pop>
    </div>
  </div>
  
  
</body>
</html>