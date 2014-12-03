
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
				
 				$scope.time2 = new Date();
				$scope.time2.setHours(7, 30);
				$scope.showMeridian = true;
				
				$scope.disabled = false;

			});
</script>

</head>
<body>

	<div class="container" ng-app="timepickerDemo">

		<div class="col-md-2"></div>
		<div class="col-md-8" ng-controller='DemoCtrl'>

			<h1>Popup Timepicker Demo</h1>

			<div class='well'>
				<form name='form' class='form-horizontal' role='form'>

					<div class='form-group'>
						<label class='col-sm-3 control-label'>Timepicker</label>
						<div class='col-sm-9'>
							<timepicker ng-model="time1" show-meridian='showMeridian'/>
						</div>
					</div>

					<div class='form-group'>
						<label class='col-sm-3 control-label'>Popup Timepicker</label>
						<div class='col-sm-4'>
							<timepicker-pop input-time="time1" class="input-group" disabled="disabled"
								show-meridian='showMeridian'> </timepicker-pop>
						</div>
						<div class='col-sm-4'>
							<timepicker-pop input-time="time2" class="input-group" disabled="disabled"
								show-meridian='showMeridian'> </timepicker-pop>
						</div>
						
					</div>

					<div class='form-group'>
						<div class="col-sm-offset-3 col-sm-9">
							<div class="checkbox">
								<label> <input type="checkbox" name='showMeridian' ng-model='showMeridian' />
									Show meridian ({{showMeridian}})
								</label>
							</div>
						</div>
					</div>

					<div class='form-group'>
						<div class="col-sm-offset-3 col-sm-9">
							<div class="checkbox">
								<label> <input type="checkbox" name='disabled' ng-model='disabled' />
									Disabled ({{disabled}})
								</label>
							</div>
						</div>
					</div>

					<div class='form-group'> 
						<div class="col-sm-offset-3 col-sm-9">Value: {{time1 | date: 'shortTime'}}</div>
					</div>
				</form>
			</div>
		</div>

	
	</div>
</body>
</html>