<!doctype html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Example - example-example7-production</title>
  

  <script src="//ajax.googleapis.com/ajax/libs/angularjs/1.3.4/angular.min.js"></script>
  <script>
  
(function(angular) {
   'use strict';



  var myModule = angular.module('myModule',[]);
  
  
  
  myModule.factory('greeter', function($window) {
   return {
    greet: function(text) {
    
     $window.alert(text)
    }
   };
  }); 
  

  var injector = angular.injector(['myModule','ng']);
  var greeter = injector.get('greeter');
  
  
	
   })(window.angular);
  </script>
  

function MyController($scope, greeter) {
  
 	$scope.sayHello = function() { 
 	 	greeter.greet('Hello World');
 	 	
 	 	};
 	 	
 	}
 	
  


  
</head>
<body>

  <div ng-controller="MyController">
  	<button ng-click ="sayHello()">Hello</button>
  </div>
  
  	
  






  

</body>
</html>