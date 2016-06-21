describe 'TodoListController', ->
  $rootScope = null
  $scope = null
  $controller = null

  beforeEach ->
    module 'todo-list'

  beforeEach ->
    inject ($controller, $rootScope, $injector) ->
      $rootScope = $rootScope
      $scope = $rootScope.$new()

      $controller = $controller 'TodoListController',
        $scope: $scope


  it 'should have a title property initialized', ->
    $scope.title.should.equal 'Ma todo list'

  it 'should succeed', ->
    expect(true).to.equal true

  it 'should remove an element', ->
    $scope.todolist = [1,2,3,4]
    $scope.remove(3)
    expect($scope.todolist).to.have.length(3)
