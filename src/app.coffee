angular.module 'todo-list', []
.controller 'TodoListController', ($scope, $http) ->
  $scope.title = 'Ma todo list'
  $http.get("todolist.json").then((res) -> $scope.todolist = res.data)
  
