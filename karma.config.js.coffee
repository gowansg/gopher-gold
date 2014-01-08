# Karma configuration
# Generated on Sun Jan 05 2014 01:41:19 GMT-0500 (EST)

module.exports = (config) ->
  config.set

    # base path, that will be used to resolve all patterns, eg. files, exclude
    basePath: ''

    # frameworks to use
    frameworks: ['jasmine']

    # list of files / patterns to load in the browser
    files: [
      'JASMINE',
      'JASMINE_ADAPTER',
      'http://code.jquery.com/jquery-2.0.3.min.js',
      'http://cdnjs.cloudflare.com/ajax/libs/handlebars.js/1.3.0/handlebars.min.js',
      'vendor/assets/ember/development/ember.js',
      'vendor/assets/ember/development/ember-data.js',
      'vendor/assets/twitter/*.js',
      'app/assets/javascripts/**/*.js',
      'app/assets/javascripts/**/*.js.coffee',
      'spec/javascripts/*.js.coffee',
      'spec/javascripts/*.js'
    ]

    # list of files to exclude
    exclude: [
      
    ]

    # test results reporter to use
    # possible values: 'dots', 'progress', 'junit', 'growl', 'coverage'
    reporters: ['progress']

    # web server port
    port: 9876

    # enable / disable colors in the output (reporters and logs)
    colors: true

    # level of logging
    # possible values: config.LOG_DISABLE || config.LOG_ERROR || config.LOG_WARN || config.LOG_INFO || config.LOG_DEBUG
    logLevel: config.LOG_INFO

    # enable / disable watching file and executing tests whenever any file changes
    autoWatch: true

    # Start these browsers, currently available:
    # - Chrome
    # - ChromeCanary
    # - Firefox
    # - Opera (has to be installed with `npm install karma-opera-launcher`)
    # - Safari (only Mac; has to be installed with `npm install karma-safari-launcher`)
    # - PhantomJS
    # - IE (only Windows; has to be installed with `npm install karma-ie-launcher`)
    browsers: ['Chrome', 'Firefox']

    # If browser does not capture in given timeout [ms], kill it
    captureTimeout: 60000

    # Continuous Integration mode
    # if true, it capture browsers, run tests and exit
    singleRun: false

    preprocessors:
      '**/*.coffee': 'coffee',
      '**/*.handlebars': 'ember'
