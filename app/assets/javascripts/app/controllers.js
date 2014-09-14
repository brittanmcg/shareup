angular.module('myApp.controllers', [])
.controller('HomeController', function($scope, session, SessionService, ArticleService, Share){
  ArticleService.getLatestFeed()
  .then(function(data){
    $scope.articles = data;
  })
  $scope.user = session.user;
});