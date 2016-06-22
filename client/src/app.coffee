angular.module 'todo-list', ['lbServices']
.controller 'TodoListController', ($scope, $http, Todo) ->
  $scope.title = 'Ma todo list'
  $http.get("todolist.json").then((res) -> $scope.todolist = res.data)
  $scope.remove = (el) ->
    $scope.todolist.splice($scope.todolist.indexOf(el),1)
  $scope.add = (el) ->
    $scope.todolist.push
      task: $scope.newTask
      priority: $scope.newPriority
      checked: false
    $scope.newTask = ""
    $scope.newPriority = 0
