module.exports = (config) ->
  config.set
    basePath: '.'
    frameworks: ['mocha', 'sinon-chai']
    files: [
      'bower_components/angular/angular.min.js'
      'bower_components/angular-mocks/angular-mocks.js'
      'client/src/app.coffee'
      'client/test/app.coffee'
    ]
    preprocessors:
      'client/src/app.coffee': ['coffee']
      'client/test/app.coffee': ['coffee']
    reporters: ['mocha']
    port: 9876
    colors: true
    logLevel: config.LOG_WARN
    autoWatch: true
    browsers: [ 'PhantomJS' ]
    singleRun: true
  return
