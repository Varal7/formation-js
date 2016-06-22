angular.module 'todo-list', ['lbServices']
.controller 'TodoListController', ($scope, $http, Todo) ->
  $scope.title = 'Ma todo list'
  $scope.todolist = Todo.find()
  $scope.remove = (el) ->
    Todo.deleteById({id:el.id})
    $scope.todolist.splice($scope.todolist.indexOf(el),1)
  $scope.add = (el) ->
    todo = Todo.create
      task: $scope.newTask
      priority: $scope.newPriority
      checked: false
    $scope.todolist.push(todo)
    $scope.newTask = ""
    $scope.newPriority = 0
