###
grunt-coffee-redux

Copyright (c) 2013 Moritz Heuser, contributors
Licensed under the MIT license.
###

module.exports = (grunt)->

  grunt.initConfig
    clean:
      tests: [
        'tmp'
      ]
    coffeeredux:
      options:
        bare: false
        sourceMap: true
      compile:
        files:
          'tmp/helloworld.js': [
            'test/fixtures/hello.coffee'
            'test/fixtures/world.coffee'
          ]
          #ToDo: Write a test for a failed compilation
          #'tmp/shouldNotBeCreated.js': 'test/fixtures/invalid.coffee'
    nodeunit:
      tests: [
        'test/*_test.coffee'
      ]

  grunt.loadTasks 'tasks'

  grunt.loadNpmTasks task for task in [
    'grunt-contrib-clean'
    'grunt-contrib-nodeunit'
    'grunt-contrib-internal'
  ]

  grunt.registerTask 'test', ['clean', 'coffeeredux', 'nodeunit']
  grunt.registerTask 'default', ['test', 'build-contrib']

